// See LICENSE for license details.

package sifive.nvdla_blocks.ip.nvdla_small

import Chisel._

//scalastyle:off
//turn off linter: blackbox name must match verilog module
class nvdla_wrap extends BlackBox {

    val io = new Bundle{

    val core_clk = Clock(INPUT)
    val csb_clk = Clock(INPUT)
    val rstn = Bool(INPUT)
    val csb_rstn = Bool(INPUT)

    val dla_intr = Bool(OUTPUT)
    // dbb AXI
    val nvdla_core2dbb_aw_awvalid = Bool(OUTPUT)
    val nvdla_core2dbb_aw_awready = Bool(INPUT)
    val nvdla_core2dbb_aw_awid = Bits(OUTPUT,8)
    val nvdla_core2dbb_aw_awlen = Bits(OUTPUT,4)
    val nvdla_core2dbb_aw_awsize = Bits(OUTPUT,3)
    val nvdla_core2dbb_aw_awaddr = Bits(OUTPUT,64)

    val nvdla_core2dbb_w_wvalid = Bool(OUTPUT)
    val nvdla_core2dbb_w_wready = Bool(INPUT)
    val nvdla_core2dbb_w_wdata = Bits(OUTPUT,64)
    val nvdla_core2dbb_w_wstrb = Bits(OUTPUT,8)
    val nvdla_core2dbb_w_wlast = Bool(OUTPUT)

    val nvdla_core2dbb_ar_arvalid = Bool(OUTPUT)
    val nvdla_core2dbb_ar_arready = Bool(INPUT)
    val nvdla_core2dbb_ar_arid = Bits(OUTPUT,8)
    val nvdla_core2dbb_ar_arlen = Bits(OUTPUT,4)
    val nvdla_core2dbb_ar_arsize = Bits(OUTPUT,3)
    val nvdla_core2dbb_ar_araddr = Bits(OUTPUT,64)

    val nvdla_core2dbb_b_bvalid = Bool(INPUT)
    val nvdla_core2dbb_b_bready = Bool(OUTPUT)
    val nvdla_core2dbb_b_bid = Bits(INPUT,8)

    val nvdla_core2dbb_r_rvalid = Bool(INPUT)
    val nvdla_core2dbb_r_rready = Bool(OUTPUT)
    val nvdla_core2dbb_r_rid = Bits(INPUT,8)
    val nvdla_core2dbb_r_rlast = Bool(INPUT)
    val nvdla_core2dbb_r_rdata = Bits(INPUT,64)
    // cfg APB
    val psel = Bool(INPUT)
    val penable = Bool(INPUT)
    val pwrite = Bool(INPUT)
    val paddr = Bits(INPUT,32)
    val pwdata = Bits(INPUT,32)
    val prdata = Bits(OUTPUT,32)
    val pready = Bool(OUTPUT)
  }
}


