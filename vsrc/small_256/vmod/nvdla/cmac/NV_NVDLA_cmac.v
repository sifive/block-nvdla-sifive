// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_cmac.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
module NV_NVDLA_cmac (
   csb2cmac_a_req_pd //|< i
  ,csb2cmac_a_req_pvld //|< i
  ,dla_clk_ovr_on_sync //|< i
  ,global_clk_ovr_on_sync //|< i
  ,nvdla_core_clk //|< i
  ,nvdla_core_rstn //|< i
//: for(my $i=0; $i<32 ; $i++){
//: print qq(
//: ,sc2mac_dat_data${i} //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_data0 //|< i 
,sc2mac_dat_data1 //|< i 
,sc2mac_dat_data2 //|< i 
,sc2mac_dat_data3 //|< i 
,sc2mac_dat_data4 //|< i 
,sc2mac_dat_data5 //|< i 
,sc2mac_dat_data6 //|< i 
,sc2mac_dat_data7 //|< i 
,sc2mac_dat_data8 //|< i 
,sc2mac_dat_data9 //|< i 
,sc2mac_dat_data10 //|< i 
,sc2mac_dat_data11 //|< i 
,sc2mac_dat_data12 //|< i 
,sc2mac_dat_data13 //|< i 
,sc2mac_dat_data14 //|< i 
,sc2mac_dat_data15 //|< i 
,sc2mac_dat_data16 //|< i 
,sc2mac_dat_data17 //|< i 
,sc2mac_dat_data18 //|< i 
,sc2mac_dat_data19 //|< i 
,sc2mac_dat_data20 //|< i 
,sc2mac_dat_data21 //|< i 
,sc2mac_dat_data22 //|< i 
,sc2mac_dat_data23 //|< i 
,sc2mac_dat_data24 //|< i 
,sc2mac_dat_data25 //|< i 
,sc2mac_dat_data26 //|< i 
,sc2mac_dat_data27 //|< i 
,sc2mac_dat_data28 //|< i 
,sc2mac_dat_data29 //|< i 
,sc2mac_dat_data30 //|< i 
,sc2mac_dat_data31 //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_mask //|< i
  ,sc2mac_dat_pd //|< i
  ,sc2mac_dat_pvld //|< i
//: for(my $i=0; $i<32 ; $i++){
//: print qq(
//: ,sc2mac_wt_data${i} //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_wt_data0 //|< i 
,sc2mac_wt_data1 //|< i 
,sc2mac_wt_data2 //|< i 
,sc2mac_wt_data3 //|< i 
,sc2mac_wt_data4 //|< i 
,sc2mac_wt_data5 //|< i 
,sc2mac_wt_data6 //|< i 
,sc2mac_wt_data7 //|< i 
,sc2mac_wt_data8 //|< i 
,sc2mac_wt_data9 //|< i 
,sc2mac_wt_data10 //|< i 
,sc2mac_wt_data11 //|< i 
,sc2mac_wt_data12 //|< i 
,sc2mac_wt_data13 //|< i 
,sc2mac_wt_data14 //|< i 
,sc2mac_wt_data15 //|< i 
,sc2mac_wt_data16 //|< i 
,sc2mac_wt_data17 //|< i 
,sc2mac_wt_data18 //|< i 
,sc2mac_wt_data19 //|< i 
,sc2mac_wt_data20 //|< i 
,sc2mac_wt_data21 //|< i 
,sc2mac_wt_data22 //|< i 
,sc2mac_wt_data23 //|< i 
,sc2mac_wt_data24 //|< i 
,sc2mac_wt_data25 //|< i 
,sc2mac_wt_data26 //|< i 
,sc2mac_wt_data27 //|< i 
,sc2mac_wt_data28 //|< i 
,sc2mac_wt_data29 //|< i 
,sc2mac_wt_data30 //|< i 
,sc2mac_wt_data31 //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_mask //|< i
  ,sc2mac_wt_pvld //|< i
  ,sc2mac_wt_sel //|< i
  ,tmc2slcg_disable_clock_gating //|< i
  ,cmac_a2csb_resp_pd //|> o
  ,cmac_a2csb_resp_valid //|> o
  ,csb2cmac_a_req_prdy //|> o
//: for(my $i=0; $i<8/2 ; $i++){
//: print qq(
//: ,mac2accu_data${i} //|> o )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,mac2accu_data0 //|> o 
,mac2accu_data1 //|> o 
,mac2accu_data2 //|> o 
,mac2accu_data3 //|> o 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,mac2accu_mask //|> o
  ,mac2accu_mode //|> o
  ,mac2accu_pd //|> o
  ,mac2accu_pvld //|> o
  );
