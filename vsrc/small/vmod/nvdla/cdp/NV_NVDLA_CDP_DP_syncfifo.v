// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CDP_DP_syncfifo.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CDP_define.h
///////////////////////////////////////////////////
module NV_NVDLA_CDP_DP_syncfifo (
   nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,cvt2sync_pd //|< i
  ,cvt2sync_pvld //|< i
  ,pwrbus_ram_pd //|< i
  ,sum2sync_pd //|< i
  ,sum2sync_pvld //|< i
  ,sync2itp_prdy //|< i
  ,sync2mul_prdy //|< i
  ,sync2ocvt_prdy //|< i
  ,cvt2sync_prdy //|> o
  ,sum2sync_prdy //|> o
  ,sync2itp_pd //|> o
  ,sync2itp_pvld //|> o
  ,sync2mul_pd //|> o
  ,sync2mul_pvld //|> o
  ,sync2ocvt_pd //|> o
  ,sync2ocvt_pvld //|> o
  );
///////////////////////////////////////////////////
input nvdla_core_clk;
input nvdla_core_rstn;
input [1*(8 +1)+14:0] cvt2sync_pd;
input cvt2sync_pvld;
input [31:0] pwrbus_ram_pd;
input [1*((8 +1)*2+3)-1:0] sum2sync_pd;
input sum2sync_pvld;
input sync2itp_prdy;
input sync2mul_prdy;
input sync2ocvt_prdy;
output cvt2sync_prdy;
output sum2sync_prdy;
output [1*((8 +1)*2+3)-1:0] sync2itp_pd;
output sync2itp_pvld;
output [1*(8 +1)-1:0] sync2mul_pd;
output sync2mul_pvld;
output [14:0] sync2ocvt_pd;
output sync2ocvt_pvld;
///////////////////////////////////////////////////
//reg [1 * (8 +1)-1:0] data_sync_wr_pd;
//reg data_sync_wr_pvld;
//reg [14:0] info_sync_wr_pd;
//reg info_sync_wr_pvld;
wire [1 * (8 +1)-1:0] data_pd;
wire [1 * (8 +1)-1:0] data_sync_rd_pd;
wire data_sync_rd_prdy;
wire data_sync_rd_pvld;
wire data_sync_wr_prdy;
wire data_vld;
wire [14:0] info_pd;
wire [14:0] info_sync_rd_pd;
wire info_sync_rd_prdy;
wire info_sync_rd_pvld;
wire info_sync_wr_prdy;
wire info_vld;
//////////////////////////////////////////////
//////////////////////////////////////////////
//## pipe (1) randomizer
//: my $dbw = 1 * (8 +1);
//: &eperl::pipe(" -wid $dbw -do data_sync_wr_pd -vo data_sync_wr_pvld -ri data_sync_wr_prdy -di data_pd -vi data_vld -ro data_rdy ");
//: &eperl::pipe(" -wid 15   -do info_sync_wr_pd -vo info_sync_wr_pvld -ri info_sync_wr_prdy -di info_pd -vi info_vld -ro info_rdy ");
//| eperl: generated_beg (DO NOT EDIT BELOW)
// Reg
reg pipe_data_vld;
reg [9-1:0] pipe_data_pd;
// Wire
wire data_rdy;
wire pipe_data_rdy;
wire data_sync_wr_pvld;
wire [9-1:0] data_sync_wr_pd;
// Code
// PIPE READY
assign data_rdy = pipe_data_rdy || !pipe_data_vld;

// PIPE VALID
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
    if (!nvdla_core_rstn) begin
        pipe_data_vld <= 1'b0;
    end else begin
        if (data_rdy) begin
            pipe_data_vld <= data_vld;
        end
    end
end

// PIPE DATA
always @(posedge nvdla_core_clk) begin
    if (data_rdy && data_vld) begin
        pipe_data_pd[9-1:0] <= data_pd[9-1:0];
    end
end


// PIPE OUTPUT
assign pipe_data_rdy = data_sync_wr_prdy;
assign data_sync_wr_pvld = pipe_data_vld;
assign data_sync_wr_pd = pipe_data_pd;
// Reg
reg pipe_info_vld;
reg [15-1:0] pipe_info_pd;
// Wire
wire info_rdy;
wire pipe_info_rdy;
wire info_sync_wr_pvld;
wire [15-1:0] info_sync_wr_pd;
// Code
// PIPE READY
assign info_rdy = pipe_info_rdy || !pipe_info_vld;

// PIPE VALID
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
    if (!nvdla_core_rstn) begin
        pipe_info_vld <= 1'b0;
    end else begin
        if (info_rdy) begin
            pipe_info_vld <= info_vld;
        end
    end
end

// PIPE DATA
always @(posedge nvdla_core_clk) begin
    if (info_rdy && info_vld) begin
        pipe_info_pd[15-1:0] <= info_pd[15-1:0];
    end
end


