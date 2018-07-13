// See LICENSE for license details.
package sifive.nvdla_blocks.devices.nvdla

import Chisel._
import freechips.rocketchip.config._
import freechips.rocketchip.diplomacy._
import freechips.rocketchip.amba.axi4._
import freechips.rocketchip.amba.apb._
import freechips.rocketchip.tilelink._
import freechips.rocketchip.interrupts._
import freechips.rocketchip.subsystem._

import sifive.nvdla_blocks.ip.nvdla._

case class NVDLAParams(
  config: String,
  raddress: BigInt
)

class NVDLA(dla_params: NVDLAParams)(implicit p: Parameters) extends LazyModule() {

  // DTS
  val dtsdevice = new SimpleDevice("nvdla",Seq("nvidia,nvdla_2"))

  // dbb TL
  val dbb_tl_node = TLIdentityNode()

  // dbb AXI
  val dbb_axi_node = AXI4MasterNode(
    Seq(
      AXI4MasterPortParameters(
        masters = Seq(AXI4MasterParameters(
          name    = "NVDLA DBB",
          id      = IdRange(0, 256)))
      )
    )
  )

  // TL <-> AXI
  (dbb_tl_node
    := TLBuffer()
    := TLWidthWidget(8)
    := AXI4ToTL()
    := AXI4UserYanker(capMaxFlight=Some(8))
    := AXI4Fragmenter()
    := AXI4IdIndexer(idBits=2)
    := AXI4Buffer()
    := dbb_axi_node)


  // cfg APB
  val cfg_apb_node = APBSlaveNode(
    Seq(
      APBSlavePortParameters(
        slaves = Seq(APBSlaveParameters(
          address       = Seq(AddressSet(dla_params.raddress, 0x40000L-1L)), // 256KB
          resources     = dtsdevice.reg("control"),
          executable    = false,
          supportsWrite = true,
          supportsRead  = true)),
        beatBytes = 4)
    )
  )

  val cfg_tl_node = cfg_apb_node := LazyModule(new TLToAPB).node

  val int_node = IntSourceNode(IntSourcePortSimple(num = 1, resources = dtsdevice.int))


  lazy val module = new LazyModuleImp(this) {

    val dla_wrap = dla_params.config match {
      case "small" => Module(new nvdla_small)
      case "small_256" => Module(new nvdla_small_256)
    }

    dla_wrap.io.core_clk    := clock
    dla_wrap.io.csb_clk     := clock
    dla_wrap.io.rstn        := ~reset
    dla_wrap.io.csb_rstn    := ~reset

    val (dbb, _) = dbb_axi_node.out(0)

    dbb.aw.valid                            := dla_wrap.io.nvdla_core2dbb_aw_awvalid
    dla_wrap.io.nvdla_core2dbb_aw_awready   := dbb.aw.ready
    dbb.aw.bits.id                          := dla_wrap.io.nvdla_core2dbb_aw_awid
    dbb.aw.bits.len                         := dla_wrap.io.nvdla_core2dbb_aw_awlen
    dbb.aw.bits.size                        := dla_wrap.io.nvdla_core2dbb_aw_awsize
    dbb.aw.bits.addr                        := dla_wrap.io.nvdla_core2dbb_aw_awaddr

    dbb.w.valid                             := dla_wrap.io.nvdla_core2dbb_w_wvalid
    dla_wrap.io.nvdla_core2dbb_w_wready     := dbb.w.ready
    dbb.w.bits.data                         := dla_wrap.io.nvdla_core2dbb_w_wdata
    dbb.w.bits.strb                         := dla_wrap.io.nvdla_core2dbb_w_wstrb
    dbb.w.bits.last                         := dla_wrap.io.nvdla_core2dbb_w_wlast

    dbb.ar.valid                            := dla_wrap.io.nvdla_core2dbb_ar_arvalid
    dla_wrap.io.nvdla_core2dbb_ar_arready   := dbb.ar.ready
    dbb.ar.bits.id                          := dla_wrap.io.nvdla_core2dbb_ar_arid
    dbb.ar.bits.len                         := dla_wrap.io.nvdla_core2dbb_ar_arlen
    dbb.ar.bits.size                        := dla_wrap.io.nvdla_core2dbb_ar_arsize
    dbb.ar.bits.addr                        := dla_wrap.io.nvdla_core2dbb_ar_araddr

    dla_wrap.io.nvdla_core2dbb_b_bvalid     := dbb.b.valid
    dbb.b.ready                             := dla_wrap.io.nvdla_core2dbb_b_bready
    dla_wrap.io.nvdla_core2dbb_b_bid        := dbb.b.bits.id

    dla_wrap.io.nvdla_core2dbb_r_rvalid     := dbb.r.valid
    dbb.r.ready                             := dla_wrap.io.nvdla_core2dbb_r_rready
    dla_wrap.io.nvdla_core2dbb_r_rid        := dbb.r.bits.id
    dla_wrap.io.nvdla_core2dbb_r_rlast      := dbb.r.bits.last
    dla_wrap.io.nvdla_core2dbb_r_rdata      := dbb.r.bits.data

    val (cfg, _) = cfg_apb_node.in(0)

    dla_wrap.io.psel        := cfg.psel
    dla_wrap.io.penable     := cfg.penable
    dla_wrap.io.pwrite      := cfg.pwrite
    dla_wrap.io.paddr       := cfg.paddr
    dla_wrap.io.pwdata      := cfg.pwdata
    cfg.prdata              := dla_wrap.io.prdata
    cfg.pready              := dla_wrap.io.pready
    cfg.pslverr             := Bool(false)

    val (io_int, _) = int_node.out(0)

    io_int(0)   := dla_wrap.io.dla_intr
  }
}


