// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_partition_m.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
module NV_NVDLA_partition_m (
   csb2cmac_a_req_pd //|< i
  ,csb2cmac_a_req_pvld //|< i
  ,direct_reset_ //|< i
  ,dla_reset_rstn //|< i
  ,global_clk_ovr_on //|< i
  ,nvdla_clk_ovr_on //|< i
  ,nvdla_core_clk //|< i
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
  ,test_mode //|< i
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
// NV_NVDLA_partition_m_io.v
//
input test_mode;
input direct_reset_;
input csb2cmac_a_req_pvld;
output csb2cmac_a_req_prdy;
input [62:0] csb2cmac_a_req_pd;
output cmac_a2csb_resp_valid;
output [33:0] cmac_a2csb_resp_pd;
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
output mac2accu_pvld; /* data valid */
output [8/2 -1:0] mac2accu_mask;
output mac2accu_mode;
//: for(my $i=0; $i<8/2 ; $i++){
//: print qq(
//: output [21 -1:0] mac2accu_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [21 -1:0] mac2accu_data0; 
output [21 -1:0] mac2accu_data1; 
output [21 -1:0] mac2accu_data2; 
output [21 -1:0] mac2accu_data3; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
output [8:0] mac2accu_pd;
input global_clk_ovr_on;
input tmc2slcg_disable_clock_gating;
wire dla_clk_ovr_on_sync;
wire global_clk_ovr_on_sync;
wire nvdla_core_rstn;
input nvdla_core_clk;
input dla_reset_rstn;
input nvdla_clk_ovr_on;
////////////////////////////////////////////////////////////////////////
// NVDLA Partition M: Reset Syncer //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_reset u_partition_m_reset (
   .dla_reset_rstn (dla_reset_rstn)
  ,.direct_reset_ (direct_reset_)
  ,.test_mode (test_mode)
  ,.synced_rstn (nvdla_core_rstn)
  ,.nvdla_clk (nvdla_core_clk)
  );
////////////////////////////////////////////////////////////////////////
// SLCG override
////////////////////////////////////////////////////////////////////////
NV_NVDLA_sync3d u_dla_clk_ovr_on_sync (
   .clk (nvdla_core_clk)
  ,.sync_i (nvdla_clk_ovr_on)
  ,.sync_o (dla_clk_ovr_on_sync)
  );
NV_NVDLA_sync3d_s u_global_clk_ovr_on_sync (
   .clk (nvdla_core_clk)
  ,.prst (nvdla_core_rstn)
  ,.sync_i (global_clk_ovr_on)
  ,.sync_o (global_clk_ovr_on_sync)
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition M: Convolution MAC Array //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_cmac u_NV_NVDLA_cmac (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< w
  ,.cmac_a2csb_resp_valid (cmac_a2csb_resp_valid) //|> o
  ,.cmac_a2csb_resp_pd (cmac_a2csb_resp_pd) //|> o
  ,.csb2cmac_a_req_pvld (csb2cmac_a_req_pvld) //|< i
  ,.csb2cmac_a_req_prdy (csb2cmac_a_req_prdy) //|> o
  ,.csb2cmac_a_req_pd (csb2cmac_a_req_pd) //|< i
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
  ,.dla_clk_ovr_on_sync (dla_clk_ovr_on_sync) //|< w
  ,.global_clk_ovr_on_sync (global_clk_ovr_on_sync) //|< w
  ,.tmc2slcg_disable_clock_gating (tmc2slcg_disable_clock_gating) //|< i
  );
endmodule // NV_NVDLA_partition_m
