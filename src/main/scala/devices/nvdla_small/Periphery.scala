// See LICENSE for license details.
package sifive.nvdla_blocks.devices.nvdla_small

import Chisel._
import freechips.rocketchip.config.Field
import freechips.rocketchip.subsystem.BaseSubsystem
import freechips.rocketchip.diplomacy.{LazyModule,BufferParams}
import freechips.rocketchip.tilelink.{TLBuffer, TLIdentityNode}

case object NVDLASmallKey extends Field[Option[NVDLASmallParams]](None)
case object NVDLASmallFrontBusExtraBuffers extends Field[Int]

trait HasPeripheryNVDLASmall { this: BaseSubsystem =>
    p(NVDLASmallKey).map { params =>
        val nvdla_small = LazyModule(new NVDLASmall(params))

        fbus.fromMaster(name = Some("nvdla_dbb"), buffer = BufferParams.default) {
          TLBuffer.chainNode(p(NVDLASmallFrontBusExtraBuffers))
        } := nvdla_small.dbb_tl_node

        pbus.toFixedWidthSingleBeatSlave(4, Some("nvdla_cfg")) { nvdla_small.cfg_tl_node }

        ibus.fromSync := nvdla_small.int_node
    }
}
