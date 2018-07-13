// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CDP_RDMA_eg.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CDP_define.h
///////////////////////////////////////////////////
`include "simulate_x_tick.vh"
module NV_NVDLA_CDP_RDMA_eg (
   nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
  ,cdp_rdma2dp_ready //|< i
  ,cq_rd_pd //|< i
  ,cq_rd_pvld //|< i
  ,mcif2cdp_rd_rsp_pd //|< i
  ,mcif2cdp_rd_rsp_valid //|< i
  ,pwrbus_ram_pd //|< i
  ,reg2dp_channel //|< i
  ,reg2dp_input_data //|< i
  ,reg2dp_src_ram_type //|< i
  ,cdp2mcif_rd_cdt_lat_fifo_pop //|> o
  ,cdp_rdma2dp_pd //|> o
  ,cdp_rdma2dp_valid //|> o
  ,cq_rd_prdy //|> o
  ,dp2reg_done //|> o
  ,eg2ig_done //|> o
  ,mcif2cdp_rd_rsp_ready //|> o
  );
/////////////////////////////////////////////////////////////////////////////////////////
input [4:0] reg2dp_channel;
input [1:0] reg2dp_input_data;
input reg2dp_src_ram_type;
output dp2reg_done;
output eg2ig_done;
input nvdla_core_clk;
input nvdla_core_rstn;
input mcif2cdp_rd_rsp_valid; /* data valid */
output mcif2cdp_rd_rsp_ready; /* data return handshake */
//: my $k=64;
//: my $jx = 8*8; ##atomic_m BW
//: my $M = $k/$jx; ##atomic_m number per dma transaction
//: print "input [${k}+${M}-1:0] mcif2cdp_rd_rsp_pd;  \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
input [64+1-1:0] mcif2cdp_rd_rsp_pd;  

//| eperl: generated_end (DO NOT EDIT ABOVE)
output cdp2mcif_rd_cdt_lat_fifo_pop;
output cdp_rdma2dp_valid; /* data valid */
input cdp_rdma2dp_ready; /* data return handshake */
output [1*8 +22:0] cdp_rdma2dp_pd;
input cq_rd_pvld; /* data valid */
output cq_rd_prdy; /* data return handshake */
input [6:0] cq_rd_pd;
input [31:0] pwrbus_ram_pd;
/////////////////////////////////////////////////////////////////////////////////////////
//: my $Mnum = 64/8/8;
//: my $Mnumbit= int( log($Mnum)/log(2) );
//: if($Mnum > 1){
//: print " reg      [${Mnumbit}-1:0] beat_align; \n";
//: } else{
//: print " reg                       beat_align; \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
 reg                       beat_align; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
reg [3:0] beat_cnt;
reg cdp2mcif_rd_cdt_lat_fifo_pop;
wire [1*8 +22:0] cdp_rdma2dp_pd;
//reg cdp_rdma2dp_valid_f;
wire dp2reg_done_flag;
reg [1*8 -1:0] dp_data;
wire dp_rdy;
reg dp_vld;
wire eg2ig_done_flag;
reg [1 -1:0] invalid_flag;
reg is_last_c;
reg is_last_h;
reg is_last_w;
reg [3:0] tran_cnt;
reg [3:0] width_cnt;
wire [4:0] ele_in_channel;
wire cv_dma_rd_rsp_vld;
wire cv_int_rd_rsp_ready;
wire cv_int_rd_rsp_valid;
wire dma_rd_cdt_lat_fifo_pop;
wire dma_rd_rsp_rdy;
wire dma_rd_rsp_type;
wire dma_rd_rsp_vld;
wire dp2reg_done_f;
wire dp_b_sync;
wire [7:0] dp_invalid;
wire dp_last_c;
wire dp_last_h;
wire dp_last_w;
wire [1*8 +22:0] dp_pd;
wire [2:0] dp_pos_c;
wire [3:0] dp_pos_w;
wire [3:0] dp_width;
wire eg2ig_done_f;
wire [7:0] fifo_rd_pvld;
wire [5:0] fifo_sel;
wire ig2eg_align;
wire ig2eg_last_c;
wire ig2eg_last_h;
wire ig2eg_last_w;
wire [2:0] ig2eg_width;
wire is_b_sync;
wire is_cube_end;
wire is_last_beat;
wire is_last_tran;
//: my $k=64;
//: my $jx = 8*8; ##atomic_m BW
//: my $M = $k/$jx; ##atomic_m number per dma transaction
//: print "wire [${k}+${M}-1:0] cv_dma_rd_rsp_pd;  \n";
//: print "wire [${k}+${M}-1:0] cv_int_rd_rsp_pd;  \n";
//: print "wire [${k}+${M}-1:0] cvif2cdp_rd_rsp_pd_d0;  \n";
//: print "wire [${k}+${M}-1:0] dma_rd_rsp_pd;  \n";
//: print "wire [${k}+${M}-1:0] lat_rd_pd;  \n";
//: print "wire [${k}+${M}-1:0] mc_dma_rd_rsp_pd;  \n";
//: print "wire [${k}+${M}-1:0] mc_int_rd_rsp_pd;  \n";
//: print "wire [${k}+${M}-1:0] mcif2cdp_rd_rsp_pd_d0;  \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
wire [64+1-1:0] cv_dma_rd_rsp_pd;  
wire [64+1-1:0] cv_int_rd_rsp_pd;  
wire [64+1-1:0] cvif2cdp_rd_rsp_pd_d0;  
wire [64+1-1:0] dma_rd_rsp_pd;  
wire [64+1-1:0] lat_rd_pd;  
wire [64+1-1:0] mc_dma_rd_rsp_pd;  
wire [64+1-1:0] mc_int_rd_rsp_pd;  
wire [64+1-1:0] mcif2cdp_rd_rsp_pd_d0;  

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [64 -1:0] lat_rd_data;
//: my $jx = 8*8; ##atomic_m BW
//: my $M = 64/$jx; ##atomic_m number per dma transaction
//: print "wire     [${M}-1:0] lat_rd_mask; \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
wire     [1-1:0] lat_rd_mask; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire lat_rd_prdy;
wire lat_rd_pvld;
wire mc_dma_rd_rsp_vld;
wire mc_int_rd_rsp_ready;
wire mc_int_rd_rsp_valid;
wire mcif2cdp_rd_rsp_ready_d0;
wire mcif2cdp_rd_rsp_valid_d0;
wire [5:0] rest_channel;
//: my $kx = 1*8; ##throughput BW
//: my $jx = 8*8; ##atomic_m BW
//: my $k = 64/$kx; ##total fifo num
//: my $M = 64/$jx; ##atomic_m number per dma transaction
//: my $F = $k/$M; ##how many fifo contribute to one atomic_m
//: foreach my $m (0..$k-1) {
//: print qq(
//: wire [${kx}-1:0] ro${m}_rd_pd;
//: wire ro${m}_rd_prdy;
//: wire ro${m}_rd_pvld;
//: wire [${kx}-1:0] ro${m}_wr_pd;
//: );
//: }
//: foreach my $m (0..$M-1) {
//: print qq(
//: wire ro${m}_wr_pvld;
//: wire ro${m}_wr_rdy;
//: );
//: }
//: foreach my $i (0..$M-1) {
//: print qq(
//: wire [${F}-1:0] ro${i}_wr_rdys;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [8-1:0] ro0_rd_pd;
wire ro0_rd_prdy;
wire ro0_rd_pvld;
wire [8-1:0] ro0_wr_pd;

wire [8-1:0] ro1_rd_pd;
wire ro1_rd_prdy;
wire ro1_rd_pvld;
wire [8-1:0] ro1_wr_pd;

wire [8-1:0] ro2_rd_pd;
wire ro2_rd_prdy;
wire ro2_rd_pvld;
wire [8-1:0] ro2_wr_pd;

wire [8-1:0] ro3_rd_pd;
wire ro3_rd_prdy;
wire ro3_rd_pvld;
wire [8-1:0] ro3_wr_pd;

wire [8-1:0] ro4_rd_pd;
wire ro4_rd_prdy;
wire ro4_rd_pvld;
wire [8-1:0] ro4_wr_pd;

wire [8-1:0] ro5_rd_pd;
wire ro5_rd_prdy;
wire ro5_rd_pvld;
wire [8-1:0] ro5_wr_pd;

wire [8-1:0] ro6_rd_pd;
wire ro6_rd_prdy;
wire ro6_rd_pvld;
wire [8-1:0] ro6_wr_pd;

wire [8-1:0] ro7_rd_pd;
wire ro7_rd_prdy;
wire ro7_rd_pvld;
wire [8-1:0] ro7_wr_pd;

wire ro0_wr_pvld;
wire ro0_wr_rdy;

wire [8-1:0] ro0_wr_rdys;

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire tran_cnt_idle;
wire [3:0] tran_num;
wire tran_rdy;
wire tran_vld;
///////////////////////////////////////////////////////////////////////////
//==============
// DMA Interface
//==============
NV_NVDLA_DMAIF_rdrsp NV_NVDLA_PDP_RDMA_rdrsp(
   .nvdla_core_clk (nvdla_core_clk )
  ,.nvdla_core_rstn (nvdla_core_rstn )
  ,.mcif_rd_rsp_pd (mcif2cdp_rd_rsp_pd )
  ,.mcif_rd_rsp_valid (mcif2cdp_rd_rsp_valid )
  ,.mcif_rd_rsp_ready (mcif2cdp_rd_rsp_ready )
  ,.dmaif_rd_rsp_pd (dma_rd_rsp_pd )
  ,.dmaif_rd_rsp_pvld (dma_rd_rsp_vld )
  ,.dmaif_rd_rsp_prdy (dma_rd_rsp_rdy )
);
///////////////////////////////////////////////////////////////////////////
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    cdp2mcif_rd_cdt_lat_fifo_pop <= 1'b0;
  end else begin
  cdp2mcif_rd_cdt_lat_fifo_pop <= dma_rd_cdt_lat_fifo_pop & (dma_rd_rsp_type == 1'b1);
  end
end
assign dma_rd_rsp_type = reg2dp_src_ram_type;
//==============
// Latency FIFO to buffer return DATA
//==============
NV_NVDLA_CDP_RDMA_lat_fifo u_lat_fifo (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< i
  ,.lat_wr_prdy (dma_rd_rsp_rdy) //|> w
  ,.lat_wr_pvld (dma_rd_rsp_vld) //|< w
  ,.lat_wr_pd (dma_rd_rsp_pd) //|< w
  ,.lat_rd_prdy (lat_rd_prdy) //|< w
  ,.lat_rd_pvld (lat_rd_pvld) //|> w
  ,.lat_rd_pd (lat_rd_pd) //|> w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  );
assign lat_rd_data[64 -1:0] = lat_rd_pd[64 -1:0];
assign lat_rd_mask[1 -1:0] = lat_rd_pd[65 -1: 64];
assign dma_rd_cdt_lat_fifo_pop = lat_rd_pvld & lat_rd_prdy;
//==============
// Re-Order FIFO to send data to CDP-core in DP order(read NVDLA PP uARCH for details)
//==============
assign lat_rd_prdy = lat_rd_pvld
//: my $msk = 1;
//: foreach my $k (0..$msk-1) {
//: print " & (~lat_rd_mask[$k] | (lat_rd_mask[$k] & ro${k}_wr_rdy))  \n";
//: }
//: print " ; \n";
//:
//: my $tp = 1*8; ## throughput
//: my $atmm = 8*8; ## atomic_m
//: my $M = 64/$atmm; ## atomic_m number per dma transaction
//: my $F = $atmm/$tp; ## how many fifo contribute to one atomic_m
//:
//:
//: foreach my $i (0..$M-1){
//: print "    assign ro${i}_wr_pvld = lat_rd_pvld & (lat_rd_mask[${i}] & ro${i}_wr_rdy)  \n";
//: foreach my $s (0..$msk-1) {
//: if($s != $i) {
//: print "        & ( ~lat_rd_mask[${s}] | (lat_rd_mask[${s}] & ro${s}_wr_rdy))  \n";
//: }
//: }
//: print " ;  \n";
//: }
//:
//:
//: foreach my $m (0..$M-1) {
//: print "   assign ro${m}_wr_rdy = &ro${m}_wr_rdys;  \n";
//: foreach my $f (0..$F-1) {
//: my $r = $F * $m + $f;
//: print " assign ro${r}_wr_pd  = lat_rd_data[${tp}*${r}+${tp}-1:${tp}*${r}];  \n";
//: print " NV_NVDLA_CDP_RDMA_ro_fifo u_ro${r}_fifo(     \n";
//: print "  .nvdla_core_clk      (nvdla_core_clk)       \n";
//: print " ,.nvdla_core_rstn     (nvdla_core_rstn)      \n";
//: print " ,.ro_wr_prdy          (ro${m}_wr_rdys[$f])   \n";
//: print " ,.ro_wr_pvld          (ro${m}_wr_pvld)       \n";
//: print " ,.ro_wr_pd            (ro${r}_wr_pd)         \n";
//: print " ,.ro_rd_prdy          (ro${r}_rd_prdy)       \n";
//: print " ,.ro_rd_pvld          (ro${r}_rd_pvld)       \n";
//: print " ,.ro_rd_pd            (ro${r}_rd_pd)         \n";
//: print " ,.pwrbus_ram_pd       (pwrbus_ram_pd[31:0])  \n";
//: print " ); \n";
//: }
//: }
//:
//:
//: my $Fbit = int( log($F)/log(2) );
//: if($M > 1) {
//: print " assign fifo_sel[5:0] = tran_cnt_idle ? 6'd0 : ((6'd${F}-tran_cnt) + {beat_align,{${Fbit}{1'b0}}}); \n";
//: } else {
//: print " assign fifo_sel[5:0] = tran_cnt_idle ? 6'd0 : ((6'd${F}-tran_cnt)); \n";
//: }
//:
//:
//: print " // DATA MUX out \n";
//: print " always @(*) begin \n";
//: print " case(fifo_sel) \n";
//: foreach my $m (0..$M-1) {
//: foreach my $f (0..$F-1) {
//: my $r = $F * $m + $f;
//: print "   6'd$r: begin \n";
//: print "       dp_vld = ro${r}_rd_pvld & (~tran_cnt_idle); \n";
//: print "   end \n";
//: }
//: }
//: print "default: begin \n";
//: print "       dp_vld = 1'b0; \n";
//: print "end \n";
//: print "endcase \n";
//: print "end \n";
//:
//:
//: foreach my $m (0..$M-1) {
//: foreach my $f (0..$F-1) {
//: my $r = $F * $m + $f;
//: print " assign ro${r}_rd_prdy = dp_rdy & (fifo_sel==$r) & (~tran_cnt_idle);  \n";
//: }
//: }
//: my $kx = 1*8; ##throughput BW
//: my $jx = 8*8; ##atomic_m BW
//: my $k = 64/$kx; ##total fifo num
//: my $M = 64/$jx; ##atomic_m number per dma trans
//: my $F = $k/$M; ##how many fifo contribute to one atomic_m
//: print "always @(*)      \n";
//: print "begin      \n";
//: print "case(fifo_sel)     \n";
//: foreach my $r (0..$k-1) {
//: print "   6'd$r: begin      \n";
//: print "               dp_data  = ro${r}_rd_pd[${kx}-1:0];      \n";
//: print "   end      \n";
//: }
//: print "default: dp_data = {${kx}{1'b0}};      \n";
//: print "endcase      \n";
//: print "end      \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
 & (~lat_rd_mask[0] | (lat_rd_mask[0] & ro0_wr_rdy))  
 ; 
    assign ro0_wr_pvld = lat_rd_pvld & (lat_rd_mask[0] & ro0_wr_rdy)  
 ;  
   assign ro0_wr_rdy = &ro0_wr_rdys;  
 assign ro0_wr_pd  = lat_rd_data[8*0+8-1:8*0];  
 NV_NVDLA_CDP_RDMA_ro_fifo u_ro0_fifo(     
  .nvdla_core_clk      (nvdla_core_clk)       
 ,.nvdla_core_rstn     (nvdla_core_rstn)      
 ,.ro_wr_prdy          (ro0_wr_rdys[0])   
 ,.ro_wr_pvld          (ro0_wr_pvld)       
 ,.ro_wr_pd            (ro0_wr_pd)         
 ,.ro_rd_prdy          (ro0_rd_prdy)       
 ,.ro_rd_pvld          (ro0_rd_pvld)       
 ,.ro_rd_pd            (ro0_rd_pd)         
 ,.pwrbus_ram_pd       (pwrbus_ram_pd[31:0])  
 ); 
 assign ro1_wr_pd  = lat_rd_data[8*1+8-1:8*1];  
 NV_NVDLA_CDP_RDMA_ro_fifo u_ro1_fifo(     
  .nvdla_core_clk      (nvdla_core_clk)       
 ,.nvdla_core_rstn     (nvdla_core_rstn)      
 ,.ro_wr_prdy          (ro0_wr_rdys[1])   
 ,.ro_wr_pvld          (ro0_wr_pvld)       
 ,.ro_wr_pd            (ro1_wr_pd)         
 ,.ro_rd_prdy          (ro1_rd_prdy)       
 ,.ro_rd_pvld          (ro1_rd_pvld)       
 ,.ro_rd_pd            (ro1_rd_pd)         
 ,.pwrbus_ram_pd       (pwrbus_ram_pd[31:0])  
 ); 
 assign ro2_wr_pd  = lat_rd_data[8*2+8-1:8*2];  
 NV_NVDLA_CDP_RDMA_ro_fifo u_ro2_fifo(     
  .nvdla_core_clk      (nvdla_core_clk)       
 ,.nvdla_core_rstn     (nvdla_core_rstn)      
 ,.ro_wr_prdy          (ro0_wr_rdys[2])   
 ,.ro_wr_pvld          (ro0_wr_pvld)       
 ,.ro_wr_pd            (ro2_wr_pd)         
 ,.ro_rd_prdy          (ro2_rd_prdy)       
 ,.ro_rd_pvld          (ro2_rd_pvld)       
 ,.ro_rd_pd            (ro2_rd_pd)         
 ,.pwrbus_ram_pd       (pwrbus_ram_pd[31:0])  
 ); 
 assign ro3_wr_pd  = lat_rd_data[8*3+8-1:8*3];  
 NV_NVDLA_CDP_RDMA_ro_fifo u_ro3_fifo(     
  .nvdla_core_clk      (nvdla_core_clk)       
 ,.nvdla_core_rstn     (nvdla_core_rstn)      
 ,.ro_wr_prdy          (ro0_wr_rdys[3])   
 ,.ro_wr_pvld          (ro0_wr_pvld)       
 ,.ro_wr_pd            (ro3_wr_pd)         
 ,.ro_rd_prdy          (ro3_rd_prdy)       
 ,.ro_rd_pvld          (ro3_rd_pvld)       
 ,.ro_rd_pd            (ro3_rd_pd)         
 ,.pwrbus_ram_pd       (pwrbus_ram_pd[31:0])  
 ); 
 assign ro4_wr_pd  = lat_rd_data[8*4+8-1:8*4];  
 NV_NVDLA_CDP_RDMA_ro_fifo u_ro4_fifo(     
  .nvdla_core_clk      (nvdla_core_clk)       
 ,.nvdla_core_rstn     (nvdla_core_rstn)      
 ,.ro_wr_prdy          (ro0_wr_rdys[4])   
 ,.ro_wr_pvld          (ro0_wr_pvld)       
 ,.ro_wr_pd            (ro4_wr_pd)         
 ,.ro_rd_prdy          (ro4_rd_prdy)       
 ,.ro_rd_pvld          (ro4_rd_pvld)       
 ,.ro_rd_pd            (ro4_rd_pd)         
 ,.pwrbus_ram_pd       (pwrbus_ram_pd[31:0])  
 ); 
 assign ro5_wr_pd  = lat_rd_data[8*5+8-1:8*5];  
 NV_NVDLA_CDP_RDMA_ro_fifo u_ro5_fifo(     
  .nvdla_core_clk      (nvdla_core_clk)       
 ,.nvdla_core_rstn     (nvdla_core_rstn)      
 ,.ro_wr_prdy          (ro0_wr_rdys[5])   
 ,.ro_wr_pvld          (ro0_wr_pvld)       
 ,.ro_wr_pd            (ro5_wr_pd)         
 ,.ro_rd_prdy          (ro5_rd_prdy)       
 ,.ro_rd_pvld          (ro5_rd_pvld)       
 ,.ro_rd_pd            (ro5_rd_pd)         
 ,.pwrbus_ram_pd       (pwrbus_ram_pd[31:0])  
 ); 
 assign ro6_wr_pd  = lat_rd_data[8*6+8-1:8*6];  
 NV_NVDLA_CDP_RDMA_ro_fifo u_ro6_fifo(     
  .nvdla_core_clk      (nvdla_core_clk)       
 ,.nvdla_core_rstn     (nvdla_core_rstn)      
 ,.ro_wr_prdy          (ro0_wr_rdys[6])   
 ,.ro_wr_pvld          (ro0_wr_pvld)       
 ,.ro_wr_pd            (ro6_wr_pd)         
 ,.ro_rd_prdy          (ro6_rd_prdy)       
 ,.ro_rd_pvld          (ro6_rd_pvld)       
 ,.ro_rd_pd            (ro6_rd_pd)         
 ,.pwrbus_ram_pd       (pwrbus_ram_pd[31:0])  
 ); 
 assign ro7_wr_pd  = lat_rd_data[8*7+8-1:8*7];  
 NV_NVDLA_CDP_RDMA_ro_fifo u_ro7_fifo(     
  .nvdla_core_clk      (nvdla_core_clk)       
 ,.nvdla_core_rstn     (nvdla_core_rstn)      
 ,.ro_wr_prdy          (ro0_wr_rdys[7])   
 ,.ro_wr_pvld          (ro0_wr_pvld)       
 ,.ro_wr_pd            (ro7_wr_pd)         
 ,.ro_rd_prdy          (ro7_rd_prdy)       
 ,.ro_rd_pvld          (ro7_rd_pvld)       
 ,.ro_rd_pd            (ro7_rd_pd)         
 ,.pwrbus_ram_pd       (pwrbus_ram_pd[31:0])  
 ); 
 assign fifo_sel[5:0] = tran_cnt_idle ? 6'd0 : ((6'd8-tran_cnt)); 
 // DATA MUX out 
 always @(*) begin 
 case(fifo_sel) 
   6'd0: begin 
       dp_vld = ro0_rd_pvld & (~tran_cnt_idle); 
   end 
   6'd1: begin 
       dp_vld = ro1_rd_pvld & (~tran_cnt_idle); 
   end 
   6'd2: begin 
       dp_vld = ro2_rd_pvld & (~tran_cnt_idle); 
   end 
   6'd3: begin 
       dp_vld = ro3_rd_pvld & (~tran_cnt_idle); 
   end 
   6'd4: begin 
       dp_vld = ro4_rd_pvld & (~tran_cnt_idle); 
   end 
   6'd5: begin 
       dp_vld = ro5_rd_pvld & (~tran_cnt_idle); 
   end 
   6'd6: begin 
       dp_vld = ro6_rd_pvld & (~tran_cnt_idle); 
   end 
   6'd7: begin 
       dp_vld = ro7_rd_pvld & (~tran_cnt_idle); 
   end 
default: begin 
       dp_vld = 1'b0; 
end 
endcase 
end 
 assign ro0_rd_prdy = dp_rdy & (fifo_sel==0) & (~tran_cnt_idle);  
 assign ro1_rd_prdy = dp_rdy & (fifo_sel==1) & (~tran_cnt_idle);  
 assign ro2_rd_prdy = dp_rdy & (fifo_sel==2) & (~tran_cnt_idle);  
 assign ro3_rd_prdy = dp_rdy & (fifo_sel==3) & (~tran_cnt_idle);  
 assign ro4_rd_prdy = dp_rdy & (fifo_sel==4) & (~tran_cnt_idle);  
 assign ro5_rd_prdy = dp_rdy & (fifo_sel==5) & (~tran_cnt_idle);  
 assign ro6_rd_prdy = dp_rdy & (fifo_sel==6) & (~tran_cnt_idle);  
 assign ro7_rd_prdy = dp_rdy & (fifo_sel==7) & (~tran_cnt_idle);  
always @(*)      
begin      
case(fifo_sel)     
   6'd0: begin      
               dp_data  = ro0_rd_pd[8-1:0];      
   end      
   6'd1: begin      
               dp_data  = ro1_rd_pd[8-1:0];      
   end      
   6'd2: begin      
               dp_data  = ro2_rd_pd[8-1:0];      
   end      
   6'd3: begin      
               dp_data  = ro3_rd_pd[8-1:0];      
   end      
   6'd4: begin      
               dp_data  = ro4_rd_pd[8-1:0];      
   end      
   6'd5: begin      
               dp_data  = ro5_rd_pd[8-1:0];      
   end      
   6'd6: begin      
               dp_data  = ro6_rd_pd[8-1:0];      
   end      
   6'd7: begin      
               dp_data  = ro7_rd_pd[8-1:0];      
   end      
default: dp_data = {8{1'b0}};      
endcase      
end      

//| eperl: generated_end (DO NOT EDIT ABOVE)
//////////////////////
//replacd by 0 value in invalid position
//////////////////////
//: my $tp = 1;
//: my $atmm = 8;
//: my $tt_fifo_num = 64/8/$tp;
//: my $M = 64/8/$atmm;
//: my $F = $atmm/$tp;
//:
//: my $tpbw = int(log($tp)/log(2));
//: my $atmmbw = int(log($atmm)/log(2));
//: print " assign ele_in_channel = {{(5-${atmmbw}){1'b0}},reg2dp_channel[${atmmbw}-1:0]};   \n";
//: print " assign rest_channel=(6'd${F}-ele_in_channel[${atmmbw}-1:${tpbw}]);  \n";
//:
//: ## if(1 == 8) {
//: print " always @(*)  begin \n";
//: print " case(fifo_sel)  \n";
//: foreach my $r (0..$tt_fifo_num-1) {
//: print "   6'd$r: begin  \n";
//: print "       if(is_last_c) begin  \n";
//: print "           if({2'd0,tran_cnt} < rest_channel)  \n";
//: print "               invalid_flag  = {${tp}{1'b1}};  \n";
//: print "           else if({2'd0,tran_cnt} > rest_channel)  \n";
//: print "               invalid_flag  = {${tp}{1'b0}};  \n";
//: print "           else  \n";
//:
//: if($tp == 1) {
//: print "               invalid_flag  = {${tp}{1'b0}};  \n";
//: } else {
//: print "               invalid_flag = {${tp}{ele_in_channel[${tpbw}-1:0]==${tpbw}'d0}} & {{(${tp}-1){1'b1}},1'b0}  \n";
//: foreach my $i (0..$tp-2) {
//: my $j = $i + 1;
//: print "             | {${tp}{ele_in_channel[${tpbw}-1:0]==${tpbw}'d${j}}} & {{(${tp}-${j}){1'b1}},${j}'b0}  \n";
//: }
//: print "     ;  \n";
//: }
//: print "       end else  \n";
//: print "           invalid_flag  = {${tp}{1'b0}};  \n";
//: print "   end  \n";
//: }
//: print "default: invalid_flag = {${tp}{1'b0}};  \n";
//: print "endcase  \n";
//: print "end  \n";
//: ## }
//: ## elsif(1 == 1) {
//: ## print " always @(*)  \n";
//: ## print " begin  \n";
//: ## print " case(fifo_sel)  \n";
//: ## foreach my $r (0..$tt_fifo_num-1) {
//: ## print "   6'd$r: begin  \n";
//: ## print "       if(is_last_c) begin  \n";
//: ## print "           if(tran_cnt <= rest_channel)
//: ## print "               invalid_flag  = 1'h1;  \n";
//: ## print "           else  \n";
//: ## print "               invalid_flag  = 1'h0;  \n";
//: ## print "       end else  \n";
//: ## print "           invalid_flag  = 1'h0;  \n";
//: ## print "   end  \n";
//: ## }
//: ## print "default: invalid_flag = 1'h0;  \n";
//: ## print "endcase  \n";
//: ## print "end;  \n";
//: ## }
//| eperl: generated_beg (DO NOT EDIT BELOW)
 assign ele_in_channel = {{(5-3){1'b0}},reg2dp_channel[3-1:0]};   
 assign rest_channel=(6'd8-ele_in_channel[3-1:0]);  
 always @(*)  begin 
 case(fifo_sel)  
   6'd0: begin  
       if(is_last_c) begin  
           if({2'd0,tran_cnt} < rest_channel)  
               invalid_flag  = {1{1'b1}};  
           else if({2'd0,tran_cnt} > rest_channel)  
               invalid_flag  = {1{1'b0}};  
           else  
               invalid_flag  = {1{1'b0}};  
       end else  
           invalid_flag  = {1{1'b0}};  
   end  
   6'd1: begin  
       if(is_last_c) begin  
           if({2'd0,tran_cnt} < rest_channel)  
               invalid_flag  = {1{1'b1}};  
           else if({2'd0,tran_cnt} > rest_channel)  
               invalid_flag  = {1{1'b0}};  
           else  
               invalid_flag  = {1{1'b0}};  
       end else  
           invalid_flag  = {1{1'b0}};  
   end  
   6'd2: begin  
       if(is_last_c) begin  
           if({2'd0,tran_cnt} < rest_channel)  
               invalid_flag  = {1{1'b1}};  
           else if({2'd0,tran_cnt} > rest_channel)  
               invalid_flag  = {1{1'b0}};  
           else  
               invalid_flag  = {1{1'b0}};  
       end else  
           invalid_flag  = {1{1'b0}};  
   end  
   6'd3: begin  
       if(is_last_c) begin  
           if({2'd0,tran_cnt} < rest_channel)  
               invalid_flag  = {1{1'b1}};  
           else if({2'd0,tran_cnt} > rest_channel)  
               invalid_flag  = {1{1'b0}};  
           else  
               invalid_flag  = {1{1'b0}};  
       end else  
           invalid_flag  = {1{1'b0}};  
   end  
   6'd4: begin  
       if(is_last_c) begin  
           if({2'd0,tran_cnt} < rest_channel)  
               invalid_flag  = {1{1'b1}};  
           else if({2'd0,tran_cnt} > rest_channel)  
               invalid_flag  = {1{1'b0}};  
           else  
               invalid_flag  = {1{1'b0}};  
       end else  
           invalid_flag  = {1{1'b0}};  
   end  
   6'd5: begin  
       if(is_last_c) begin  
           if({2'd0,tran_cnt} < rest_channel)  
               invalid_flag  = {1{1'b1}};  
           else if({2'd0,tran_cnt} > rest_channel)  
               invalid_flag  = {1{1'b0}};  
           else  
               invalid_flag  = {1{1'b0}};  
       end else  
           invalid_flag  = {1{1'b0}};  
   end  
   6'd6: begin  
       if(is_last_c) begin  
           if({2'd0,tran_cnt} < rest_channel)  
               invalid_flag  = {1{1'b1}};  
           else if({2'd0,tran_cnt} > rest_channel)  
               invalid_flag  = {1{1'b0}};  
           else  
               invalid_flag  = {1{1'b0}};  
       end else  
           invalid_flag  = {1{1'b0}};  
   end  
   6'd7: begin  
       if(is_last_c) begin  
           if({2'd0,tran_cnt} < rest_channel)  
               invalid_flag  = {1{1'b1}};  
           else if({2'd0,tran_cnt} > rest_channel)  
               invalid_flag  = {1{1'b0}};  
           else  
               invalid_flag  = {1{1'b0}};  
       end else  
           invalid_flag  = {1{1'b0}};  
   end  
default: invalid_flag = {1{1'b0}};  
endcase  
end  

//| eperl: generated_end (DO NOT EDIT ABOVE)
//==============
// Return Data Counting
//==============
// unpack from rd_pd, which should be the same order as wr_pd
assign cq_rd_prdy = tran_rdy;
assign tran_vld = cq_rd_pvld;
assign ig2eg_width[2:0] = cq_rd_pd[2:0];
assign ig2eg_align = cq_rd_pd[3];
assign ig2eg_last_w = cq_rd_pd[4];
assign ig2eg_last_h = cq_rd_pd[5];
assign ig2eg_last_c = cq_rd_pd[6];
assign tran_num[3:0] = ig2eg_width + 1;
assign tran_cnt_idle = (tran_cnt==0);
assign is_last_tran = (tran_cnt==1);
assign is_last_beat = (beat_cnt==1);
//: my $kx = 1*8; ##throughput BW
//: my $jx = 8*8; ##atomic_m BW
//: my $k = 64/$kx; ##total fifo num
//: my $M = 64/$jx; ##atomic_m number per dma trans
//: my $F = $k/$M; ##how many fifo contribute to one atomic_m
//: foreach my $r (0..$k-1) {
//: print " assign fifo_rd_pvld[$r] = (fifo_sel==${r}) & ro${r}_rd_pvld;  \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
 assign fifo_rd_pvld[0] = (fifo_sel==0) & ro0_rd_pvld;  
 assign fifo_rd_pvld[1] = (fifo_sel==1) & ro1_rd_pvld;  
 assign fifo_rd_pvld[2] = (fifo_sel==2) & ro2_rd_pvld;  
 assign fifo_rd_pvld[3] = (fifo_sel==3) & ro3_rd_pvld;  
 assign fifo_rd_pvld[4] = (fifo_sel==4) & ro4_rd_pvld;  
 assign fifo_rd_pvld[5] = (fifo_sel==5) & ro5_rd_pvld;  
 assign fifo_rd_pvld[6] = (fifo_sel==6) & ro6_rd_pvld;  
 assign fifo_rd_pvld[7] = (fifo_sel==7) & ro7_rd_pvld;  

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire tran_accept;
//the first cq_rd_prdy should start when fifo have data to be read
assign tran_rdy = (tran_cnt_idle & (|fifo_rd_pvld)) || (is_last_tran & is_last_beat & dp_rdy);
assign tran_accept = tran_vld & tran_rdy;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    tran_cnt <= 0;
    beat_cnt <= 0;
  end else begin
    if(is_cube_end & tran_rdy) begin
            tran_cnt <= 0;
            beat_cnt <= 0;
    end else if(tran_rdy) begin
        if (tran_vld) begin
//: my $tp = 1*8;
//: my $atmm = 8*8;
//: my $F = $atmm/$tp;
//: print " tran_cnt    <= 4'd${F}; \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
 tran_cnt    <= 4'd8; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
            beat_cnt <= tran_num;
        end else begin
            tran_cnt <= 0;
            beat_cnt <= 0;
        end
    end else if (dp_rdy & (|fifo_rd_pvld)) begin
        beat_cnt <= (beat_cnt==1)? width_cnt : beat_cnt - 1;
        if (is_last_beat) begin
            tran_cnt <= tran_cnt - 1;
        end
    end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    beat_align <= 0;
  end else begin
    if (tran_rdy) begin
        beat_align <= 0;
    end else if (dp_rdy & |fifo_rd_pvld) begin
        if (is_last_beat) begin
            beat_align <= 0;
        end else begin
            beat_align <= beat_align + 1'b1;
        end
    end
  end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    width_cnt <= {4{1'b0}};
  end else begin
  if ((tran_accept) == 1'b1) begin
    width_cnt <= tran_num;
// VCS coverage off
  end else if ((tran_accept) == 1'b0) begin
  end else begin
    width_cnt <= 'bx; // spyglass disable STARC-2.10.1.6 W443 NoWidthInBasedNum-ML -- (Constant containing x or z used, Based number `bx contains an X, Width specification missing for based number)