// PIPE OUTPUT
assign pipe_info_rdy = info_sync_wr_prdy;
assign info_sync_wr_pvld = pipe_info_vld;
assign info_sync_wr_pd = pipe_info_pd;

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////////////////////////////
//datin sync fifo
assign cvt2sync_prdy = data_rdy & info_rdy;
assign data_vld = cvt2sync_pvld & info_rdy;
assign info_vld = cvt2sync_pvld & data_rdy;
assign data_pd = cvt2sync_pd[1 * (8 +1)-1:0];
assign info_pd = cvt2sync_pd[1 * (8 +1)+14:1 * (8 +1)];
//////////////////////////////////////////////
//////////////////////////////////////////////
NV_NVDLA_CDP_DP_data_fifo u_data_sync_fifo (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< i
  ,.data_wr_prdy (data_sync_wr_prdy) //|> w
  ,.data_wr_pvld (data_sync_wr_pvld) //|< r
  ,.data_wr_pd (data_sync_wr_pd ) //|< r
  ,.data_rd_prdy (data_sync_rd_prdy) //|< w
  ,.data_rd_pvld (data_sync_rd_pvld) //|> w
  ,.data_rd_pd (data_sync_rd_pd ) //|> w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  );
assign data_sync_rd_prdy = sync2mul_prdy;
assign sync2mul_pvld= data_sync_rd_pvld;
assign sync2mul_pd = data_sync_rd_pd ;
NV_NVDLA_CDP_DP_info_fifo u_info_sync_fifo (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< i
  ,.info_wr_prdy (info_sync_wr_prdy) //|> w
  ,.info_wr_pvld (info_sync_wr_pvld) //|< r
  ,.info_wr_pd (info_sync_wr_pd[14:0]) //|< r
  ,.info_rd_prdy (info_sync_rd_prdy) //|< w
  ,.info_rd_pvld (info_sync_rd_pvld) //|> w
  ,.info_rd_pd (info_sync_rd_pd[14:0]) //|> w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  );
assign sync2ocvt_pd = info_sync_rd_pd[14:0];
assign sync2ocvt_pvld = info_sync_rd_pvld;
assign info_sync_rd_prdy = sync2ocvt_prdy;
///////////////////////////////////////////
NV_NVDLA_CDP_DP_sumpd_fifo u_sumpd_sync_fifo (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< i
  ,.sumpd_wr_prdy (sum2sync_prdy) //|> o
  ,.sumpd_wr_pvld (sum2sync_pvld) //|< i
  ,.sumpd_wr_pd (sum2sync_pd ) //|< i
  ,.sumpd_rd_prdy (sync2itp_prdy) //|< i
  ,.sumpd_rd_pvld (sync2itp_pvld) //|> o
  ,.sumpd_rd_pd (sync2itp_pd ) //|> o
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  );
///////////////////////////////////////////
endmodule // NV_NVDLA_CDP_DP_syncfifo
//
// AUTOMATICALLY GENERATED -- DO NOT EDIT OR CHECK IN
//
// /home/nvtools/engr/2017/03/11_05_00_06/nvtools/scripts/fifogen
// fifogen -input_config_yaml ../../../../../../../socd/ip_chip_tools/1.0/defs/public/fifogen/golden/tlit5/fifogen.yml -no_make_ram -no_make_ram -stdout -m NV_NVDLA_CDP_DP_info_fifo -clk_name nvdla_core_clk -reset_name nvdla_core_rstn -wr_pipebus info_wr -rd_pipebus info_rd -rd_reg -ram_bypass -d 80 -w 15 -ram ra2 [Chosen ram type: ra2 - ramgen_generic (user specified, thus no other ram type is allowed)]
// chip config vars: assertion_module_prefix=nv_ strict_synchronizers=1 strict_synchronizers_use_lib_cells=1 strict_synchronizers_use_tm_lib_cells=1 strict_sync_randomizer=1 assertion_message_prefix=FIFOGEN_ASSERTION allow_async_fifola=0 ignore_ramgen_fifola_variant=1 uses_p_SSYNC=0 uses_prand=1 uses_rammake_inc=1 use_x_or_0=1 force_wr_reg_gated=1 no_force_reset=1 no_timescale=1 no_pli_ifdef=1 requires_full_throughput=1 ram_auto_ff_bits_cutoff=16 ram_auto_ff_width_cutoff=2 ram_auto_ff_width_cutoff_max_depth=32 ram_auto_ff_depth_cutoff=-1 ram_auto_ff_no_la2_depth_cutoff=5 ram_auto_la2_width_cutoff=8 ram_auto_la2_width_cutoff_max_depth=56 ram_auto_la2_depth_cutoff=16 flopram_emu_model=1 dslp_single_clamp_port=1 dslp_clamp_port=1 slp_single_clamp_port=1 slp_clamp_port=1 master_clk_gated=1 clk_gate_module=NV_CLK_gate_power redundant_timing_flops=0 hot_reset_async_force_ports_and_loopback=1 ram_sleep_en_width=1 async_cdc_reg_id=NV_AFIFO_ rd_reg_default_for_async=1 async_ram_instance_prefix=NV_ASYNC_RAM_ allow_rd_busy_reg_warning=0 do_dft_xelim_gating=1 add_dft_xelim_wr_clkgate=1 add_dft_xelim_rd_clkgate=1
//
// leda B_3208_NV OFF -- Unequal length LHS and RHS in assignment
// leda B_1405 OFF -- 2 asynchronous resets in this unit detected
`define FORCE_CONTENTION_ASSERTION_RESET_ACTIVE 1'b1
`include "simulate_x_tick.vh"
module NV_NVDLA_CDP_DP_info_fifo (
      nvdla_core_clk
    , nvdla_core_rstn
    , info_wr_prdy
    , info_wr_pvld
`ifdef FV_RAND_WR_PAUSE
    , info_wr_pause
`endif
    , info_wr_pd
    , info_rd_prdy
    , info_rd_pvld
    , info_rd_pd
    , pwrbus_ram_pd
    );
// spyglass disable_block W401 -- clock is not input to module
input nvdla_core_clk;
input nvdla_core_rstn;
output info_wr_prdy;
input info_wr_pvld;
`ifdef FV_RAND_WR_PAUSE
input info_wr_pause;
`endif
input [14:0] info_wr_pd;
input info_rd_prdy;
output info_rd_pvld;
output [14:0] info_rd_pd;
input [31:0] pwrbus_ram_pd;
// Master Clock Gating (SLCG)
//
// We gate the clock(s) when idle or stalled.
// This allows us to turn off numerous miscellaneous flops
// that don't get gated during synthesis for one reason or another.
//
// We gate write side and read side separately.
// If the fifo is synchronous, we also gate the ram separately, but if
// -master_clk_gated_unified or -status_reg/-status_logic_reg is specified,
// then we use one clk gate for write, ram, and read.
//
wire nvdla_core_clk_mgated_enable; // assigned by code at end of this module
wire nvdla_core_clk_mgated; // used only in synchronous fifos
NV_CLK_gate_power nvdla_core_clk_mgate( .clk(nvdla_core_clk), .reset_(nvdla_core_rstn), .clk_en(nvdla_core_clk_mgated_enable), .clk_gated(nvdla_core_clk_mgated) );
//
// WRITE SIDE
//
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
wire wr_pause_rand; // random stalling
`endif
`endif
// synopsys translate_on
wire wr_reserving;
reg info_wr_busy_int; // copy for internal use
assign info_wr_prdy = !info_wr_busy_int;
assign wr_reserving = info_wr_pvld && !info_wr_busy_int; // reserving write space?
wire wr_popping; // fwd: write side sees pop?
reg [6:0] info_wr_count; // write-side count
wire [6:0] wr_count_next_wr_popping = wr_reserving ? info_wr_count : (info_wr_count - 1'd1); // spyglass disable W164a W484
wire [6:0] wr_count_next_no_wr_popping = wr_reserving ? (info_wr_count + 1'd1) : info_wr_count; // spyglass disable W164a W484
wire [6:0] wr_count_next = wr_popping ? wr_count_next_wr_popping :
                                               wr_count_next_no_wr_popping;
wire wr_count_next_no_wr_popping_is_80 = ( wr_count_next_no_wr_popping == 7'd80 );
wire wr_count_next_is_80 = wr_popping ? 1'b0 :
                                          wr_count_next_no_wr_popping_is_80;
wire [6:0] wr_limit_muxed; // muxed with simulation/emulation overrides
wire [6:0] wr_limit_reg = wr_limit_muxed;
`ifdef FV_RAND_WR_PAUSE
// VCS coverage off
wire info_wr_busy_next = wr_count_next_is_80 || // busy next cycle?
                          (wr_limit_reg != 7'd0 && // check info_wr_limit if != 0
                           wr_count_next >= wr_limit_reg) || info_wr_pause;
// VCS coverage on
`else
// VCS coverage off
wire info_wr_busy_next = wr_count_next_is_80 || // busy next cycle?
                          (wr_limit_reg != 7'd0 && // check info_wr_limit if != 0
                           wr_count_next >= wr_limit_reg)
// synopsys translate_off
  `ifndef SYNTH_LEVEL1_COMPILE
  `ifndef SYNTHESIS
 || wr_pause_rand
  `endif
  `endif
// synopsys translate_on
;
// VCS coverage on
`endif
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        info_wr_busy_int <= 1'b0;
        info_wr_count <= 7'd0;
    end else begin
 info_wr_busy_int <= info_wr_busy_next;
 if ( wr_reserving ^ wr_popping ) begin
     info_wr_count <= wr_count_next;
        end
//synopsys translate_off
            else if ( !(wr_reserving ^ wr_popping) ) begin
        end else begin
            info_wr_count <= {7{`x_or_0}};
        end
//synopsys translate_on
    end
end
wire wr_pushing = wr_reserving; // data pushed same cycle as info_wr_pvld
//
// RAM
//
reg [6:0] info_wr_adr; // current write address
wire [6:0] info_rd_adr_p; // read address to use for ram
wire [14:0] info_rd_pd_p_byp_ram; // read data directly out of ram
wire rd_enable;
wire ore;
wire do_bypass;
wire comb_bypass;
wire rd_popping;
wire [31 : 0] pwrbus_ram_pd;
// Adding parameter for fifogen to disable wr/rd contention assertion in ramgen.
// Fifogen handles this by ignoring the data on the ram data out for that cycle.
nv_ram_rwsthp_80x15 #(`FORCE_CONTENTION_ASSERTION_RESET_ACTIVE) ram (
      .clk ( nvdla_core_clk )
    , .pwrbus_ram_pd ( pwrbus_ram_pd )
    , .wa ( info_wr_adr )
    , .we ( wr_pushing && (info_wr_count != 7'd0 || !rd_popping) )
    , .di ( info_wr_pd )
    , .ra ( info_rd_adr_p )
    , .re ( (do_bypass && wr_pushing) || rd_enable )
    , .dout ( info_rd_pd_p_byp_ram )
    , .byp_sel ( comb_bypass )
    , .dbyp ( info_wr_pd[14:0] )
    , .ore ( ore )
    );
// next info_wr_adr if wr_pushing=1
wire [6:0] wr_adr_next = (info_wr_adr == 7'd79) ? 7'd0 : (info_wr_adr + 1'd1); // spyglass disable W484
// spyglass disable_block W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        info_wr_adr <= 7'd0;
    end else begin
        if ( wr_pushing ) begin
            info_wr_adr <= wr_adr_next;
        end
//synopsys translate_off
            else if ( !(wr_pushing) ) begin
        end else begin
            info_wr_adr <= {7{`x_or_0}};
        end
//synopsys translate_on
    end
end
// spyglass enable_block W484
reg [6:0] info_rd_adr; // current read address
// next read address
wire [6:0] rd_adr_next = (info_rd_adr == 7'd79) ? 7'd0 : (info_rd_adr + 1'd1); // spyglass disable W484
assign info_rd_adr_p = rd_popping ? rd_adr_next : info_rd_adr; // for ram
// spyglass disable_block W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        info_rd_adr <= 7'd0;
    end else begin
        if ( rd_popping ) begin
     info_rd_adr <= rd_adr_next;
        end
//synopsys translate_off
            else if ( !rd_popping ) begin
        end else begin
            info_rd_adr <= {7{`x_or_0}};
        end
//synopsys translate_on
    end
end
// spyglass enable_block W484
assign do_bypass = (rd_popping ? (info_wr_adr == rd_adr_next) : (info_wr_adr == info_rd_adr));
wire [14:0] info_rd_pd_p_byp = info_rd_pd_p_byp_ram;
//
// Combinatorial Bypass
//
// If we're pushing an empty fifo, mux the wr_data directly.
//
assign comb_bypass = info_wr_count == 0;
wire [14:0] info_rd_pd_p = info_rd_pd_p_byp;
//
// SYNCHRONOUS BOUNDARY
//
assign wr_popping = rd_popping; // let it be seen immediately
wire rd_pushing = wr_pushing; // let it be seen immediately
//
// READ SIDE
//
wire info_rd_pvld_p; // data out of fifo is valid
reg info_rd_pvld_int; // internal copy of info_rd_pvld
assign info_rd_pvld = info_rd_pvld_int;
assign rd_popping = info_rd_pvld_p && !(info_rd_pvld_int && !info_rd_prdy);
reg [6:0] info_rd_count_p; // read-side fifo count
// spyglass disable_block W164a W484
wire [6:0] rd_count_p_next_rd_popping = rd_pushing ? info_rd_count_p :
                                                                (info_rd_count_p - 1'd1);
wire [6:0] rd_count_p_next_no_rd_popping = rd_pushing ? (info_rd_count_p + 1'd1) :
                                                                    info_rd_count_p;
// spyglass enable_block W164a W484
wire [6:0] rd_count_p_next = rd_popping ? rd_count_p_next_rd_popping :
                                                     rd_count_p_next_no_rd_popping;
wire rd_count_p_next_rd_popping_not_0 = rd_count_p_next_rd_popping != 0;
wire rd_count_p_next_no_rd_popping_not_0 = rd_count_p_next_no_rd_popping != 0;
wire rd_count_p_next_not_0 = rd_popping ? rd_count_p_next_rd_popping_not_0 :
                                              rd_count_p_next_no_rd_popping_not_0;
assign info_rd_pvld_p = info_rd_count_p != 0 || rd_pushing;
assign rd_enable = ((rd_count_p_next_not_0) && ((~info_rd_pvld_p) || rd_popping)); // anytime data's there and not stalled
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        info_rd_count_p <= 7'd0;
    end else begin
        if ( rd_pushing || rd_popping ) begin
     info_rd_count_p <= rd_count_p_next;
        end
//synopsys translate_off
            else if ( !(rd_pushing || rd_popping ) ) begin
        end else begin
            info_rd_count_p <= {7{`x_or_0}};
        end
//synopsys translate_on
    end
end
wire rd_req_next = (info_rd_pvld_p || (info_rd_pvld_int && !info_rd_prdy)) ;
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        info_rd_pvld_int <= 1'b0;
    end else begin
        info_rd_pvld_int <= rd_req_next;
    end
end
assign info_rd_pd = info_rd_pd_p;
assign ore = rd_popping;
// Master Clock Gating (SLCG) Enables
//
// plusarg for disabling this stuff:
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
reg master_clk_gating_disabled; initial master_clk_gating_disabled = $test$plusargs( "fifogen_disable_master_clk_gating" ) != 0;
`endif
`endif
// synopsys translate_on
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
reg wr_pause_rand_dly;
always @( posedge nvdla_core_clk or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        wr_pause_rand_dly <= 1'b0;
    end else begin
        wr_pause_rand_dly <= wr_pause_rand;
    end
end
`endif
`endif
// synopsys translate_on
assign nvdla_core_clk_mgated_enable = ((wr_reserving || wr_pushing || wr_popping || (info_wr_pvld && !info_wr_busy_int) || (info_wr_busy_int != info_wr_busy_next)) || (rd_pushing || rd_popping || (info_rd_pvld_int && info_rd_prdy)))
                               `ifdef FIFOGEN_MASTER_CLK_GATING_DISABLED
                               || 1'b1
                               `endif
// synopsys translate_off
          `ifndef SYNTH_LEVEL1_COMPILE
          `ifndef SYNTHESIS
                               || master_clk_gating_disabled || (wr_pause_rand != wr_pause_rand_dly)
          `endif
          `endif
// synopsys translate_on
                               ;
// Simulation and Emulation Overrides of wr_limit(s)
//
`ifdef EMU
`ifdef EMU_FIFO_CFG
// Emulation Global Config Override
//
assign wr_limit_muxed = `EMU_FIFO_CFG.NV_NVDLA_CDP_DP_info_fifo_wr_limit_override ? `EMU_FIFO_CFG.NV_NVDLA_CDP_DP_info_fifo_wr_limit : 7'd0;
`else
// No Global Override for Emulation
//
assign wr_limit_muxed = 7'd0;
`endif // EMU_FIFO_CFG
`else // !EMU
`ifdef SYNTH_LEVEL1_COMPILE
// No Override for GCS Compiles
//
assign wr_limit_muxed = 7'd0;
`else
`ifdef SYNTHESIS
// No Override for RTL Synthesis
//
assign wr_limit_muxed = 7'd0;
`else
// RTL Simulation Plusarg Override
// VCS coverage off
reg wr_limit_override;
reg [6:0] wr_limit_override_value;
assign wr_limit_muxed = wr_limit_override ? wr_limit_override_value : 7'd0;
`ifdef NV_ARCHPRO
event reinit;
initial begin
    $display("fifogen reinit initial block %m");
    -> reinit;
end
`endif
`ifdef NV_ARCHPRO
always @( reinit ) begin
`else
initial begin
`endif
    wr_limit_override = 0;
    wr_limit_override_value = 0; // to keep viva happy with dangles
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_info_fifo_wr_limit" ) ) begin
        wr_limit_override = 1;
        $value$plusargs( "NV_NVDLA_CDP_DP_info_fifo_wr_limit=%d", wr_limit_override_value);
    end
end
// VCS coverage on
`endif
`endif
`endif
// Random Write-Side Stalling
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
// VCS coverage off
// leda W339 OFF -- Non synthesizable operator
// leda W372 OFF -- Undefined PLI task
// leda W373 OFF -- Undefined PLI function
// leda W599 OFF -- This construct is not supported by Synopsys
// leda W430 OFF -- Initial statement is not synthesizable
// leda W182 OFF -- Illegal statement for synthesis
// leda W639 OFF -- For synthesis, operands of a division or modulo operation need to be constants
// leda DCVER_274_NV OFF -- This system task is not supported by DC
integer stall_probability; // prob of stalling
integer stall_cycles_min; // min cycles to stall
integer stall_cycles_max; // max cycles to stall
integer stall_cycles_left; // stall cycles left
`ifdef NV_ARCHPRO
always @( reinit ) begin
`else
initial begin
`endif
    stall_probability = 0; // no stalling by default
    stall_cycles_min = 1;
    stall_cycles_max = 10;
`ifdef NO_PLI
`else
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_info_fifo_fifo_stall_probability" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_DP_info_fifo_fifo_stall_probability=%d", stall_probability);
    end else if ( $test$plusargs( "default_fifo_stall_probability" ) ) begin
        $value$plusargs( "default_fifo_stall_probability=%d", stall_probability);
    end
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_info_fifo_fifo_stall_cycles_min" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_DP_info_fifo_fifo_stall_cycles_min=%d", stall_cycles_min);
    end else if ( $test$plusargs( "default_fifo_stall_cycles_min" ) ) begin
        $value$plusargs( "default_fifo_stall_cycles_min=%d", stall_cycles_min);
    end
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_info_fifo_fifo_stall_cycles_max" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_DP_info_fifo_fifo_stall_cycles_max=%d", stall_cycles_max);
    end else if ( $test$plusargs( "default_fifo_stall_cycles_max" ) ) begin
        $value$plusargs( "default_fifo_stall_cycles_max=%d", stall_cycles_max);
    end
`endif
    if ( stall_cycles_min < 1 ) begin
        stall_cycles_min = 1;
    end
    if ( stall_cycles_min > stall_cycles_max ) begin
        stall_cycles_max = stall_cycles_min;
    end
end
`ifdef NO_PLI
`else
// randomization globals
`ifdef SIMTOP_RANDOMIZE_STALLS
  always @( `SIMTOP_RANDOMIZE_STALLS.global_stall_event ) begin
    if ( ! $test$plusargs( "NV_NVDLA_CDP_DP_info_fifo_fifo_stall_probability" ) ) stall_probability = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_probability;
    if ( ! $test$plusargs( "NV_NVDLA_CDP_DP_info_fifo_fifo_stall_cycles_min" ) ) stall_cycles_min = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_cycles_min;
    if ( ! $test$plusargs( "NV_NVDLA_CDP_DP_info_fifo_fifo_stall_cycles_max" ) ) stall_cycles_max = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_cycles_max;
  end
`endif
`endif
always @( negedge nvdla_core_clk or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        stall_cycles_left <= 0;
    end else begin
`ifdef NO_PLI
            stall_cycles_left <= 0;
`else
            if ( info_wr_pvld && !(!info_wr_prdy)
                 && stall_probability != 0 ) begin
                if ( prand_inst4(1, 100) <= stall_probability ) begin
                    stall_cycles_left <= prand_inst5(stall_cycles_min, stall_cycles_max);
                end else if ( stall_cycles_left !== 0 ) begin
                    stall_cycles_left <= stall_cycles_left - 1;
                end
            end else if ( stall_cycles_left !== 0 ) begin
                stall_cycles_left <= stall_cycles_left - 1;
            end
`endif
    end
end
assign wr_pause_rand = (stall_cycles_left !== 0) ;
// VCS coverage on
`endif
`endif
// synopsys translate_on
// VCS coverage on
// leda W339 ON
// leda W372 ON
// leda W373 ON
// leda W599 ON
// leda W430 ON
// leda W182 ON
// leda W639 ON
// leda DCVER_274_NV ON
//
// Histogram of fifo depth (from write side's perspective)
//
// NOTE: it will reference `SIMTOP.perfmon_enabled, so that
// has to at least be defined, though not initialized.
// tbgen testbenches have it already and various
// ways to turn it on and off.
//
`ifdef PERFMON_HISTOGRAM
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
perfmon_histogram perfmon (
      .clk ( nvdla_core_clk )
    , .max ( {25'd0, (wr_limit_reg == 7'd0) ? 7'd80 : wr_limit_reg} )
    , .curr ( {25'd0, info_wr_count} )
    );
`endif
`endif
// synopsys translate_on
`endif
// spyglass disable_block W164a W164b W116 W484 W504
`ifdef SPYGLASS
`else
`ifdef FV_ASSERT_ON
`else
// synopsys translate_off
`endif
`ifdef ASSERT_ON
`ifdef SPYGLASS
wire disable_assert_plusarg = 1'b0;
`else
`ifdef FV_ASSERT_ON
wire disable_assert_plusarg = 1'b0;
`else
wire disable_assert_plusarg = $test$plusargs("DISABLE_NESS_FLOW_ASSERTIONS");
`endif
`endif
wire assert_enabled = 1'b1 && !disable_assert_plusarg;
`endif
`ifdef FV_ASSERT_ON
`else
// synopsys translate_on
`endif
`ifdef ASSERT_ON
//synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
always @(assert_enabled) begin
    if ( assert_enabled === 1'b0 ) begin
        $display("Asserts are disabled for %m");
    end
end
`endif
`endif
//synopsys translate_on
`endif
`endif
// spyglass enable_block W164a W164b W116 W484 W504
//The NV_BLKBOX_SRC0 module is only present when the FIFOGEN_MODULE_SEARCH
// define is set. This is to aid fifogen team search for fifogen fifo
// instance and module names in a given design.
`ifdef FIFOGEN_MODULE_SEARCH
NV_BLKBOX_SRC0 dummy_breadcrumb_fifogen_blkbox (.Y());
`endif
// spyglass enable_block W401 -- clock is not input to module
// synopsys dc_script_begin
// set_boundary_optimization find(design, "NV_NVDLA_CDP_DP_info_fifo") true
// synopsys dc_script_end
`ifdef SYNTH_LEVEL1_COMPILE
`else
`ifdef SYNTHESIS
`else
`ifdef PRAND_VERILOG
// Only verilog needs any local variables
reg [47:0] prand_local_seed4;
reg prand_initialized4;
reg prand_no_rollpli4;
`endif
`endif
`endif
function [31:0] prand_inst4;
//VCS coverage off
    input [31:0] min;
    input [31:0] max;
    reg [32:0] diff;
    begin
`ifdef SYNTH_LEVEL1_COMPILE
        prand_inst4 = min;
`else
`ifdef SYNTHESIS
        prand_inst4 = min;
`else
`ifdef PRAND_VERILOG
        if (prand_initialized4 !== 1'b1) begin
            prand_no_rollpli4 = $test$plusargs("NO_ROLLPLI");
            if (!prand_no_rollpli4)
                prand_local_seed4 = {$prand_get_seed(4), 16'b0};
            prand_initialized4 = 1'b1;
        end
        if (prand_no_rollpli4) begin
            prand_inst4 = min;
        end else begin
            diff = max - min + 1;
            prand_inst4 = min + prand_local_seed4[47:16] % diff;
// magic numbers taken from Java's random class (same as lrand48)
            prand_local_seed4 = prand_local_seed4 * 48'h5deece66d + 48'd11;
        end
`else
`ifdef PRAND_OFF
        prand_inst4 = min;
`else
        prand_inst4 = $RollPLI(min, max, "auto");
`endif
`endif
`endif
`endif
    end
//VCS coverage on
endfunction
`ifdef SYNTH_LEVEL1_COMPILE
`else
`ifdef SYNTHESIS
`else
`ifdef PRAND_VERILOG
// Only verilog needs any local variables
reg [47:0] prand_local_seed5;
reg prand_initialized5;
reg prand_no_rollpli5;
`endif
`endif
`endif
function [31:0] prand_inst5;
//VCS coverage off
    input [31:0] min;
    input [31:0] max;
    reg [32:0] diff;
    begin
`ifdef SYNTH_LEVEL1_COMPILE
        prand_inst5 = min;
`else
`ifdef SYNTHESIS
        prand_inst5 = min;
`else
`ifdef PRAND_VERILOG
        if (prand_initialized5 !== 1'b1) begin
            prand_no_rollpli5 = $test$plusargs("NO_ROLLPLI");
            if (!prand_no_rollpli5)
                prand_local_seed5 = {$prand_get_seed(5), 16'b0};
            prand_initialized5 = 1'b1;
        end
        if (prand_no_rollpli5) begin
            prand_inst5 = min;
        end else begin
            diff = max - min + 1;
            prand_inst5 = min + prand_local_seed5[47:16] % diff;
// magic numbers taken from Java's random class (same as lrand48)
            prand_local_seed5 = prand_local_seed5 * 48'h5deece66d + 48'd11;
        end
`else
`ifdef PRAND_OFF
        prand_inst5 = min;
`else
        prand_inst5 = $RollPLI(min, max, "auto");
`endif
`endif
`endif
`endif
    end
//VCS coverage on
endfunction
endmodule // NV_NVDLA_CDP_DP_info_fifo
`define FORCE_CONTENTION_ASSERTION_RESET_ACTIVE 1'b1
`include "simulate_x_tick.vh"
module NV_NVDLA_CDP_DP_data_fifo (
      nvdla_core_clk
    , nvdla_core_rstn
    , data_wr_prdy
    , data_wr_pvld
`ifdef FV_RAND_WR_PAUSE
    , data_wr_pause
`endif
    , data_wr_pd
    , data_rd_prdy
    , data_rd_pvld
    , data_rd_pd
    , pwrbus_ram_pd
    );
// spyglass disable_block W401 -- clock is not input to module
input nvdla_core_clk;
input nvdla_core_rstn;
output data_wr_prdy;
input data_wr_pvld;
`ifdef FV_RAND_WR_PAUSE
input data_wr_pause;
`endif
input [8:0] data_wr_pd;
input data_rd_prdy;
output data_rd_pvld;
output [8:0] data_rd_pd;
input [31:0] pwrbus_ram_pd;
// Master Clock Gating (SLCG)
//
// We gate the clock(s) when idle or stalled.
// This allows us to turn off numerous miscellaneous flops
// that don't get gated during synthesis for one reason or another.
//
// We gate write side and read side separately.
// If the fifo is synchronous, we also gate the ram separately, but if
// -master_clk_gated_unified or -status_reg/-status_logic_reg is specified,
// then we use one clk gate for write, ram, and read.
//
wire nvdla_core_clk_mgated_enable; // assigned by code at end of this module
wire nvdla_core_clk_mgated; // used only in synchronous fifos
NV_CLK_gate_power nvdla_core_clk_mgate( .clk(nvdla_core_clk), .reset_(nvdla_core_rstn), .clk_en(nvdla_core_clk_mgated_enable), .clk_gated(nvdla_core_clk_mgated) );
//
// WRITE SIDE
//
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
wire wr_pause_rand; // random stalling
`endif
`endif
// synopsys translate_on
wire wr_reserving;
reg data_wr_busy_int; // copy for internal use
assign data_wr_prdy = !data_wr_busy_int;
assign wr_reserving = data_wr_pvld && !data_wr_busy_int; // reserving write space?
wire wr_popping; // fwd: write side sees pop?
reg [6:0] data_wr_count; // write-side count
wire [6:0] wr_count_next_wr_popping = wr_reserving ? data_wr_count : (data_wr_count - 1'd1); // spyglass disable W164a W484
wire [6:0] wr_count_next_no_wr_popping = wr_reserving ? (data_wr_count + 1'd1) : data_wr_count; // spyglass disable W164a W484
wire [6:0] wr_count_next = wr_popping ? wr_count_next_wr_popping :
                                               wr_count_next_no_wr_popping;
wire wr_count_next_no_wr_popping_is_80 = ( wr_count_next_no_wr_popping == 7'd80 );
wire wr_count_next_is_80 = wr_popping ? 1'b0 :
                                          wr_count_next_no_wr_popping_is_80;
wire [6:0] wr_limit_muxed; // muxed with simulation/emulation overrides
wire [6:0] wr_limit_reg = wr_limit_muxed;
`ifdef FV_RAND_WR_PAUSE
// VCS coverage off
wire data_wr_busy_next = wr_count_next_is_80 || // busy next cycle?
                          (wr_limit_reg != 7'd0 && // check data_wr_limit if != 0
                           wr_count_next >= wr_limit_reg) || data_wr_pause;
// VCS coverage on
`else
// VCS coverage off
wire data_wr_busy_next = wr_count_next_is_80 || // busy next cycle?
                          (wr_limit_reg != 7'd0 && // check data_wr_limit if != 0
                           wr_count_next >= wr_limit_reg)
// synopsys translate_off
  `ifndef SYNTH_LEVEL1_COMPILE
  `ifndef SYNTHESIS
 || wr_pause_rand
  `endif
  `endif
// synopsys translate_on
;
// VCS coverage on
`endif
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        data_wr_busy_int <= 1'b0;
        data_wr_count <= 7'd0;
    end else begin
 data_wr_busy_int <= data_wr_busy_next;
 if ( wr_reserving ^ wr_popping ) begin
     data_wr_count <= wr_count_next;
        end
//synopsys translate_off
            else if ( !(wr_reserving ^ wr_popping) ) begin
        end else begin
            data_wr_count <= {7{`x_or_0}};
        end
//synopsys translate_on
    end
end
wire wr_pushing = wr_reserving; // data pushed same cycle as data_wr_pvld
//
// RAM
//
reg [6:0] data_wr_adr; // current write address
wire [6:0] data_rd_adr_p; // read address to use for ram
wire [8:0] data_rd_pd_p_byp_ram; // read data directly out of ram
wire rd_enable;
wire ore;
wire do_bypass;
wire comb_bypass;
wire rd_popping;
wire [31 : 0] pwrbus_ram_pd;
// Adding parameter for fifogen to disable wr/rd contention assertion in ramgen.
// Fifogen handles this by ignoring the data on the ram data out for that cycle.
nv_ram_rwsthp_80x9 #(`FORCE_CONTENTION_ASSERTION_RESET_ACTIVE) ram (
      .clk ( nvdla_core_clk )
    , .pwrbus_ram_pd ( pwrbus_ram_pd )
    , .wa ( data_wr_adr )
    , .we ( wr_pushing && (data_wr_count != 7'd0 || !rd_popping) )
    , .di ( data_wr_pd )
    , .ra ( data_rd_adr_p )
    , .re ( (do_bypass && wr_pushing) || rd_enable )
    , .dout ( data_rd_pd_p_byp_ram )
    , .byp_sel ( comb_bypass )
    , .dbyp ( data_wr_pd[8:0] )
    , .ore ( ore )
    );
// next data_wr_adr if wr_pushing=1
wire [6:0] wr_adr_next = (data_wr_adr == 7'd79) ? 7'd0 : (data_wr_adr + 1'd1); // spyglass disable W484
// spyglass disable_block W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        data_wr_adr <= 7'd0;
    end else begin
        if ( wr_pushing ) begin
            data_wr_adr <= wr_adr_next;
        end
//synopsys translate_off
            else if ( !(wr_pushing) ) begin
        end else begin
            data_wr_adr <= {7{`x_or_0}};
        end
//synopsys translate_on
    end
end
// spyglass enable_block W484
reg [6:0] data_rd_adr; // current read address
// next read address
wire [6:0] rd_adr_next = (data_rd_adr == 7'd79) ? 7'd0 : (data_rd_adr + 1'd1); // spyglass disable W484
assign data_rd_adr_p = rd_popping ? rd_adr_next : data_rd_adr; // for ram
// spyglass disable_block W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        data_rd_adr <= 7'd0;
    end else begin
        if ( rd_popping ) begin
     data_rd_adr <= rd_adr_next;
        end
//synopsys translate_off
            else if ( !rd_popping ) begin
        end else begin
            data_rd_adr <= {7{`x_or_0}};
        end
//synopsys translate_on
    end
end
// spyglass enable_block W484
assign do_bypass = (rd_popping ? (data_wr_adr == rd_adr_next) : (data_wr_adr == data_rd_adr));
wire [8:0] data_rd_pd_p_byp = data_rd_pd_p_byp_ram;
//
// Combinatorial Bypass
//
// If we're pushing an empty fifo, mux the wr_data directly.
//
assign comb_bypass = data_wr_count == 0;
wire [8:0] data_rd_pd_p = data_rd_pd_p_byp;
//
// SYNCHRONOUS BOUNDARY
//
assign wr_popping = rd_popping; // let it be seen immediately
wire rd_pushing = wr_pushing; // let it be seen immediately
//
// READ SIDE
//
wire data_rd_pvld_p; // data out of fifo is valid
reg data_rd_pvld_int; // internal copy of data_rd_pvld
assign data_rd_pvld = data_rd_pvld_int;
assign rd_popping = data_rd_pvld_p && !(data_rd_pvld_int && !data_rd_prdy);
reg [6:0] data_rd_count_p; // read-side fifo count
// spyglass disable_block W164a W484
wire [6:0] rd_count_p_next_rd_popping = rd_pushing ? data_rd_count_p :
                                                                (data_rd_count_p - 1'd1);
wire [6:0] rd_count_p_next_no_rd_popping = rd_pushing ? (data_rd_count_p + 1'd1) :
                                                                    data_rd_count_p;
// spyglass enable_block W164a W484
wire [6:0] rd_count_p_next = rd_popping ? rd_count_p_next_rd_popping :
                                                     rd_count_p_next_no_rd_popping;
wire rd_count_p_next_rd_popping_not_0 = rd_count_p_next_rd_popping != 0;
wire rd_count_p_next_no_rd_popping_not_0 = rd_count_p_next_no_rd_popping != 0;
wire rd_count_p_next_not_0 = rd_popping ? rd_count_p_next_rd_popping_not_0 :
                                              rd_count_p_next_no_rd_popping_not_0;
assign data_rd_pvld_p = data_rd_count_p != 0 || rd_pushing;
assign rd_enable = ((rd_count_p_next_not_0) && ((~data_rd_pvld_p) || rd_popping)); // anytime data's there and not stalled
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        data_rd_count_p <= 7'd0;
    end else begin
        if ( rd_pushing || rd_popping ) begin
     data_rd_count_p <= rd_count_p_next;
        end
//synopsys translate_off
            else if ( !(rd_pushing || rd_popping ) ) begin
        end else begin
            data_rd_count_p <= {7{`x_or_0}};
        end
//synopsys translate_on
    end
end
wire rd_req_next = (data_rd_pvld_p || (data_rd_pvld_int && !data_rd_prdy)) ;
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        data_rd_pvld_int <= 1'b0;
    end else begin
        data_rd_pvld_int <= rd_req_next;
    end
end
assign data_rd_pd = data_rd_pd_p;
assign ore = rd_popping;
// Master Clock Gating (SLCG) Enables
//
// plusarg for disabling this stuff:
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
reg master_clk_gating_disabled; initial master_clk_gating_disabled = $test$plusargs( "fifogen_disable_master_clk_gating" ) != 0;
`endif
`endif
// synopsys translate_on
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
reg wr_pause_rand_dly;
always @( posedge nvdla_core_clk or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        wr_pause_rand_dly <= 1'b0;
    end else begin
        wr_pause_rand_dly <= wr_pause_rand;
    end
end
`endif
`endif
// synopsys translate_on
assign nvdla_core_clk_mgated_enable = ((wr_reserving || wr_pushing || wr_popping || (data_wr_pvld && !data_wr_busy_int) || (data_wr_busy_int != data_wr_busy_next)) || (rd_pushing || rd_popping || (data_rd_pvld_int && data_rd_prdy)))
                               `ifdef FIFOGEN_MASTER_CLK_GATING_DISABLED
                               || 1'b1
                               `endif
// synopsys translate_off
          `ifndef SYNTH_LEVEL1_COMPILE
          `ifndef SYNTHESIS
                               || master_clk_gating_disabled || (wr_pause_rand != wr_pause_rand_dly)
          `endif
          `endif
// synopsys translate_on
                               ;
// Simulation and Emulation Overrides of wr_limit(s)
//
`ifdef EMU
`ifdef EMU_FIFO_CFG
// Emulation Global Config Override
//
assign wr_limit_muxed = `EMU_FIFO_CFG.NV_NVDLA_CDP_DP_data_fifo_wr_limit_override ? `EMU_FIFO_CFG.NV_NVDLA_CDP_DP_data_fifo_wr_limit : 7'd0;
`else
// No Global Override for Emulation
//
assign wr_limit_muxed = 7'd0;
`endif // EMU_FIFO_CFG
`else // !EMU
`ifdef SYNTH_LEVEL1_COMPILE
// No Override for GCS Compiles
//
assign wr_limit_muxed = 7'd0;
`else
`ifdef SYNTHESIS
// No Override for RTL Synthesis
//
assign wr_limit_muxed = 7'd0;
`else
// RTL Simulation Plusarg Override
// VCS coverage off
reg wr_limit_override;
reg [6:0] wr_limit_override_value;
assign wr_limit_muxed = wr_limit_override ? wr_limit_override_value : 7'd0;
`ifdef NV_ARCHPRO
event reinit;
initial begin
    $display("fifogen reinit initial block %m");
    -> reinit;
end
`endif
`ifdef NV_ARCHPRO
always @( reinit ) begin
`else
initial begin
`endif
    wr_limit_override = 0;
    wr_limit_override_value = 0; // to keep viva happy with dangles
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_data_fifo_wr_limit" ) ) begin
        wr_limit_override = 1;
        $value$plusargs( "NV_NVDLA_CDP_DP_data_fifo_wr_limit=%d", wr_limit_override_value);
    end
end
// VCS coverage on
`endif
`endif
`endif
// Random Write-Side Stalling
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
// VCS coverage off
// leda W339 OFF -- Non synthesizable operator
// leda W372 OFF -- Undefined PLI task
// leda W373 OFF -- Undefined PLI function
// leda W599 OFF -- This construct is not supported by Synopsys
// leda W430 OFF -- Initial statement is not synthesizable
// leda W182 OFF -- Illegal statement for synthesis
// leda W639 OFF -- For synthesis, operands of a division or modulo operation need to be constants
// leda DCVER_274_NV OFF -- This system task is not supported by DC
integer stall_probability; // prob of stalling
integer stall_cycles_min; // min cycles to stall
integer stall_cycles_max; // max cycles to stall
integer stall_cycles_left; // stall cycles left
`ifdef NV_ARCHPRO
always @( reinit ) begin
`else
initial begin
`endif
    stall_probability = 0; // no stalling by default
    stall_cycles_min = 1;
    stall_cycles_max = 10;
`ifdef NO_PLI
`else
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_data_fifo_fifo_stall_probability" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_DP_data_fifo_fifo_stall_probability=%d", stall_probability);
    end else if ( $test$plusargs( "default_fifo_stall_probability" ) ) begin
        $value$plusargs( "default_fifo_stall_probability=%d", stall_probability);
    end
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_data_fifo_fifo_stall_cycles_min" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_DP_data_fifo_fifo_stall_cycles_min=%d", stall_cycles_min);
    end else if ( $test$plusargs( "default_fifo_stall_cycles_min" ) ) begin
        $value$plusargs( "default_fifo_stall_cycles_min=%d", stall_cycles_min);
    end
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_data_fifo_fifo_stall_cycles_max" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_DP_data_fifo_fifo_stall_cycles_max=%d", stall_cycles_max);
    end else if ( $test$plusargs( "default_fifo_stall_cycles_max" ) ) begin
        $value$plusargs( "default_fifo_stall_cycles_max=%d", stall_cycles_max);
    end
`endif
    if ( stall_cycles_min < 1 ) begin
        stall_cycles_min = 1;
    end
    if ( stall_cycles_min > stall_cycles_max ) begin
        stall_cycles_max = stall_cycles_min;
    end
end
`ifdef NO_PLI
`else
// randomization globals
`ifdef SIMTOP_RANDOMIZE_STALLS
  always @( `SIMTOP_RANDOMIZE_STALLS.global_stall_event ) begin
    if ( ! $test$plusargs( "NV_NVDLA_CDP_DP_data_fifo_fifo_stall_probability" ) ) stall_probability = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_probability;
    if ( ! $test$plusargs( "NV_NVDLA_CDP_DP_data_fifo_fifo_stall_cycles_min" ) ) stall_cycles_min = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_cycles_min;
    if ( ! $test$plusargs( "NV_NVDLA_CDP_DP_data_fifo_fifo_stall_cycles_max" ) ) stall_cycles_max = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_cycles_max;
  end
`endif
`endif
always @( negedge nvdla_core_clk or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        stall_cycles_left <= 0;
    end else begin
`ifdef NO_PLI
            stall_cycles_left <= 0;
`else
            if ( data_wr_pvld && !(!data_wr_prdy)
                 && stall_probability != 0 ) begin
                if ( prand_inst0(1, 100) <= stall_probability ) begin
                    stall_cycles_left <= prand_inst1(stall_cycles_min, stall_cycles_max);
                end else if ( stall_cycles_left !== 0 ) begin
                    stall_cycles_left <= stall_cycles_left - 1;
                end
            end else if ( stall_cycles_left !== 0 ) begin
                stall_cycles_left <= stall_cycles_left - 1;
            end
`endif
    end
end
assign wr_pause_rand = (stall_cycles_left !== 0) ;
// VCS coverage on
`endif
`endif
// synopsys translate_on
// VCS coverage on
// leda W339 ON
// leda W372 ON
// leda W373 ON
// leda W599 ON
// leda W430 ON
// leda W182 ON
// leda W639 ON
// leda DCVER_274_NV ON
//
// Histogram of fifo depth (from write side's perspective)
//
// NOTE: it will reference `SIMTOP.perfmon_enabled, so that
// has to at least be defined, though not initialized.
// tbgen testbenches have it already and various
// ways to turn it on and off.
//
`ifdef PERFMON_HISTOGRAM
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
perfmon_histogram perfmon (
      .clk ( nvdla_core_clk )
    , .max ( {25'd0, (wr_limit_reg == 7'd0) ? 7'd80 : wr_limit_reg} )
    , .curr ( {25'd0, data_wr_count} )
    );
`endif
`endif
// synopsys translate_on
`endif
// spyglass disable_block W164a W164b W116 W484 W504
`ifdef SPYGLASS
`else
`ifdef FV_ASSERT_ON
`else
// synopsys translate_off
`endif
`ifdef ASSERT_ON
`ifdef SPYGLASS
wire disable_assert_plusarg = 1'b0;
`else
`ifdef FV_ASSERT_ON
wire disable_assert_plusarg = 1'b0;
`else
wire disable_assert_plusarg = $test$plusargs("DISABLE_NESS_FLOW_ASSERTIONS");
`endif
`endif
wire assert_enabled = 1'b1 && !disable_assert_plusarg;
`endif
`ifdef FV_ASSERT_ON
`else
// synopsys translate_on
`endif
`ifdef ASSERT_ON
//synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
always @(assert_enabled) begin
    if ( assert_enabled === 1'b0 ) begin
        $display("Asserts are disabled for %m");
    end
end
`endif
`endif
//synopsys translate_on
`endif
`endif
// spyglass enable_block W164a W164b W116 W484 W504
//The NV_BLKBOX_SRC0 module is only present when the FIFOGEN_MODULE_SEARCH
// define is set. This is to aid fifogen team search for fifogen fifo
// instance and module names in a given design.
`ifdef FIFOGEN_MODULE_SEARCH
NV_BLKBOX_SRC0 dummy_breadcrumb_fifogen_blkbox (.Y());
`endif
// spyglass enable_block W401 -- clock is not input to module
// synopsys dc_script_begin
// set_boundary_optimization find(design, "NV_NVDLA_CDP_DP_data_fifo") true
// synopsys dc_script_end
`ifdef SYNTH_LEVEL1_COMPILE
`else
`ifdef SYNTHESIS
`else
`ifdef PRAND_VERILOG
// Only verilog needs any local variables
reg [47:0] prand_local_seed0;
reg prand_initialized0;
reg prand_no_rollpli0;
`endif
`endif
`endif
function [31:0] prand_inst0;
//VCS coverage off
    input [31:0] min;
    input [31:0] max;
    reg [32:0] diff;
    begin
`ifdef SYNTH_LEVEL1_COMPILE
        prand_inst0 = min;
`else
`ifdef SYNTHESIS
        prand_inst0 = min;
`else
`ifdef PRAND_VERILOG
        if (prand_initialized0 !== 1'b1) begin
            prand_no_rollpli0 = $test$plusargs("NO_ROLLPLI");
            if (!prand_no_rollpli0)
                prand_local_seed0 = {$prand_get_seed(0), 16'b0};
            prand_initialized0 = 1'b1;
        end
        if (prand_no_rollpli0) begin
            prand_inst0 = min;
        end else begin
            diff = max - min + 1;
            prand_inst0 = min + prand_local_seed0[47:16] % diff;
// magic numbers taken from Java's random class (same as lrand48)
            prand_local_seed0 = prand_local_seed0 * 48'h5deece66d + 48'd11;
        end
`else
`ifdef PRAND_OFF
        prand_inst0 = min;
`else
        prand_inst0 = $RollPLI(min, max, "auto");
`endif
`endif
`endif
`endif
    end
//VCS coverage on
endfunction
`ifdef SYNTH_LEVEL1_COMPILE
`else
`ifdef SYNTHESIS
`else
`ifdef PRAND_VERILOG
// Only verilog needs any local variables
reg [47:0] prand_local_seed1;
reg prand_initialized1;
reg prand_no_rollpli1;
`endif
`endif
`endif
function [31:0] prand_inst1;
//VCS coverage off
    input [31:0] min;
    input [31:0] max;
    reg [32:0] diff;
    begin
`ifdef SYNTH_LEVEL1_COMPILE
        prand_inst1 = min;
`else
`ifdef SYNTHESIS
        prand_inst1 = min;
`else
`ifdef PRAND_VERILOG
        if (prand_initialized1 !== 1'b1) begin
            prand_no_rollpli1 = $test$plusargs("NO_ROLLPLI");
            if (!prand_no_rollpli1)
                prand_local_seed1 = {$prand_get_seed(1), 16'b0};
            prand_initialized1 = 1'b1;
        end
        if (prand_no_rollpli1) begin
            prand_inst1 = min;
        end else begin
            diff = max - min + 1;
            prand_inst1 = min + prand_local_seed1[47:16] % diff;
// magic numbers taken from Java's random class (same as lrand48)
            prand_local_seed1 = prand_local_seed1 * 48'h5deece66d + 48'd11;
        end
`else
`ifdef PRAND_OFF
        prand_inst1 = min;
`else
        prand_inst1 = $RollPLI(min, max, "auto");
`endif
`endif
`endif
`endif
    end
//VCS coverage on
endfunction
endmodule // NV_NVDLA_CDP_DP_data_fifo
//
// AUTOMATICALLY GENERATED -- DO NOT EDIT OR CHECK IN
//
// /home/nvtools/engr/2017/03/11_05_00_06/nvtools/scripts/fifogen
// fifogen -input_config_yaml ../../../../../../../socd/ip_chip_tools/1.0/defs/public/fifogen/golden/tlit5/fifogen.yml -no_make_ram -no_make_ram -stdout -m NV_NVDLA_CDP_DP_sumpd_fifo -clk_name nvdla_core_clk -reset_name nvdla_core_rstn -wr_pipebus sumpd_wr -rd_pipebus sumpd_rd -rd_reg -ram_bypass -d 60 -w 21 -ram ra2 [Chosen ram type: ra2 - ramgen_generic (user specified, thus no other ram type is allowed)]
// chip config vars: assertion_module_prefix=nv_ strict_synchronizers=1 strict_synchronizers_use_lib_cells=1 strict_synchronizers_use_tm_lib_cells=1 strict_sync_randomizer=1 assertion_message_prefix=FIFOGEN_ASSERTION allow_async_fifola=0 ignore_ramgen_fifola_variant=1 uses_p_SSYNC=0 uses_prand=1 uses_rammake_inc=1 use_x_or_0=1 force_wr_reg_gated=1 no_force_reset=1 no_timescale=1 no_pli_ifdef=1 requires_full_throughput=1 ram_auto_ff_bits_cutoff=16 ram_auto_ff_width_cutoff=2 ram_auto_ff_width_cutoff_max_depth=32 ram_auto_ff_depth_cutoff=-1 ram_auto_ff_no_la2_depth_cutoff=5 ram_auto_la2_width_cutoff=8 ram_auto_la2_width_cutoff_max_depth=56 ram_auto_la2_depth_cutoff=16 flopram_emu_model=1 dslp_single_clamp_port=1 dslp_clamp_port=1 slp_single_clamp_port=1 slp_clamp_port=1 master_clk_gated=1 clk_gate_module=NV_CLK_gate_power redundant_timing_flops=0 hot_reset_async_force_ports_and_loopback=1 ram_sleep_en_width=1 async_cdc_reg_id=NV_AFIFO_ rd_reg_default_for_async=1 async_ram_instance_prefix=NV_ASYNC_RAM_ allow_rd_busy_reg_warning=0 do_dft_xelim_gating=1 add_dft_xelim_wr_clkgate=1 add_dft_xelim_rd_clkgate=1
//
// leda B_3208_NV OFF -- Unequal length LHS and RHS in assignment
// leda B_1405 OFF -- 2 asynchronous resets in this unit detected
`define FORCE_CONTENTION_ASSERTION_RESET_ACTIVE 1'b1
`include "simulate_x_tick.vh"
module NV_NVDLA_CDP_DP_sumpd_fifo (
      nvdla_core_clk
    , nvdla_core_rstn
    , sumpd_wr_prdy
    , sumpd_wr_pvld
`ifdef FV_RAND_WR_PAUSE
    , sumpd_wr_pause
`endif
    , sumpd_wr_pd
    , sumpd_rd_prdy
    , sumpd_rd_pvld
    , sumpd_rd_pd
    , pwrbus_ram_pd
    );
// spyglass disable_block W401 -- clock is not input to module
input nvdla_core_clk;
input nvdla_core_rstn;
output sumpd_wr_prdy;
input sumpd_wr_pvld;
`ifdef FV_RAND_WR_PAUSE
input sumpd_wr_pause;
`endif
input [20:0] sumpd_wr_pd;
input sumpd_rd_prdy;
output sumpd_rd_pvld;
output [20:0] sumpd_rd_pd;
input [31:0] pwrbus_ram_pd;
// Master Clock Gating (SLCG)
//
// We gate the clock(s) when idle or stalled.
// This allows us to turn off numerous miscellaneous flops
// that don't get gated during synthesis for one reason or another.
//
// We gate write side and read side separately.
// If the fifo is synchronous, we also gate the ram separately, but if
// -master_clk_gated_unified or -status_reg/-status_logic_reg is specified,
// then we use one clk gate for write, ram, and read.
//
wire nvdla_core_clk_mgated_enable; // assigned by code at end of this module
wire nvdla_core_clk_mgated; // used only in synchronous fifos
NV_CLK_gate_power nvdla_core_clk_mgate( .clk(nvdla_core_clk), .reset_(nvdla_core_rstn), .clk_en(nvdla_core_clk_mgated_enable), .clk_gated(nvdla_core_clk_mgated) );
//
// WRITE SIDE
//
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
wire wr_pause_rand; // random stalling
`endif
`endif
// synopsys translate_on
wire wr_reserving;
reg sumpd_wr_busy_int; // copy for internal use
assign sumpd_wr_prdy = !sumpd_wr_busy_int;
assign wr_reserving = sumpd_wr_pvld && !sumpd_wr_busy_int; // reserving write space?
wire wr_popping; // fwd: write side sees pop?
reg [5:0] sumpd_wr_count; // write-side count
wire [5:0] wr_count_next_wr_popping = wr_reserving ? sumpd_wr_count : (sumpd_wr_count - 1'd1); // spyglass disable W164a W484
wire [5:0] wr_count_next_no_wr_popping = wr_reserving ? (sumpd_wr_count + 1'd1) : sumpd_wr_count; // spyglass disable W164a W484
wire [5:0] wr_count_next = wr_popping ? wr_count_next_wr_popping :
                                               wr_count_next_no_wr_popping;
wire wr_count_next_no_wr_popping_is_60 = ( wr_count_next_no_wr_popping == 6'd60 );
wire wr_count_next_is_60 = wr_popping ? 1'b0 :
                                          wr_count_next_no_wr_popping_is_60;
wire [5:0] wr_limit_muxed; // muxed with simulation/emulation overrides
wire [5:0] wr_limit_reg = wr_limit_muxed;
`ifdef FV_RAND_WR_PAUSE
// VCS coverage off
wire sumpd_wr_busy_next = wr_count_next_is_60 || // busy next cycle?
                          (wr_limit_reg != 6'd0 && // check sumpd_wr_limit if != 0
                           wr_count_next >= wr_limit_reg) || sumpd_wr_pause;
// VCS coverage on
`else
// VCS coverage off
wire sumpd_wr_busy_next = wr_count_next_is_60 || // busy next cycle?
                          (wr_limit_reg != 6'd0 && // check sumpd_wr_limit if != 0
                           wr_count_next >= wr_limit_reg)
// synopsys translate_off
  `ifndef SYNTH_LEVEL1_COMPILE
  `ifndef SYNTHESIS
 || wr_pause_rand
  `endif
  `endif
// synopsys translate_on
;
// VCS coverage on
`endif
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        sumpd_wr_busy_int <= 1'b0;
        sumpd_wr_count <= 6'd0;
    end else begin
 sumpd_wr_busy_int <= sumpd_wr_busy_next;
 if ( wr_reserving ^ wr_popping ) begin
     sumpd_wr_count <= wr_count_next;
        end
//synopsys translate_off
            else if ( !(wr_reserving ^ wr_popping) ) begin
        end else begin
            sumpd_wr_count <= {6{`x_or_0}};
        end
//synopsys translate_on
    end
end
wire wr_pushing = wr_reserving; // data pushed same cycle as sumpd_wr_pvld
//
// RAM
//
reg [5:0] sumpd_wr_adr; // current write address
wire [5:0] sumpd_rd_adr_p; // read address to use for ram
wire [20:0] sumpd_rd_pd_p_byp_ram; // read data directly out of ram
wire rd_enable;
wire ore;
wire do_bypass;
wire comb_bypass;
wire rd_popping;
wire [31 : 0] pwrbus_ram_pd;
// Adding parameter for fifogen to disable wr/rd contention assertion in ramgen.
// Fifogen handles this by ignoring the data on the ram data out for that cycle.
nv_ram_rwsthp_60x21 #(`FORCE_CONTENTION_ASSERTION_RESET_ACTIVE) ram (
      .clk ( nvdla_core_clk )
    , .pwrbus_ram_pd ( pwrbus_ram_pd )
    , .wa ( sumpd_wr_adr )
    , .we ( wr_pushing && (sumpd_wr_count != 6'd0 || !rd_popping) )
    , .di ( sumpd_wr_pd )
    , .ra ( sumpd_rd_adr_p )
    , .re ( (do_bypass && wr_pushing) || rd_enable )
    , .dout ( sumpd_rd_pd_p_byp_ram )
    , .byp_sel ( comb_bypass )
    , .dbyp ( sumpd_wr_pd[20:0] )
    , .ore ( ore )
    );
// next sumpd_wr_adr if wr_pushing=1
wire [5:0] wr_adr_next = (sumpd_wr_adr == 6'd59) ? 6'd0 : (sumpd_wr_adr + 1'd1); // spyglass disable W484
// spyglass disable_block W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        sumpd_wr_adr <= 6'd0;
    end else begin
        if ( wr_pushing ) begin
            sumpd_wr_adr <= wr_adr_next;
        end
//synopsys translate_off
            else if ( !(wr_pushing) ) begin
        end else begin
            sumpd_wr_adr <= {6{`x_or_0}};
        end
//synopsys translate_on
    end
end
// spyglass enable_block W484
reg [5:0] sumpd_rd_adr; // current read address
// next read address
wire [5:0] rd_adr_next = (sumpd_rd_adr == 6'd59) ? 6'd0 : (sumpd_rd_adr + 1'd1); // spyglass disable W484
assign sumpd_rd_adr_p = rd_popping ? rd_adr_next : sumpd_rd_adr; // for ram
// spyglass disable_block W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        sumpd_rd_adr <= 6'd0;
    end else begin
        if ( rd_popping ) begin
     sumpd_rd_adr <= rd_adr_next;
        end
//synopsys translate_off
            else if ( !rd_popping ) begin
        end else begin
            sumpd_rd_adr <= {6{`x_or_0}};
        end
//synopsys translate_on
    end
end
// spyglass enable_block W484
assign do_bypass = (rd_popping ? (sumpd_wr_adr == rd_adr_next) : (sumpd_wr_adr == sumpd_rd_adr));
wire [20:0] sumpd_rd_pd_p_byp = sumpd_rd_pd_p_byp_ram;
//
// Combinatorial Bypass
//
// If we're pushing an empty fifo, mux the wr_data directly.
//
assign comb_bypass = sumpd_wr_count == 0;
wire [20:0] sumpd_rd_pd_p = sumpd_rd_pd_p_byp;
//
// SYNCHRONOUS BOUNDARY
//
assign wr_popping = rd_popping; // let it be seen immediately
wire rd_pushing = wr_pushing; // let it be seen immediately
//
// READ SIDE
//
wire sumpd_rd_pvld_p; // data out of fifo is valid
reg sumpd_rd_pvld_int; // internal copy of sumpd_rd_pvld
assign sumpd_rd_pvld = sumpd_rd_pvld_int;
assign rd_popping = sumpd_rd_pvld_p && !(sumpd_rd_pvld_int && !sumpd_rd_prdy);
reg [5:0] sumpd_rd_count_p; // read-side fifo count
// spyglass disable_block W164a W484
wire [5:0] rd_count_p_next_rd_popping = rd_pushing ? sumpd_rd_count_p :
                                                                (sumpd_rd_count_p - 1'd1);
wire [5:0] rd_count_p_next_no_rd_popping = rd_pushing ? (sumpd_rd_count_p + 1'd1) :
                                                                    sumpd_rd_count_p;
// spyglass enable_block W164a W484
wire [5:0] rd_count_p_next = rd_popping ? rd_count_p_next_rd_popping :
                                                     rd_count_p_next_no_rd_popping;
wire rd_count_p_next_rd_popping_not_0 = rd_count_p_next_rd_popping != 0;
wire rd_count_p_next_no_rd_popping_not_0 = rd_count_p_next_no_rd_popping != 0;
wire rd_count_p_next_not_0 = rd_popping ? rd_count_p_next_rd_popping_not_0 :
                                              rd_count_p_next_no_rd_popping_not_0;
assign sumpd_rd_pvld_p = sumpd_rd_count_p != 0 || rd_pushing;
assign rd_enable = ((rd_count_p_next_not_0) && ((~sumpd_rd_pvld_p) || rd_popping)); // anytime data's there and not stalled
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        sumpd_rd_count_p <= 6'd0;
    end else begin
        if ( rd_pushing || rd_popping ) begin
     sumpd_rd_count_p <= rd_count_p_next;
        end
//synopsys translate_off
            else if ( !(rd_pushing || rd_popping ) ) begin
        end else begin
            sumpd_rd_count_p <= {6{`x_or_0}};
        end
//synopsys translate_on
    end
end
wire rd_req_next = (sumpd_rd_pvld_p || (sumpd_rd_pvld_int && !sumpd_rd_prdy)) ;
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        sumpd_rd_pvld_int <= 1'b0;
    end else begin
        sumpd_rd_pvld_int <= rd_req_next;
    end
end
assign sumpd_rd_pd = sumpd_rd_pd_p;
assign ore = rd_popping;
// Master Clock Gating (SLCG) Enables
//
// plusarg for disabling this stuff:
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
reg master_clk_gating_disabled; initial master_clk_gating_disabled = $test$plusargs( "fifogen_disable_master_clk_gating" ) != 0;
`endif
`endif
// synopsys translate_on
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
reg wr_pause_rand_dly;
always @( posedge nvdla_core_clk or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        wr_pause_rand_dly <= 1'b0;
    end else begin
        wr_pause_rand_dly <= wr_pause_rand;
    end
end
`endif
`endif
// synopsys translate_on
assign nvdla_core_clk_mgated_enable = ((wr_reserving || wr_pushing || wr_popping || (sumpd_wr_pvld && !sumpd_wr_busy_int) || (sumpd_wr_busy_int != sumpd_wr_busy_next)) || (rd_pushing || rd_popping || (sumpd_rd_pvld_int && sumpd_rd_prdy)))
                               `ifdef FIFOGEN_MASTER_CLK_GATING_DISABLED
                               || 1'b1
                               `endif
// synopsys translate_off
          `ifndef SYNTH_LEVEL1_COMPILE
          `ifndef SYNTHESIS
                               || master_clk_gating_disabled || (wr_pause_rand != wr_pause_rand_dly)
          `endif
          `endif
// synopsys translate_on
                               ;
// Simulation and Emulation Overrides of wr_limit(s)
//
`ifdef EMU
`ifdef EMU_FIFO_CFG
// Emulation Global Config Override
//
assign wr_limit_muxed = `EMU_FIFO_CFG.NV_NVDLA_CDP_DP_sumpd_fifo_wr_limit_override ? `EMU_FIFO_CFG.NV_NVDLA_CDP_DP_sumpd_fifo_wr_limit : 6'd0;
`else
// No Global Override for Emulation
//
assign wr_limit_muxed = 6'd0;
`endif // EMU_FIFO_CFG
`else // !EMU
`ifdef SYNTH_LEVEL1_COMPILE
// No Override for GCS Compiles
//
assign wr_limit_muxed = 6'd0;
`else
`ifdef SYNTHESIS
// No Override for RTL Synthesis
//
assign wr_limit_muxed = 6'd0;
`else
// RTL Simulation Plusarg Override
// VCS coverage off
reg wr_limit_override;
reg [5:0] wr_limit_override_value;
assign wr_limit_muxed = wr_limit_override ? wr_limit_override_value : 6'd0;
`ifdef NV_ARCHPRO
event reinit;
initial begin
    $display("fifogen reinit initial block %m");
    -> reinit;
end
`endif
`ifdef NV_ARCHPRO
always @( reinit ) begin
`else
initial begin
`endif
    wr_limit_override = 0;
    wr_limit_override_value = 0; // to keep viva happy with dangles
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_wr_limit" ) ) begin
        wr_limit_override = 1;
        $value$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_wr_limit=%d", wr_limit_override_value);
    end
end
// VCS coverage on
`endif
`endif
`endif
// Random Write-Side Stalling
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
// VCS coverage off
// leda W339 OFF -- Non synthesizable operator
// leda W372 OFF -- Undefined PLI task
// leda W373 OFF -- Undefined PLI function
// leda W599 OFF -- This construct is not supported by Synopsys
// leda W430 OFF -- Initial statement is not synthesizable
// leda W182 OFF -- Illegal statement for synthesis
// leda W639 OFF -- For synthesis, operands of a division or modulo operation need to be constants
// leda DCVER_274_NV OFF -- This system task is not supported by DC
integer stall_probability; // prob of stalling
integer stall_cycles_min; // min cycles to stall
integer stall_cycles_max; // max cycles to stall
integer stall_cycles_left; // stall cycles left
`ifdef NV_ARCHPRO
always @( reinit ) begin
`else
initial begin
`endif
    stall_probability = 0; // no stalling by default
    stall_cycles_min = 1;
    stall_cycles_max = 10;
`ifdef NO_PLI
`else
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_fifo_stall_probability" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_fifo_stall_probability=%d", stall_probability);
    end else if ( $test$plusargs( "default_fifo_stall_probability" ) ) begin
        $value$plusargs( "default_fifo_stall_probability=%d", stall_probability);
    end
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_fifo_stall_cycles_min" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_fifo_stall_cycles_min=%d", stall_cycles_min);
    end else if ( $test$plusargs( "default_fifo_stall_cycles_min" ) ) begin
        $value$plusargs( "default_fifo_stall_cycles_min=%d", stall_cycles_min);
    end
    if ( $test$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_fifo_stall_cycles_max" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_fifo_stall_cycles_max=%d", stall_cycles_max);
    end else if ( $test$plusargs( "default_fifo_stall_cycles_max" ) ) begin
        $value$plusargs( "default_fifo_stall_cycles_max=%d", stall_cycles_max);
    end
`endif
    if ( stall_cycles_min < 1 ) begin
        stall_cycles_min = 1;
    end
    if ( stall_cycles_min > stall_cycles_max ) begin
        stall_cycles_max = stall_cycles_min;
    end
end
`ifdef NO_PLI
`else
// randomization globals
`ifdef SIMTOP_RANDOMIZE_STALLS
  always @( `SIMTOP_RANDOMIZE_STALLS.global_stall_event ) begin
    if ( ! $test$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_fifo_stall_probability" ) ) stall_probability = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_probability;
    if ( ! $test$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_fifo_stall_cycles_min" ) ) stall_cycles_min = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_cycles_min;
    if ( ! $test$plusargs( "NV_NVDLA_CDP_DP_sumpd_fifo_fifo_stall_cycles_max" ) ) stall_cycles_max = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_cycles_max;
  end
`endif
`endif
always @( negedge nvdla_core_clk or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        stall_cycles_left <= 0;
    end else begin
`ifdef NO_PLI
            stall_cycles_left <= 0;
`else
            if ( sumpd_wr_pvld && !(!sumpd_wr_prdy)
                 && stall_probability != 0 ) begin
                if ( prand_inst2(1, 100) <= stall_probability ) begin
                    stall_cycles_left <= prand_inst3(stall_cycles_min, stall_cycles_max);
                end else if ( stall_cycles_left !== 0 ) begin
                    stall_cycles_left <= stall_cycles_left - 1;
                end
            end else if ( stall_cycles_left !== 0 ) begin
                stall_cycles_left <= stall_cycles_left - 1;
            end
`endif
    end
end
assign wr_pause_rand = (stall_cycles_left !== 0) ;
// VCS coverage on
`endif
`endif
// synopsys translate_on
// VCS coverage on
// leda W339 ON
// leda W372 ON
// leda W373 ON
// leda W599 ON
// leda W430 ON
// leda W182 ON
// leda W639 ON
// leda DCVER_274_NV ON
//
// Histogram of fifo depth (from write side's perspective)
//
// NOTE: it will reference `SIMTOP.perfmon_enabled, so that
// has to at least be defined, though not initialized.
// tbgen testbenches have it already and various
// ways to turn it on and off.
//
`ifdef PERFMON_HISTOGRAM
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
perfmon_histogram perfmon (
      .clk ( nvdla_core_clk )
    , .max ( {26'd0, (wr_limit_reg == 6'd0) ? 6'd60 : wr_limit_reg} )
    , .curr ( {26'd0, sumpd_wr_count} )
    );
`endif
`endif
// synopsys translate_on
`endif
// spyglass disable_block W164a W164b W116 W484 W504
`ifdef SPYGLASS
`else
`ifdef FV_ASSERT_ON
`else
// synopsys translate_off
`endif
`ifdef ASSERT_ON
`ifdef SPYGLASS
wire disable_assert_plusarg = 1'b0;
`else
`ifdef FV_ASSERT_ON
wire disable_assert_plusarg = 1'b0;
`else
wire disable_assert_plusarg = $test$plusargs("DISABLE_NESS_FLOW_ASSERTIONS");
`endif
`endif
wire assert_enabled = 1'b1 && !disable_assert_plusarg;
`endif
`ifdef FV_ASSERT_ON
`else
// synopsys translate_on
`endif
`ifdef ASSERT_ON
//synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
always @(assert_enabled) begin
    if ( assert_enabled === 1'b0 ) begin
        $display("Asserts are disabled for %m");
    end
end
`endif
`endif
//synopsys translate_on
`endif
`endif
// spyglass enable_block W164a W164b W116 W484 W504
//The NV_BLKBOX_SRC0 module is only present when the FIFOGEN_MODULE_SEARCH
// define is set. This is to aid fifogen team search for fifogen fifo
// instance and module names in a given design.
`ifdef FIFOGEN_MODULE_SEARCH
NV_BLKBOX_SRC0 dummy_breadcrumb_fifogen_blkbox (.Y());
`endif
// spyglass enable_block W401 -- clock is not input to module
// synopsys dc_script_begin
// set_boundary_optimization find(design, "NV_NVDLA_CDP_DP_sumpd_fifo") true
// synopsys dc_script_end
`ifdef SYNTH_LEVEL1_COMPILE
`else
`ifdef SYNTHESIS
`else
`ifdef PRAND_VERILOG
// Only verilog needs any local variables
reg [47:0] prand_local_seed2;
reg prand_initialized2;
reg prand_no_rollpli2;
`endif
`endif
`endif
function [31:0] prand_inst2;
//VCS coverage off
    input [31:0] min;
    input [31:0] max;
    reg [32:0] diff;
    begin
`ifdef SYNTH_LEVEL1_COMPILE
        prand_inst2 = min;
`else
`ifdef SYNTHESIS
        prand_inst2 = min;
`else
`ifdef PRAND_VERILOG
        if (prand_initialized2 !== 1'b1) begin
            prand_no_rollpli2 = $test$plusargs("NO_ROLLPLI");
            if (!prand_no_rollpli2)
                prand_local_seed2 = {$prand_get_seed(2), 16'b0};
            prand_initialized2 = 1'b1;
        end
        if (prand_no_rollpli2) begin
            prand_inst2 = min;
        end else begin
            diff = max - min + 1;
            prand_inst2 = min + prand_local_seed2[47:16] % diff;
// magic numbers taken from Java's random class (same as lrand48)
            prand_local_seed2 = prand_local_seed2 * 48'h5deece66d + 48'd11;
        end
`else
`ifdef PRAND_OFF
        prand_inst2 = min;
`else
        prand_inst2 = $RollPLI(min, max, "auto");
`endif
`endif
`endif
`endif
    end
//VCS coverage on
endfunction
`ifdef SYNTH_LEVEL1_COMPILE
`else
`ifdef SYNTHESIS
`else
`ifdef PRAND_VERILOG
// Only verilog needs any local variables
reg [47:0] prand_local_seed3;
reg prand_initialized3;
reg prand_no_rollpli3;
`endif
`endif
`endif
function [31:0] prand_inst3;
//VCS coverage off
    input [31:0] min;
    input [31:0] max;
    reg [32:0] diff;
    begin
`ifdef SYNTH_LEVEL1_COMPILE
        prand_inst3 = min;
`else
`ifdef SYNTHESIS
        prand_inst3 = min;
`else
`ifdef PRAND_VERILOG
        if (prand_initialized3 !== 1'b1) begin
            prand_no_rollpli3 = $test$plusargs("NO_ROLLPLI");
            if (!prand_no_rollpli3)
                prand_local_seed3 = {$prand_get_seed(3), 16'b0};
            prand_initialized3 = 1'b1;
        end
        if (prand_no_rollpli3) begin
            prand_inst3 = min;
        end else begin
            diff = max - min + 1;
            prand_inst3 = min + prand_local_seed3[47:16] % diff;
// magic numbers taken from Java's random class (same as lrand48)
            prand_local_seed3 = prand_local_seed3 * 48'h5deece66d + 48'd11;
        end
`else
`ifdef PRAND_OFF
        prand_inst3 = min;
`else
        prand_inst3 = $RollPLI(min, max, "auto");
`endif
`endif
`endif
`endif
    end
//VCS coverage on
endfunction
endmodule // NV_NVDLA_CDP_DP_sumpd_fifo