//
// NV_NVDLA_cmac_ports.v
//
input nvdla_core_clk;
input nvdla_core_rstn;
output cmac_a2csb_resp_valid; /* data valid */
output [33:0] cmac_a2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
input csb2cmac_a_req_pvld; /* data valid */
output csb2cmac_a_req_prdy; /* data return handshake */
input [62:0] csb2cmac_a_req_pd;
output mac2accu_pvld; /* data valid */
output [8/2 -1:0] mac2accu_mask;
output mac2accu_mode;
//: for(my $i=0; $i<8/2 ; $i++){
//: print qq(
//: output [21 -1:0] mac2accu_data${i}; //|> o )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [21 -1:0] mac2accu_data0; //|> o 
output [21 -1:0] mac2accu_data1; //|> o 
output [21 -1:0] mac2accu_data2; //|> o 
output [21 -1:0] mac2accu_data3; //|> o 
//| eperl: generated_end (DO NOT EDIT ABOVE)
output [8:0] mac2accu_pd;
input sc2mac_dat_pvld; /* data valid */
input [32 -1:0] sc2mac_dat_mask;
//: for(my $i=0; $i<32 ; $i++){
//: print qq(
//: input [8 -1:0] sc2mac_dat_data${i}; //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [8 -1:0] sc2mac_dat_data0; //|< i 
input [8 -1:0] sc2mac_dat_data1; //|< i 
input [8 -1:0] sc2mac_dat_data2; //|< i 
input [8 -1:0] sc2mac_dat_data3; //|< i 
input [8 -1:0] sc2mac_dat_data4; //|< i 
input [8 -1:0] sc2mac_dat_data5; //|< i 
input [8 -1:0] sc2mac_dat_data6; //|< i 
input [8 -1:0] sc2mac_dat_data7; //|< i 
input [8 -1:0] sc2mac_dat_data8; //|< i 
input [8 -1:0] sc2mac_dat_data9; //|< i 
input [8 -1:0] sc2mac_dat_data10; //|< i 
input [8 -1:0] sc2mac_dat_data11; //|< i 
input [8 -1:0] sc2mac_dat_data12; //|< i 
input [8 -1:0] sc2mac_dat_data13; //|< i 
input [8 -1:0] sc2mac_dat_data14; //|< i 
input [8 -1:0] sc2mac_dat_data15; //|< i 
input [8 -1:0] sc2mac_dat_data16; //|< i 
input [8 -1:0] sc2mac_dat_data17; //|< i 
input [8 -1:0] sc2mac_dat_data18; //|< i 
input [8 -1:0] sc2mac_dat_data19; //|< i 
input [8 -1:0] sc2mac_dat_data20; //|< i 
input [8 -1:0] sc2mac_dat_data21; //|< i 
input [8 -1:0] sc2mac_dat_data22; //|< i 
input [8 -1:0] sc2mac_dat_data23; //|< i 
input [8 -1:0] sc2mac_dat_data24; //|< i 
input [8 -1:0] sc2mac_dat_data25; //|< i 
input [8 -1:0] sc2mac_dat_data26; //|< i 
input [8 -1:0] sc2mac_dat_data27; //|< i 
input [8 -1:0] sc2mac_dat_data28; //|< i 
input [8 -1:0] sc2mac_dat_data29; //|< i 
input [8 -1:0] sc2mac_dat_data30; //|< i 
input [8 -1:0] sc2mac_dat_data31; //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
input [8:0] sc2mac_dat_pd;
input sc2mac_wt_pvld; /* data valid */
input [32 -1:0] sc2mac_wt_mask;
//: for(my $i=0; $i<32 ; $i++){
//: print qq(
//: input [8 -1:0] sc2mac_wt_data${i}; //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [8 -1:0] sc2mac_wt_data0; //|< i 
input [8 -1:0] sc2mac_wt_data1; //|< i 
input [8 -1:0] sc2mac_wt_data2; //|< i 
input [8 -1:0] sc2mac_wt_data3; //|< i 
input [8 -1:0] sc2mac_wt_data4; //|< i 
input [8 -1:0] sc2mac_wt_data5; //|< i 
input [8 -1:0] sc2mac_wt_data6; //|< i 
input [8 -1:0] sc2mac_wt_data7; //|< i 
input [8 -1:0] sc2mac_wt_data8; //|< i 
input [8 -1:0] sc2mac_wt_data9; //|< i 
input [8 -1:0] sc2mac_wt_data10; //|< i 
input [8 -1:0] sc2mac_wt_data11; //|< i 
input [8 -1:0] sc2mac_wt_data12; //|< i 
input [8 -1:0] sc2mac_wt_data13; //|< i 
input [8 -1:0] sc2mac_wt_data14; //|< i 
input [8 -1:0] sc2mac_wt_data15; //|< i 
input [8 -1:0] sc2mac_wt_data16; //|< i 
input [8 -1:0] sc2mac_wt_data17; //|< i 
input [8 -1:0] sc2mac_wt_data18; //|< i 
input [8 -1:0] sc2mac_wt_data19; //|< i 
input [8 -1:0] sc2mac_wt_data20; //|< i 
input [8 -1:0] sc2mac_wt_data21; //|< i 
input [8 -1:0] sc2mac_wt_data22; //|< i 
input [8 -1:0] sc2mac_wt_data23; //|< i 
input [8 -1:0] sc2mac_wt_data24; //|< i 
input [8 -1:0] sc2mac_wt_data25; //|< i 
input [8 -1:0] sc2mac_wt_data26; //|< i 
input [8 -1:0] sc2mac_wt_data27; //|< i 
input [8 -1:0] sc2mac_wt_data28; //|< i 
input [8 -1:0] sc2mac_wt_data29; //|< i 
input [8 -1:0] sc2mac_wt_data30; //|< i 
input [8 -1:0] sc2mac_wt_data31; //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
input [8/2 -1:0] sc2mac_wt_sel;
input dla_clk_ovr_on_sync;
input global_clk_ovr_on_sync;
input tmc2slcg_disable_clock_gating;
wire dp2reg_done;
wire [0:0] reg2dp_conv_mode;
wire [0:0] reg2dp_op_en;
wire [1:0] reg2dp_proc_precision=2'b0;
wire [3+8/2 -1:0] slcg_op_en;
//==========================================================
// core
//==========================================================
NV_NVDLA_CMAC_core u_core (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< i
  ,.sc2mac_dat_pvld (sc2mac_dat_pvld) //|< i
  ,.sc2mac_dat_mask (sc2mac_dat_mask) //|< i
//: for(my $i=0; $i<32 ; $i++){
//: print qq(
//: ,.sc2mac_dat_data${i} (sc2mac_dat_data${i}) //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_dat_data0 (sc2mac_dat_data0) //|< i 
,.sc2mac_dat_data1 (sc2mac_dat_data1) //|< i 
,.sc2mac_dat_data2 (sc2mac_dat_data2) //|< i 
,.sc2mac_dat_data3 (sc2mac_dat_data3) //|< i 
,.sc2mac_dat_data4 (sc2mac_dat_data4) //|< i 
,.sc2mac_dat_data5 (sc2mac_dat_data5) //|< i 
,.sc2mac_dat_data6 (sc2mac_dat_data6) //|< i 
,.sc2mac_dat_data7 (sc2mac_dat_data7) //|< i 
,.sc2mac_dat_data8 (sc2mac_dat_data8) //|< i 
,.sc2mac_dat_data9 (sc2mac_dat_data9) //|< i 
,.sc2mac_dat_data10 (sc2mac_dat_data10) //|< i 
,.sc2mac_dat_data11 (sc2mac_dat_data11) //|< i 
,.sc2mac_dat_data12 (sc2mac_dat_data12) //|< i 
,.sc2mac_dat_data13 (sc2mac_dat_data13) //|< i 
,.sc2mac_dat_data14 (sc2mac_dat_data14) //|< i 
,.sc2mac_dat_data15 (sc2mac_dat_data15) //|< i 
,.sc2mac_dat_data16 (sc2mac_dat_data16) //|< i 
,.sc2mac_dat_data17 (sc2mac_dat_data17) //|< i 
,.sc2mac_dat_data18 (sc2mac_dat_data18) //|< i 
,.sc2mac_dat_data19 (sc2mac_dat_data19) //|< i 
,.sc2mac_dat_data20 (sc2mac_dat_data20) //|< i 
,.sc2mac_dat_data21 (sc2mac_dat_data21) //|< i 
,.sc2mac_dat_data22 (sc2mac_dat_data22) //|< i 
,.sc2mac_dat_data23 (sc2mac_dat_data23) //|< i 
,.sc2mac_dat_data24 (sc2mac_dat_data24) //|< i 
,.sc2mac_dat_data25 (sc2mac_dat_data25) //|< i 
,.sc2mac_dat_data26 (sc2mac_dat_data26) //|< i 
,.sc2mac_dat_data27 (sc2mac_dat_data27) //|< i 
,.sc2mac_dat_data28 (sc2mac_dat_data28) //|< i 
,.sc2mac_dat_data29 (sc2mac_dat_data29) //|< i 
,.sc2mac_dat_data30 (sc2mac_dat_data30) //|< i 
,.sc2mac_dat_data31 (sc2mac_dat_data31) //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_dat_pd (sc2mac_dat_pd) //|< i
  ,.sc2mac_wt_pvld (sc2mac_wt_pvld) //|< i
  ,.sc2mac_wt_mask (sc2mac_wt_mask) //|< i
//: for(my $i=0; $i<32 ; $i++){
//: print qq(
//: ,.sc2mac_wt_data${i} (sc2mac_wt_data${i}) //|< i )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_wt_data0 (sc2mac_wt_data0) //|< i 
,.sc2mac_wt_data1 (sc2mac_wt_data1) //|< i 
,.sc2mac_wt_data2 (sc2mac_wt_data2) //|< i 
,.sc2mac_wt_data3 (sc2mac_wt_data3) //|< i 
,.sc2mac_wt_data4 (sc2mac_wt_data4) //|< i 
,.sc2mac_wt_data5 (sc2mac_wt_data5) //|< i 
,.sc2mac_wt_data6 (sc2mac_wt_data6) //|< i 
,.sc2mac_wt_data7 (sc2mac_wt_data7) //|< i 
,.sc2mac_wt_data8 (sc2mac_wt_data8) //|< i 
,.sc2mac_wt_data9 (sc2mac_wt_data9) //|< i 
,.sc2mac_wt_data10 (sc2mac_wt_data10) //|< i 
,.sc2mac_wt_data11 (sc2mac_wt_data11) //|< i 
,.sc2mac_wt_data12 (sc2mac_wt_data12) //|< i 
,.sc2mac_wt_data13 (sc2mac_wt_data13) //|< i 
,.sc2mac_wt_data14 (sc2mac_wt_data14) //|< i 
,.sc2mac_wt_data15 (sc2mac_wt_data15) //|< i 
,.sc2mac_wt_data16 (sc2mac_wt_data16) //|< i 
,.sc2mac_wt_data17 (sc2mac_wt_data17) //|< i 
,.sc2mac_wt_data18 (sc2mac_wt_data18) //|< i 
,.sc2mac_wt_data19 (sc2mac_wt_data19) //|< i 
,.sc2mac_wt_data20 (sc2mac_wt_data20) //|< i 
,.sc2mac_wt_data21 (sc2mac_wt_data21) //|< i 
,.sc2mac_wt_data22 (sc2mac_wt_data22) //|< i 
,.sc2mac_wt_data23 (sc2mac_wt_data23) //|< i 
,.sc2mac_wt_data24 (sc2mac_wt_data24) //|< i 
,.sc2mac_wt_data25 (sc2mac_wt_data25) //|< i 
,.sc2mac_wt_data26 (sc2mac_wt_data26) //|< i 
,.sc2mac_wt_data27 (sc2mac_wt_data27) //|< i 
,.sc2mac_wt_data28 (sc2mac_wt_data28) //|< i 
,.sc2mac_wt_data29 (sc2mac_wt_data29) //|< i 
,.sc2mac_wt_data30 (sc2mac_wt_data30) //|< i 
,.sc2mac_wt_data31 (sc2mac_wt_data31) //|< i 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_wt_sel (sc2mac_wt_sel) //|< i
  ,.mac2accu_pvld (mac2accu_pvld) //|> o
  ,.mac2accu_mask (mac2accu_mask) //|> o
  ,.mac2accu_mode (mac2accu_mode) //|> o
//: for(my $i=0; $i<8/2 ; $i++){
//: print qq(
//: ,.mac2accu_data${i} (mac2accu_data${i}) //|> o )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.mac2accu_data0 (mac2accu_data0) //|> o 
,.mac2accu_data1 (mac2accu_data1) //|> o 
,.mac2accu_data2 (mac2accu_data2) //|> o 
,.mac2accu_data3 (mac2accu_data3) //|> o 
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.mac2accu_pd (mac2accu_pd) //|> o
  ,.reg2dp_op_en (reg2dp_op_en) //|< w
  ,.reg2dp_conv_mode (reg2dp_conv_mode) //|< w
  ,.dp2reg_done (dp2reg_done) //|> w
  ,.dla_clk_ovr_on_sync (dla_clk_ovr_on_sync) //|< i
  ,.global_clk_ovr_on_sync (global_clk_ovr_on_sync) //|< i
  ,.tmc2slcg_disable_clock_gating (tmc2slcg_disable_clock_gating) //|< i
  ,.slcg_op_en (slcg_op_en) //|< w
  );
//==========================================================
// reg
//==========================================================
wire [1:0] reg2dp_proc_precision_NC;
NV_NVDLA_CMAC_reg u_reg (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< i
  ,.csb2cmac_a_req_pd (csb2cmac_a_req_pd) //|< i
  ,.csb2cmac_a_req_pvld (csb2cmac_a_req_pvld) //|< i
  ,.dp2reg_done (dp2reg_done) //|< w
  ,.cmac_a2csb_resp_pd (cmac_a2csb_resp_pd) //|> o
  ,.cmac_a2csb_resp_valid (cmac_a2csb_resp_valid) //|> o
  ,.csb2cmac_a_req_prdy (csb2cmac_a_req_prdy) //|> o
  ,.reg2dp_conv_mode (reg2dp_conv_mode) //|> w
  ,.reg2dp_op_en (reg2dp_op_en) //|> w
  ,.reg2dp_proc_precision (reg2dp_proc_precision_NC) //|> w  //dangle
  ,.slcg_op_en (slcg_op_en) //|> w
  );
endmodule // NV_NVDLA_cmac