// VCS coverage on
  end
  end
end
`ifdef SPYGLASS_ASSERT_ON
`else
// spyglass disable_block NoWidthInBasedNum-ML
// spyglass disable_block STARC-2.10.3.2a
// spyglass disable_block STARC05-2.1.3.1
// spyglass disable_block STARC-2.1.4.6
// spyglass disable_block W116
// spyglass disable_block W154
// spyglass disable_block W239
// spyglass disable_block W362
// spyglass disable_block WRN_58
// spyglass disable_block WRN_61
`endif // SPYGLASS_ASSERT_ON
`ifdef ASSERT_ON
`ifdef FV_ASSERT_ON
`define ASSERT_RESET nvdla_core_rstn
`else
`ifdef SYNTHESIS
`define ASSERT_RESET nvdla_core_rstn
`else
`ifdef ASSERT_OFF_RESET_IS_X
`define ASSERT_RESET ((1'bx === nvdla_core_rstn) ? 1'b0 : nvdla_core_rstn)
`else
`define ASSERT_RESET ((1'bx === nvdla_core_rstn) ? 1'b1 : nvdla_core_rstn)
`endif // ASSERT_OFF_RESET_IS_X
`endif // SYNTHESIS
`endif // FV_ASSERT_ON
`ifndef SYNTHESIS
// VCS coverage off
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_2x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(tran_accept))); // spyglass disable W504 SelfDeterminedExpr-ML 
// VCS coverage on
`endif
`undef ASSERT_RESET
`endif // ASSERT_ON
`ifdef SPYGLASS_ASSERT_ON
`else
// spyglass enable_block NoWidthInBasedNum-ML
// spyglass enable_block STARC-2.10.3.2a
// spyglass enable_block STARC05-2.1.3.1
// spyglass enable_block STARC-2.1.4.6
// spyglass enable_block W116
// spyglass enable_block W154
// spyglass enable_block W239
// spyglass enable_block W362
// spyglass enable_block WRN_58
// spyglass enable_block WRN_61
`endif // SPYGLASS_ASSERT_ON
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
  if (!nvdla_core_rstn) begin
    is_last_w <= 1'b0;
    is_last_h <= 1'b0;
    is_last_c <= 1'b0;
  end else begin
    if(is_cube_end & tran_rdy) begin
        is_last_w <= 1'b0;
        is_last_h <= 1'b0;
        is_last_c <= 1'b0;
    end else if(tran_accept) begin
        is_last_w <= ig2eg_last_w;
        is_last_h <= ig2eg_last_h;
        is_last_c <= ig2eg_last_c;
    end
  end
end
assign is_b_sync = is_last_beat;
assign dp_pos_w[3:0] = width_cnt - beat_cnt; //spyglass disable W484
assign dp_width[3:0] = width_cnt; //spyglass disable W484
wire mon_dp_pos_c;
//: my $tp = 1*8;
//: my $atmm = 8*8;
//: my $F = $atmm/$tp;
//: print " assign {mon_dp_pos_c,dp_pos_c[2:0]} = 4'd${F} - tran_cnt; \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
 assign {mon_dp_pos_c,dp_pos_c[2:0]} = 4'd8 - tran_cnt; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign dp_b_sync = is_b_sync;
assign dp_last_w = is_last_w;
assign dp_last_h = is_last_h;
assign dp_last_c = is_last_c;
assign is_cube_end = is_last_w & is_last_h & is_last_c;
assign dp2reg_done_f = is_cube_end & tran_rdy;
assign eg2ig_done_f = is_cube_end & tran_rdy;
//==============
// OUTPUT PACK and PIPE: To Data Processor
//==============
// PD Pack
assign dp_invalid = {{(8-1){1'b0}},invalid_flag};
// PKT_PACK_WIRE( cdp_rdma2dp , dp_ , dp_pd )
assign dp_pd[1*8 -1:0] = dp_data[1*8 -1:0];
assign dp_pd[1*8 +3:1*8] = dp_pos_w[3:0];
assign dp_pd[1*8 +7:1*8 +4] = dp_width[3:0];
assign dp_pd[1*8 +10:1*8 +8] = dp_pos_c[2:0];
assign dp_pd[1*8 +11] = dp_b_sync ;
assign dp_pd[1*8 +12] = dp_last_w ;
assign dp_pd[1*8 +13] = dp_last_h ;
assign dp_pd[1*8 +14] = dp_last_c ;
assign dp_pd[1*8 +22:1*8 +15] = dp_invalid[7:0];
////////::pipe -bc -is {cdp_rdma2dp_pd,dp2reg_done_flag,eg2ig_done_flag} (cdp_rdma2dp_valid_f,cdp_rdma2dp_ready) <= {dp_pd,dp2reg_done_f,eg2ig_done_f} (dp_vld, dp_rdy);
wire [1*8 +25-1:0] cdp_rdma2dp_pd_i;
assign cdp_rdma2dp_pd_i = {dp_pd,dp2reg_done_f,eg2ig_done_f};
//assign {cdp_rdma2dp_pd,dp2reg_done_flag,eg2ig_done_flag} = cdp_rdma2dp_pd_o;
//: my $k=1*8 +25;
//: &eperl::pipe(" -wid $k -is -do cdp_rdma2dp_pd_o -vo cdp_rdma2dp_valid_f -ri cdp_rdma2dp_ready -di cdp_rdma2dp_pd_i  -vi dp_vld -ro dp_rdy_f ");
//| eperl: generated_beg (DO NOT EDIT BELOW)
// Reg
reg dp_rdy_f;
reg skid_flop_dp_rdy_f;
reg skid_flop_dp_vld;
reg [33-1:0] skid_flop_cdp_rdma2dp_pd_i;
reg pipe_skid_dp_vld;
reg [33-1:0] pipe_skid_cdp_rdma2dp_pd_i;
// Wire
wire skid_dp_vld;
wire [33-1:0] skid_cdp_rdma2dp_pd_i;
wire skid_dp_rdy_f;
wire pipe_skid_dp_rdy_f;
wire cdp_rdma2dp_valid_f;
wire [33-1:0] cdp_rdma2dp_pd_o;
// Code
// SKID READY
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dp_rdy_f <= 1'b1;
       skid_flop_dp_rdy_f <= 1'b1;
   end else begin
       dp_rdy_f <= skid_dp_rdy_f;
       skid_flop_dp_rdy_f <= skid_dp_rdy_f;
   end
end

// SKID VALID
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
    if (!nvdla_core_rstn) begin
        skid_flop_dp_vld <= 1'b0;
    end else begin
        if (skid_flop_dp_rdy_f) begin
            skid_flop_dp_vld <= dp_vld;
        end
   end
end
assign skid_dp_vld = (skid_flop_dp_rdy_f) ? dp_vld : skid_flop_dp_vld;

// SKID DATA
always @(posedge nvdla_core_clk) begin
    if (skid_flop_dp_rdy_f & dp_vld) begin
        skid_flop_cdp_rdma2dp_pd_i[33-1:0] <= cdp_rdma2dp_pd_i[33-1:0];
    end
end
assign skid_cdp_rdma2dp_pd_i[33-1:0] = (skid_flop_dp_rdy_f) ? cdp_rdma2dp_pd_i[33-1:0] : skid_flop_cdp_rdma2dp_pd_i[33-1:0];


// PIPE READY
assign skid_dp_rdy_f = pipe_skid_dp_rdy_f || !pipe_skid_dp_vld;

// PIPE VALID
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
    if (!nvdla_core_rstn) begin
        pipe_skid_dp_vld <= 1'b0;
    end else begin
        if (skid_dp_rdy_f) begin
            pipe_skid_dp_vld <= skid_dp_vld;
        end
    end
end

// PIPE DATA
always @(posedge nvdla_core_clk) begin
    if (skid_dp_rdy_f && skid_dp_vld) begin
        pipe_skid_cdp_rdma2dp_pd_i[33-1:0] <= skid_cdp_rdma2dp_pd_i[33-1:0];
    end
end


// PIPE OUTPUT
assign pipe_skid_dp_rdy_f = cdp_rdma2dp_ready;
assign cdp_rdma2dp_valid_f = pipe_skid_dp_vld;
assign cdp_rdma2dp_pd_o = pipe_skid_cdp_rdma2dp_pd_i;

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign dp_rdy = dp_rdy_f;
assign {cdp_rdma2dp_pd,dp2reg_done_flag,eg2ig_done_flag} = cdp_rdma2dp_pd_o;
assign cdp_rdma2dp_valid = cdp_rdma2dp_valid_f;
assign dp2reg_done = (cdp_rdma2dp_valid_f & cdp_rdma2dp_ready & dp2reg_done_flag) ? 1'b1 : 1'b0;
assign eg2ig_done = (cdp_rdma2dp_valid_f & cdp_rdma2dp_ready & eg2ig_done_flag) ? 1'b1 : 1'b0;
//==============
//function points
//==============
//VCS coverage off
`ifndef DISABLE_FUNCPOINT
  `ifdef ENABLE_FUNCPOINT
    reg funcpoint_cover_off;
    initial begin
        if ( $test$plusargs( "cover_off" ) ) begin
            funcpoint_cover_off = 1'b1;
        end else begin
            funcpoint_cover_off = 1'b0;
        end
    end
    property CDP_RDMA_eg__bsync_end_stall__0_cov;
        disable iff((nvdla_core_rstn !== 1) || funcpoint_cover_off)
        @(posedge nvdla_core_clk)
        is_b_sync & (~dp_rdy);
    endproperty
// Cover 0 : "is_b_sync & (~dp_rdy)"
    FUNCPOINT_CDP_RDMA_eg__bsync_end_stall__0_COV : cover property (CDP_RDMA_eg__bsync_end_stall__0_cov);
  `endif
`endif
//VCS coverage on
//VCS coverage off
`ifndef DISABLE_FUNCPOINT
  `ifdef ENABLE_FUNCPOINT
    property CDP_RDMA_eg__widthe_end_stall__1_cov;
        disable iff((nvdla_core_rstn !== 1) || funcpoint_cover_off)
        @(posedge nvdla_core_clk)
        is_last_w & (~dp_rdy);
    endproperty
// Cover 1 : "is_last_w & (~dp_rdy)"
    FUNCPOINT_CDP_RDMA_eg__widthe_end_stall__1_COV : cover property (CDP_RDMA_eg__widthe_end_stall__1_cov);
  `endif
`endif
//VCS coverage on
//VCS coverage off
`ifndef DISABLE_FUNCPOINT
  `ifdef ENABLE_FUNCPOINT
    property CDP_RDMA_eg__cube_end_stall__2_cov;
        disable iff((nvdla_core_rstn !== 1) || funcpoint_cover_off)
        @(posedge nvdla_core_clk)
        is_last_h & (~dp_rdy);
    endproperty
// Cover 2 : "is_last_h & (~dp_rdy)"
    FUNCPOINT_CDP_RDMA_eg__cube_end_stall__2_COV : cover property (CDP_RDMA_eg__cube_end_stall__2_cov);
  `endif
`endif
//VCS coverage on
//VCS coverage off
`ifndef DISABLE_FUNCPOINT
  `ifdef ENABLE_FUNCPOINT
    property CDP_RDMA_eg__channel_end_stall__3_cov;
        disable iff((nvdla_core_rstn !== 1) || funcpoint_cover_off)
        @(posedge nvdla_core_clk)
        is_last_c & (~dp_rdy);
    endproperty
// Cover 3 : "is_last_c & (~dp_rdy)"
    FUNCPOINT_CDP_RDMA_eg__channel_end_stall__3_COV : cover property (CDP_RDMA_eg__channel_end_stall__3_cov);
  `endif
`endif
//VCS coverage on
//VCS coverage off
`ifndef DISABLE_FUNCPOINT
  `ifdef ENABLE_FUNCPOINT
    property CDP_RDMA_eg_backpressure_cq__4_cov;
        disable iff((nvdla_core_rstn !== 1) || funcpoint_cover_off)
        @(posedge nvdla_core_clk)
        tran_rdy & (~tran_vld) & (~is_cube_end);
    endproperty
// Cover 4 : "tran_rdy & (~tran_vld) & (~is_cube_end)"
    FUNCPOINT_CDP_RDMA_eg_backpressure_cq__4_COV : cover property (CDP_RDMA_eg_backpressure_cq__4_cov);
  `endif
`endif
//VCS coverage on
endmodule // NV_NVDLA_CDP_RDMA_eg
//
// AUTOMATICALLY GENERATED -- DO NOT EDIT OR CHECK IN
//
// /home/nvtools/engr/2017/03/11_05_00_06/nvtools/scripts/fifogen
// fifogen -input_config_yaml ../../../../../../../socd/ip_chip_tools/1.0/defs/public/fifogen/golden/tlit5/fifogen.yml -no_make_ram -no_make_ram -stdout -m NV_NVDLA_CDP_RDMA_lat_fifo -clk_name nvdla_core_clk -reset_name nvdla_core_rstn -wr_pipebus lat_wr -rd_pipebus lat_rd -rd_reg -d 61 -w 514 -ram ra2 [Chosen ram type: ra2 - ramgen_generic (user specified, thus no other ram type is allowed)]
// chip config vars: assertion_module_prefix=nv_ strict_synchronizers=1 strict_synchronizers_use_lib_cells=1 strict_synchronizers_use_tm_lib_cells=1 strict_sync_randomizer=1 assertion_message_prefix=FIFOGEN_ASSERTION allow_async_fifola=0 ignore_ramgen_fifola_variant=1 uses_p_SSYNC=0 uses_prand=1 uses_rammake_inc=1 use_x_or_0=1 force_wr_reg_gated=1 no_force_reset=1 no_timescale=1 no_pli_ifdef=1 requires_full_throughput=1 ram_auto_ff_bits_cutoff=16 ram_auto_ff_width_cutoff=2 ram_auto_ff_width_cutoff_max_depth=32 ram_auto_ff_depth_cutoff=-1 ram_auto_ff_no_la2_depth_cutoff=5 ram_auto_la2_width_cutoff=8 ram_auto_la2_width_cutoff_max_depth=56 ram_auto_la2_depth_cutoff=16 flopram_emu_model=1 dslp_single_clamp_port=1 dslp_clamp_port=1 slp_single_clamp_port=1 slp_clamp_port=1 master_clk_gated=1 clk_gate_module=NV_CLK_gate_power redundant_timing_flops=0 hot_reset_async_force_ports_and_loopback=1 ram_sleep_en_width=1 async_cdc_reg_id=NV_AFIFO_ rd_reg_default_for_async=1 async_ram_instance_prefix=NV_ASYNC_RAM_ allow_rd_busy_reg_warning=0 do_dft_xelim_gating=1 add_dft_xelim_wr_clkgate=1 add_dft_xelim_rd_clkgate=1
//
// leda B_3208_NV OFF -- Unequal length LHS and RHS in assignment
// leda B_1405 OFF -- 2 asynchronous resets in this unit detected
`define FORCE_CONTENTION_ASSERTION_RESET_ACTIVE 1'b1
`include "simulate_x_tick.vh"
module NV_NVDLA_CDP_RDMA_lat_fifo (
      nvdla_core_clk
    , nvdla_core_rstn
    , lat_wr_prdy
    , lat_wr_pvld
`ifdef FV_RAND_WR_PAUSE
    , lat_wr_pause
`endif
    , lat_wr_pd
    , lat_rd_prdy
    , lat_rd_pvld
    , lat_rd_pd
    , pwrbus_ram_pd
    );
// spyglass disable_block W401 -- clock is not input to module
input nvdla_core_clk;
input nvdla_core_rstn;
output lat_wr_prdy;
input lat_wr_pvld;
`ifdef FV_RAND_WR_PAUSE
input lat_wr_pause;
`endif
input [64:0] lat_wr_pd;
input lat_rd_prdy;
output lat_rd_pvld;
output [64:0] lat_rd_pd;
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
reg lat_wr_busy_int; // copy for internal use
assign lat_wr_prdy = !lat_wr_busy_int;
assign wr_reserving = lat_wr_pvld && !lat_wr_busy_int; // reserving write space?
reg wr_popping; // fwd: write side sees pop?
reg [5:0] lat_wr_count; // write-side count
wire [5:0] wr_count_next_wr_popping = wr_reserving ? lat_wr_count : (lat_wr_count - 1'd1); // spyglass disable W164a W484
wire [5:0] wr_count_next_no_wr_popping = wr_reserving ? (lat_wr_count + 1'd1) : lat_wr_count; // spyglass disable W164a W484
wire [5:0] wr_count_next = wr_popping ? wr_count_next_wr_popping :
                                               wr_count_next_no_wr_popping;
wire wr_count_next_no_wr_popping_is_61 = ( wr_count_next_no_wr_popping == 6'd61 );
wire wr_count_next_is_61 = wr_popping ? 1'b0 :
                                          wr_count_next_no_wr_popping_is_61;
wire [5:0] wr_limit_muxed; // muxed with simulation/emulation overrides
wire [5:0] wr_limit_reg = wr_limit_muxed;
`ifdef FV_RAND_WR_PAUSE
// VCS coverage off
wire lat_wr_busy_next = wr_count_next_is_61 || // busy next cycle?
                          (wr_limit_reg != 6'd0 && // check lat_wr_limit if != 0
                           wr_count_next >= wr_limit_reg) || lat_wr_pause;
// VCS coverage on
`else
// VCS coverage off
wire lat_wr_busy_next = wr_count_next_is_61 || // busy next cycle?
                          (wr_limit_reg != 6'd0 && // check lat_wr_limit if != 0
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
        lat_wr_busy_int <= 1'b0;
        lat_wr_count <= 6'd0;
    end else begin
 lat_wr_busy_int <= lat_wr_busy_next;
 if ( wr_reserving ^ wr_popping ) begin
     lat_wr_count <= wr_count_next;
        end
//synopsys translate_off
            else if ( !(wr_reserving ^ wr_popping) ) begin
        end else begin
            lat_wr_count <= {6{`x_or_0}};
        end
//synopsys translate_on
    end
end
wire wr_pushing = wr_reserving; // data pushed same cycle as lat_wr_pvld
//
// RAM
//
reg [5:0] lat_wr_adr; // current write address
wire [5:0] lat_rd_adr_p; // read address to use for ram
wire [64:0] lat_rd_pd_p; // read data directly out of ram
wire rd_enable;
wire ore;
wire [31 : 0] pwrbus_ram_pd;
// Adding parameter for fifogen to disable wr/rd contention assertion in ramgen.
// Fifogen handles this by ignoring the data on the ram data out for that cycle.
nv_ram_rwsp_61x65 #(`FORCE_CONTENTION_ASSERTION_RESET_ACTIVE) ram (
      .clk ( nvdla_core_clk )
    , .pwrbus_ram_pd ( pwrbus_ram_pd )
    , .wa ( lat_wr_adr )
    , .we ( wr_pushing )
    , .di ( lat_wr_pd )
    , .ra ( lat_rd_adr_p )
    , .re ( rd_enable )
    , .dout ( lat_rd_pd_p )
    , .ore ( ore )
    );
// next lat_wr_adr if wr_pushing=1
wire [5:0] wr_adr_next = (lat_wr_adr == 6'd60) ? 6'd0 : (lat_wr_adr + 1'd1); // spyglass disable W484
// spyglass disable_block W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        lat_wr_adr <= 6'd0;
    end else begin
        if ( wr_pushing ) begin
            lat_wr_adr <= wr_adr_next;
        end
//synopsys translate_off
            else if ( !(wr_pushing) ) begin
        end else begin
            lat_wr_adr <= {6{`x_or_0}};
        end
//synopsys translate_on
    end
end
// spyglass enable_block W484
wire rd_popping; // read side doing pop this cycle?
reg [5:0] lat_rd_adr; // current read address
// next read address
wire [5:0] rd_adr_next = (lat_rd_adr == 6'd60) ? 6'd0 : (lat_rd_adr + 1'd1); // spyglass disable W484
assign lat_rd_adr_p = rd_popping ? rd_adr_next : lat_rd_adr; // for ram
// spyglass disable_block W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        lat_rd_adr <= 6'd0;
    end else begin
        if ( rd_popping ) begin
     lat_rd_adr <= rd_adr_next;
        end
//synopsys translate_off
            else if ( !rd_popping ) begin
        end else begin
            lat_rd_adr <= {6{`x_or_0}};
        end
//synopsys translate_on
    end
end
// spyglass enable_block W484
//
// SYNCHRONOUS BOUNDARY
//
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        wr_popping <= 1'b0;
    end else begin
 wr_popping <= rd_popping;
    end
end
reg rd_pushing;
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        rd_pushing <= 1'b0;
    end else begin
 rd_pushing <= wr_pushing; // let data go into ram first
    end
end
//
// READ SIDE
//
reg lat_rd_pvld_p; // data out of fifo is valid
reg lat_rd_pvld_int; // internal copy of lat_rd_pvld
assign lat_rd_pvld = lat_rd_pvld_int;
assign rd_popping = lat_rd_pvld_p && !(lat_rd_pvld_int && !lat_rd_prdy);
reg [5:0] lat_rd_count_p; // read-side fifo count
// spyglass disable_block W164a W484
wire [5:0] rd_count_p_next_rd_popping = rd_pushing ? lat_rd_count_p :
                                                                (lat_rd_count_p - 1'd1);
wire [5:0] rd_count_p_next_no_rd_popping = rd_pushing ? (lat_rd_count_p + 1'd1) :
                                                                    lat_rd_count_p;
// spyglass enable_block W164a W484
wire [5:0] rd_count_p_next = rd_popping ? rd_count_p_next_rd_popping :
                                                     rd_count_p_next_no_rd_popping;
wire rd_count_p_next_rd_popping_not_0 = rd_count_p_next_rd_popping != 0;
wire rd_count_p_next_no_rd_popping_not_0 = rd_count_p_next_no_rd_popping != 0;
wire rd_count_p_next_not_0 = rd_popping ? rd_count_p_next_rd_popping_not_0 :
                                              rd_count_p_next_no_rd_popping_not_0;
assign rd_enable = ((rd_count_p_next_not_0) && ((~lat_rd_pvld_p) || rd_popping)); // anytime data's there and not stalled
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        lat_rd_count_p <= 6'd0;
        lat_rd_pvld_p <= 1'b0;
    end else begin
        if ( rd_pushing || rd_popping ) begin
     lat_rd_count_p <= rd_count_p_next;
        end
//synopsys translate_off
            else if ( !(rd_pushing || rd_popping ) ) begin
        end else begin
            lat_rd_count_p <= {6{`x_or_0}};
        end
//synopsys translate_on
        if ( rd_pushing || rd_popping ) begin
     lat_rd_pvld_p <= (rd_count_p_next_not_0);
        end
//synopsys translate_off
            else if ( !(rd_pushing || rd_popping ) ) begin
        end else begin
            lat_rd_pvld_p <= `x_or_0;
        end
//synopsys translate_on
    end
end
wire rd_req_next = (lat_rd_pvld_p || (lat_rd_pvld_int && !lat_rd_prdy)) ;
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        lat_rd_pvld_int <= 1'b0;
    end else begin
        lat_rd_pvld_int <= rd_req_next;
    end
end
assign lat_rd_pd = lat_rd_pd_p;
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
assign nvdla_core_clk_mgated_enable = ((wr_reserving || wr_pushing || rd_popping || wr_popping || (lat_wr_pvld && !lat_wr_busy_int) || (lat_wr_busy_int != lat_wr_busy_next)) || (rd_pushing || rd_popping || (lat_rd_pvld_int && lat_rd_prdy) || wr_pushing))
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
assign wr_limit_muxed = `EMU_FIFO_CFG.NV_NVDLA_CDP_RDMA_lat_fifo_wr_limit_override ? `EMU_FIFO_CFG.NV_NVDLA_CDP_RDMA_lat_fifo_wr_limit : 6'd0;
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
    if ( $test$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_wr_limit" ) ) begin
        wr_limit_override = 1;
        $value$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_wr_limit=%d", wr_limit_override_value);
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
    if ( $test$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_fifo_stall_probability" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_fifo_stall_probability=%d", stall_probability);
    end else if ( $test$plusargs( "default_fifo_stall_probability" ) ) begin
        $value$plusargs( "default_fifo_stall_probability=%d", stall_probability);
    end
    if ( $test$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_fifo_stall_cycles_min" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_fifo_stall_cycles_min=%d", stall_cycles_min);
    end else if ( $test$plusargs( "default_fifo_stall_cycles_min" ) ) begin
        $value$plusargs( "default_fifo_stall_cycles_min=%d", stall_cycles_min);
    end
    if ( $test$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_fifo_stall_cycles_max" ) ) begin
        $value$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_fifo_stall_cycles_max=%d", stall_cycles_max);
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
    if ( ! $test$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_fifo_stall_probability" ) ) stall_probability = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_probability;
    if ( ! $test$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_fifo_stall_cycles_min" ) ) stall_cycles_min = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_cycles_min;
    if ( ! $test$plusargs( "NV_NVDLA_CDP_RDMA_lat_fifo_fifo_stall_cycles_max" ) ) stall_cycles_max = `SIMTOP_RANDOMIZE_STALLS.global_stall_fifo_cycles_max;
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
            if ( lat_wr_pvld && !(!lat_wr_prdy)
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
    , .max ( {26'd0, (wr_limit_reg == 6'd0) ? 6'd61 : wr_limit_reg} )
    , .curr ( {26'd0, lat_wr_count} )
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
// set_boundary_optimization find(design, "NV_NVDLA_CDP_RDMA_lat_fifo") true
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
endmodule // NV_NVDLA_CDP_RDMA_lat_fifo
// Re-Order Data
// if we have rd_reg, then depth = required - 1 ,so depth=4-1=3
//
// AUTOMATICALLY GENERATED -- DO NOT EDIT OR CHECK IN
//
// /home/nvtools/engr/2017/03/11_05_00_06/nvtools/scripts/fifogen
// fifogen -input_config_yaml ../../../../../../../socd/ip_chip_tools/1.0/defs/public/fifogen/golden/tlit5/fifogen.yml -no_make_ram -no_make_ram -stdout -m NV_NVDLA_CDP_RDMA_ro_fifo -clk_name nvdla_core_clk -reset_name nvdla_core_rstn -wr_pipebus ro_wr -rd_pipebus ro_rd -rd_reg -rand_none -ram_bypass -d 4 -w 64 -ram ff [Chosen ram type: ff - fifogen_flops (user specified, thus no other ram type is allowed)]
// chip config vars: assertion_module_prefix=nv_ strict_synchronizers=1 strict_synchronizers_use_lib_cells=1 strict_synchronizers_use_tm_lib_cells=1 strict_sync_randomizer=1 assertion_message_prefix=FIFOGEN_ASSERTION allow_async_fifola=0 ignore_ramgen_fifola_variant=1 uses_p_SSYNC=0 uses_prand=1 uses_rammake_inc=1 use_x_or_0=1 force_wr_reg_gated=1 no_force_reset=1 no_timescale=1 no_pli_ifdef=1 requires_full_throughput=1 ram_auto_ff_bits_cutoff=16 ram_auto_ff_width_cutoff=2 ram_auto_ff_width_cutoff_max_depth=32 ram_auto_ff_depth_cutoff=-1 ram_auto_ff_no_la2_depth_cutoff=5 ram_auto_la2_width_cutoff=8 ram_auto_la2_width_cutoff_max_depth=56 ram_auto_la2_depth_cutoff=16 flopram_emu_model=1 dslp_single_clamp_port=1 dslp_clamp_port=1 slp_single_clamp_port=1 slp_clamp_port=1 master_clk_gated=1 clk_gate_module=NV_CLK_gate_power redundant_timing_flops=0 hot_reset_async_force_ports_and_loopback=1 ram_sleep_en_width=1 async_cdc_reg_id=NV_AFIFO_ rd_reg_default_for_async=1 async_ram_instance_prefix=NV_ASYNC_RAM_ allow_rd_busy_reg_warning=0 do_dft_xelim_gating=1 add_dft_xelim_wr_clkgate=1 add_dft_xelim_rd_clkgate=1
//
// leda B_3208_NV OFF -- Unequal length LHS and RHS in assignment
// leda B_1405 OFF -- 2 asynchronous resets in this unit detected
`define FORCE_CONTENTION_ASSERTION_RESET_ACTIVE 1'b1
`include "simulate_x_tick.vh"
module NV_NVDLA_CDP_RDMA_ro_fifo (
      nvdla_core_clk
    , nvdla_core_rstn
    , ro_wr_prdy
    , ro_wr_pvld
    , ro_wr_pd
    , ro_rd_prdy
    , ro_rd_pvld
    , ro_rd_pd
    , pwrbus_ram_pd
    );
// spyglass disable_block W401 -- clock is not input to module
input nvdla_core_clk;
input nvdla_core_rstn;
output ro_wr_prdy;
input ro_wr_pvld;
input [7:0] ro_wr_pd;
input ro_rd_prdy;
output ro_rd_pvld;
output [7:0] ro_rd_pd;
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
wire wr_reserving;
reg ro_wr_busy_int; // copy for internal use
assign ro_wr_prdy = !ro_wr_busy_int;
assign wr_reserving = ro_wr_pvld && !ro_wr_busy_int; // reserving write space?
wire wr_popping; // fwd: write side sees pop?
reg [3:0] ro_wr_count; // write-side count
wire [3:0] wr_count_next_wr_popping = wr_reserving ? ro_wr_count : (ro_wr_count - 1'd1); // spyglass disable W164a W484
wire [3:0] wr_count_next_no_wr_popping = wr_reserving ? (ro_wr_count + 1'd1) : ro_wr_count; // spyglass disable W164a W484
wire [3:0] wr_count_next = wr_popping ? wr_count_next_wr_popping :
                                               wr_count_next_no_wr_popping;
wire wr_count_next_no_wr_popping_is_8 = ( wr_count_next_no_wr_popping == 4'd8 );
wire wr_count_next_is_8 = wr_popping ? 1'b0 :
                                          wr_count_next_no_wr_popping_is_8;
wire [3:0] wr_limit_muxed; // muxed with simulation/emulation overrides
wire [3:0] wr_limit_reg = wr_limit_muxed;
// VCS coverage off
wire ro_wr_busy_next = wr_count_next_is_8 || // busy next cycle?
                          (wr_limit_reg != 4'd0 && // check ro_wr_limit if != 0
                           wr_count_next >= wr_limit_reg) ;
// VCS coverage on
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        ro_wr_busy_int <= 1'b0;
        ro_wr_count <= 4'd0;
    end else begin
 ro_wr_busy_int <= ro_wr_busy_next;
 if ( wr_reserving ^ wr_popping ) begin
     ro_wr_count <= wr_count_next;
        end
//synopsys translate_off
            else if ( !(wr_reserving ^ wr_popping) ) begin
        end else begin
            ro_wr_count <= {4{`x_or_0}};
        end
//synopsys translate_on
    end
end
wire wr_pushing = wr_reserving; // data pushed same cycle as ro_wr_pvld
//
// RAM
//
reg [2:0] ro_wr_adr; // current write address
// spyglass disable_block W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        ro_wr_adr <= 3'd0;
    end else begin
        if ( wr_pushing ) begin
     ro_wr_adr <= ro_wr_adr + 1'd1;
        end
    end
end
// spyglass enable_block W484
wire rd_popping;
reg [2:0] ro_rd_adr; // read address this cycle
wire ram_we = wr_pushing && (ro_wr_count > 4'd0 || !rd_popping); // note: write occurs next cycle
wire [7:0] ro_rd_pd_p; // read data out of ram
wire [31 : 0] pwrbus_ram_pd;
// Adding parameter for fifogen to disable wr/rd contention assertion in ramgen.
// Fifogen handles this by ignoring the data on the ram data out for that cycle.
NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8 ram (
      .clk( nvdla_core_clk_mgated )
    , .pwrbus_ram_pd ( pwrbus_ram_pd )
    , .di ( ro_wr_pd )
    , .we ( ram_we )
    , .wa ( ro_wr_adr )
    , .ra ( (ro_wr_count == 0) ? 4'd8 : {1'b0,ro_rd_adr} )
    , .dout ( ro_rd_pd_p )
    );
wire [2:0] rd_adr_next_popping = ro_rd_adr + 1'd1; // spyglass disable W484
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        ro_rd_adr <= 3'd0;
    end else begin
        if ( rd_popping ) begin
     ro_rd_adr <= rd_adr_next_popping;
        end
//synopsys translate_off
            else if ( !rd_popping ) begin
        end else begin
            ro_rd_adr <= {3{`x_or_0}};
        end
//synopsys translate_on
    end
end
//
// SYNCHRONOUS BOUNDARY
//
assign wr_popping = rd_popping; // let it be seen immediately
wire rd_pushing = wr_pushing; // let it be seen immediately
//
// READ SIDE
//
wire ro_rd_pvld_p; // data out of fifo is valid
reg ro_rd_pvld_int; // internal copy of ro_rd_pvld
assign ro_rd_pvld = ro_rd_pvld_int;
assign rd_popping = ro_rd_pvld_p && !(ro_rd_pvld_int && !ro_rd_prdy);
reg [3:0] ro_rd_count_p; // read-side fifo count
// spyglass disable_block W164a W484
wire [3:0] rd_count_p_next_rd_popping = rd_pushing ? ro_rd_count_p :
                                                                (ro_rd_count_p - 1'd1);
wire [3:0] rd_count_p_next_no_rd_popping = rd_pushing ? (ro_rd_count_p + 1'd1) :
                                                                    ro_rd_count_p;
// spyglass enable_block W164a W484
wire [3:0] rd_count_p_next = rd_popping ? rd_count_p_next_rd_popping :
                                                     rd_count_p_next_no_rd_popping;
assign ro_rd_pvld_p = ro_rd_count_p != 0 || rd_pushing;
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        ro_rd_count_p <= 4'd0;
    end else begin
        if ( rd_pushing || rd_popping ) begin
     ro_rd_count_p <= rd_count_p_next;
        end
//synopsys translate_off
            else if ( !(rd_pushing || rd_popping ) ) begin
        end else begin
            ro_rd_count_p <= {4{`x_or_0}};
        end
//synopsys translate_on
    end
end
reg [7:0] ro_rd_pd; // output data register
wire rd_req_next = (ro_rd_pvld_p || (ro_rd_pvld_int && !ro_rd_prdy)) ;
always @( posedge nvdla_core_clk_mgated or negedge nvdla_core_rstn ) begin
    if ( !nvdla_core_rstn ) begin
        ro_rd_pvld_int <= 1'b0;
    end else begin
        ro_rd_pvld_int <= rd_req_next;
    end
end
always @( posedge nvdla_core_clk_mgated ) begin
    if ( (rd_popping) ) begin
        ro_rd_pd <= ro_rd_pd_p;
    end
//synopsys translate_off
        else if ( !((rd_popping)) ) begin
    end else begin
        ro_rd_pd <= {8{`x_or_0}};
    end
//synopsys translate_on
end
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
assign nvdla_core_clk_mgated_enable = ((wr_reserving || wr_pushing || wr_popping || (ro_wr_pvld && !ro_wr_busy_int) || (ro_wr_busy_int != ro_wr_busy_next)) || (rd_pushing || rd_popping || (ro_rd_pvld_int && ro_rd_prdy)) || (wr_pushing))
                               `ifdef FIFOGEN_MASTER_CLK_GATING_DISABLED
                               || 1'b1
                               `endif
// synopsys translate_off
          `ifndef SYNTH_LEVEL1_COMPILE
          `ifndef SYNTHESIS
                               || master_clk_gating_disabled
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
assign wr_limit_muxed = `EMU_FIFO_CFG.NV_NVDLA_CDP_RDMA_ro_fifo_wr_limit_override ? `EMU_FIFO_CFG.NV_NVDLA_CDP_RDMA_ro_fifo_wr_limit : 4'd0;
`else
// No Global Override for Emulation
//
assign wr_limit_muxed = 4'd0;
`endif // EMU_FIFO_CFG
`else // !EMU
`ifdef SYNTH_LEVEL1_COMPILE
// No Override for GCS Compiles
//
assign wr_limit_muxed = 4'd0;
`else
`ifdef SYNTHESIS
// No Override for RTL Synthesis
//
assign wr_limit_muxed = 4'd0;
`else
// RTL Simulation Plusarg Override
// VCS coverage off
reg wr_limit_override;
reg [3:0] wr_limit_override_value;
assign wr_limit_muxed = wr_limit_override ? wr_limit_override_value : 4'd0;
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
    if ( $test$plusargs( "NV_NVDLA_CDP_RDMA_ro_fifo_wr_limit" ) ) begin
        wr_limit_override = 1;
        $value$plusargs( "NV_NVDLA_CDP_RDMA_ro_fifo_wr_limit=%d", wr_limit_override_value);
    end
end
// VCS coverage on
`endif
`endif
`endif
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
    , .max ( {28'd0, (wr_limit_reg == 4'd0) ? 4'd8 : wr_limit_reg} )
    , .curr ( {28'd0, ro_wr_count} )
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
// set_boundary_optimization find(design, "NV_NVDLA_CDP_RDMA_ro_fifo") true
// synopsys dc_script_end
endmodule // NV_NVDLA_CDP_RDMA_ro_fifo
//
// Flop-Based RAM
//
module NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8 (
      clk
    , pwrbus_ram_pd
    , di
    , we
    , wa
    , ra
    , dout
    );
input clk; // write clock
input [31 : 0] pwrbus_ram_pd;
input [7:0] di;
input we;
input [2:0] wa;
input [3:0] ra;
output [7:0] dout;
`ifndef FPGA
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_0 (.A(pwrbus_ram_pd[0]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_1 (.A(pwrbus_ram_pd[1]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_2 (.A(pwrbus_ram_pd[2]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_3 (.A(pwrbus_ram_pd[3]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_4 (.A(pwrbus_ram_pd[4]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_5 (.A(pwrbus_ram_pd[5]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_6 (.A(pwrbus_ram_pd[6]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_7 (.A(pwrbus_ram_pd[7]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_8 (.A(pwrbus_ram_pd[8]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_9 (.A(pwrbus_ram_pd[9]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_10 (.A(pwrbus_ram_pd[10]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_11 (.A(pwrbus_ram_pd[11]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_12 (.A(pwrbus_ram_pd[12]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_13 (.A(pwrbus_ram_pd[13]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_14 (.A(pwrbus_ram_pd[14]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_15 (.A(pwrbus_ram_pd[15]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_16 (.A(pwrbus_ram_pd[16]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_17 (.A(pwrbus_ram_pd[17]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_18 (.A(pwrbus_ram_pd[18]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_19 (.A(pwrbus_ram_pd[19]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_20 (.A(pwrbus_ram_pd[20]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_21 (.A(pwrbus_ram_pd[21]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_22 (.A(pwrbus_ram_pd[22]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_23 (.A(pwrbus_ram_pd[23]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_24 (.A(pwrbus_ram_pd[24]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_25 (.A(pwrbus_ram_pd[25]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_26 (.A(pwrbus_ram_pd[26]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_27 (.A(pwrbus_ram_pd[27]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_28 (.A(pwrbus_ram_pd[28]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_29 (.A(pwrbus_ram_pd[29]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_30 (.A(pwrbus_ram_pd[30]));
NV_BLKBOX_SINK UJ_BBOX2UNIT_UNUSED_pwrbus_31 (.A(pwrbus_ram_pd[31]));
`endif
`ifdef EMU
wire [7:0] dout_p;
// we use an emulation ram here to save flops on the emulation board
// so that the monstrous chip can fit :-)
//
reg [2:0] Wa0_vmw;
reg we0_vmw;
reg [7:0] Di0_vmw;
always @( posedge clk ) begin
    Wa0_vmw <= wa;
    we0_vmw <= we;
    Di0_vmw <= di;
end
vmw_NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8 emu_ram (
     .Wa0( Wa0_vmw )
   , .we0( we0_vmw )
   , .Di0( Di0_vmw )
   , .Ra0( ra[2:0] )
   , .Do0( dout_p )
   );
assign dout = (ra == 8) ? di : dout_p;
`else
reg [7:0] ram_ff0;
reg [7:0] ram_ff1;
reg [7:0] ram_ff2;
reg [7:0] ram_ff3;
reg [7:0] ram_ff4;
reg [7:0] ram_ff5;
reg [7:0] ram_ff6;
reg [7:0] ram_ff7;
always @( posedge clk ) begin
    if ( we && wa == 3'd0 ) begin
 ram_ff0 <= di;
    end
    if ( we && wa == 3'd1 ) begin
 ram_ff1 <= di;
    end
    if ( we && wa == 3'd2 ) begin
 ram_ff2 <= di;
    end
    if ( we && wa == 3'd3 ) begin
 ram_ff3 <= di;
    end
    if ( we && wa == 3'd4 ) begin
 ram_ff4 <= di;
    end
    if ( we && wa == 3'd5 ) begin
 ram_ff5 <= di;
    end
    if ( we && wa == 3'd6 ) begin
 ram_ff6 <= di;
    end
    if ( we && wa == 3'd7 ) begin
 ram_ff7 <= di;
    end
end
reg [7:0] dout;
always @(*) begin
    case( ra )
    4'd0: dout = ram_ff0;
    4'd1: dout = ram_ff1;
    4'd2: dout = ram_ff2;
    4'd3: dout = ram_ff3;
    4'd4: dout = ram_ff4;
    4'd5: dout = ram_ff5;
    4'd6: dout = ram_ff6;
    4'd7: dout = ram_ff7;
    4'd8: dout = di;
//VCS coverage off
    default: dout = {8{`x_or_0}};
//VCS coverage on
    endcase
end
`endif // EMU
endmodule // NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8
// emulation model of flopram guts
//
`ifdef EMU
module vmw_NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8 (
   Wa0, we0, Di0,
   Ra0, Do0
   );
input [2:0] Wa0;
input we0;
input [7:0] Di0;
input [2:0] Ra0;
output [7:0] Do0;
// Only visible during Spyglass to avoid blackboxes.
`ifdef SPYGLASS_FLOPRAM
assign Do0 = 8'd0;
wire dummy = 1'b0 | (|Wa0) | (|we0) | (|Di0) | (|Ra0);
`endif
// synopsys translate_off
`ifndef SYNTH_LEVEL1_COMPILE
`ifndef SYNTHESIS
reg [7:0] mem[7:0];
// expand mem for debug ease
`ifdef EMU_EXPAND_FLOPRAM_MEM
wire [7:0] Q0 = mem[0];
wire [7:0] Q1 = mem[1];
wire [7:0] Q2 = mem[2];
wire [7:0] Q3 = mem[3];
wire [7:0] Q4 = mem[4];
wire [7:0] Q5 = mem[5];
wire [7:0] Q6 = mem[6];
wire [7:0] Q7 = mem[7];
`endif
// asynchronous ram writes
always @(*) begin
  if ( we0 == 1'b1 ) begin
    #0.1;
    mem[Wa0] = Di0;
  end
end
assign Do0 = mem[Ra0];
`endif
`endif
// synopsys translate_on
// synopsys dc_script_begin
// synopsys dc_script_end
// g2c if { [find / -null_ok -subdesign vmw_NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8] != {} } { set_attr preserve 1 [find / -subdesign vmw_NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8] }
endmodule // vmw_NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8
//vmw: Memory vmw_NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8
//vmw: Address-size 3
//vmw: Data-size 8
//vmw: Sensitivity level 1
//vmw: Ports W R
//vmw: terminal we0 WriteEnable0
//vmw: terminal Wa0 address0
//vmw: terminal Di0[7:0] data0[7:0]
//vmw:
//vmw: terminal Ra0 address1
//vmw: terminal Do0[7:0] data1[7:0]
//vmw:
//qt: CELL vmw_NV_NVDLA_CDP_RDMA_ro_fifo_flopram_rwsa_8x8
//qt: TERMINAL we0 TYPE=WE POLARITY=H PORT=1
//qt: TERMINAL Wa0[%d] TYPE=ADDRESS DIR=W BIT=%1 PORT=1
//qt: TERMINAL Di0[%d] TYPE=DATA DIR=I BIT=%1 PORT=1
//qt:
//qt: TERMINAL Ra0[%d] TYPE=ADDRESS DIR=R BIT=%1 PORT=1
//qt: TERMINAL Do0[%d] TYPE=DATA DIR=O BIT=%1 PORT=1
//qt:
`endif // EMU
