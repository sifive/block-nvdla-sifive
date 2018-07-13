// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC_CORE_rt_in.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
module NV_NVDLA_CMAC_CORE_rt_in (
   nvdla_core_clk
  ,nvdla_core_rstn
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: ,sc2mac_dat_data${i});
//: }
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: ,in_dat_data${i});
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_data0
,sc2mac_dat_data1
,sc2mac_dat_data2
,sc2mac_dat_data3
,sc2mac_dat_data4
,sc2mac_dat_data5
,sc2mac_dat_data6
,sc2mac_dat_data7
,sc2mac_dat_data8
,sc2mac_dat_data9
,sc2mac_dat_data10
,sc2mac_dat_data11
,sc2mac_dat_data12
,sc2mac_dat_data13
,sc2mac_dat_data14
,sc2mac_dat_data15
,sc2mac_dat_data16
,sc2mac_dat_data17
,sc2mac_dat_data18
,sc2mac_dat_data19
,sc2mac_dat_data20
,sc2mac_dat_data21
,sc2mac_dat_data22
,sc2mac_dat_data23
,sc2mac_dat_data24
,sc2mac_dat_data25
,sc2mac_dat_data26
,sc2mac_dat_data27
,sc2mac_dat_data28
,sc2mac_dat_data29
,sc2mac_dat_data30
,sc2mac_dat_data31
,in_dat_data0
,in_dat_data1
,in_dat_data2
,in_dat_data3
,in_dat_data4
,in_dat_data5
,in_dat_data6
,in_dat_data7
,in_dat_data8
,in_dat_data9
,in_dat_data10
,in_dat_data11
,in_dat_data12
,in_dat_data13
,in_dat_data14
,in_dat_data15
,in_dat_data16
,in_dat_data17
,in_dat_data18
,in_dat_data19
,in_dat_data20
,in_dat_data21
,in_dat_data22
,in_dat_data23
,in_dat_data24
,in_dat_data25
,in_dat_data26
,in_dat_data27
,in_dat_data28
,in_dat_data29
,in_dat_data30
,in_dat_data31
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_mask
  ,sc2mac_dat_pd
  ,sc2mac_dat_pvld
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: ,sc2mac_wt_data${i});
//: }
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: ,in_wt_data${i});
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_wt_data0
,sc2mac_wt_data1
,sc2mac_wt_data2
,sc2mac_wt_data3
,sc2mac_wt_data4
,sc2mac_wt_data5
,sc2mac_wt_data6
,sc2mac_wt_data7
,sc2mac_wt_data8
,sc2mac_wt_data9
,sc2mac_wt_data10
,sc2mac_wt_data11
,sc2mac_wt_data12
,sc2mac_wt_data13
,sc2mac_wt_data14
,sc2mac_wt_data15
,sc2mac_wt_data16
,sc2mac_wt_data17
,sc2mac_wt_data18
,sc2mac_wt_data19
,sc2mac_wt_data20
,sc2mac_wt_data21
,sc2mac_wt_data22
,sc2mac_wt_data23
,sc2mac_wt_data24
,sc2mac_wt_data25
,sc2mac_wt_data26
,sc2mac_wt_data27
,sc2mac_wt_data28
,sc2mac_wt_data29
,sc2mac_wt_data30
,sc2mac_wt_data31
,in_wt_data0
,in_wt_data1
,in_wt_data2
,in_wt_data3
,in_wt_data4
,in_wt_data5
,in_wt_data6
,in_wt_data7
,in_wt_data8
,in_wt_data9
,in_wt_data10
,in_wt_data11
,in_wt_data12
,in_wt_data13
,in_wt_data14
,in_wt_data15
,in_wt_data16
,in_wt_data17
,in_wt_data18
,in_wt_data19
,in_wt_data20
,in_wt_data21
,in_wt_data22
,in_wt_data23
,in_wt_data24
,in_wt_data25
,in_wt_data26
,in_wt_data27
,in_wt_data28
,in_wt_data29
,in_wt_data30
,in_wt_data31
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_mask
  ,sc2mac_wt_pvld
  ,sc2mac_wt_sel
  ,in_dat_mask
  ,in_dat_pd
  ,in_dat_pvld
  ,in_dat_stripe_end
  ,in_dat_stripe_st
  ,in_wt_mask
  ,in_wt_pvld
  ,in_wt_sel
  );
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: input [8 -1:0] sc2mac_dat_data${i};);
//: }
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: output [8 -1:0] in_dat_data${i};);
//: }
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: input [8 -1:0] sc2mac_wt_data${i};);
//: }
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: output [8 -1:0] in_wt_data${i};);
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [8 -1:0] sc2mac_dat_data0;
input [8 -1:0] sc2mac_dat_data1;
input [8 -1:0] sc2mac_dat_data2;
input [8 -1:0] sc2mac_dat_data3;
input [8 -1:0] sc2mac_dat_data4;
input [8 -1:0] sc2mac_dat_data5;
input [8 -1:0] sc2mac_dat_data6;
input [8 -1:0] sc2mac_dat_data7;
input [8 -1:0] sc2mac_dat_data8;
input [8 -1:0] sc2mac_dat_data9;
input [8 -1:0] sc2mac_dat_data10;
input [8 -1:0] sc2mac_dat_data11;
input [8 -1:0] sc2mac_dat_data12;
input [8 -1:0] sc2mac_dat_data13;
input [8 -1:0] sc2mac_dat_data14;
input [8 -1:0] sc2mac_dat_data15;
input [8 -1:0] sc2mac_dat_data16;
input [8 -1:0] sc2mac_dat_data17;
input [8 -1:0] sc2mac_dat_data18;
input [8 -1:0] sc2mac_dat_data19;
input [8 -1:0] sc2mac_dat_data20;
input [8 -1:0] sc2mac_dat_data21;
input [8 -1:0] sc2mac_dat_data22;
input [8 -1:0] sc2mac_dat_data23;
input [8 -1:0] sc2mac_dat_data24;
input [8 -1:0] sc2mac_dat_data25;
input [8 -1:0] sc2mac_dat_data26;
input [8 -1:0] sc2mac_dat_data27;
input [8 -1:0] sc2mac_dat_data28;
input [8 -1:0] sc2mac_dat_data29;
input [8 -1:0] sc2mac_dat_data30;
input [8 -1:0] sc2mac_dat_data31;
output [8 -1:0] in_dat_data0;
output [8 -1:0] in_dat_data1;
output [8 -1:0] in_dat_data2;
output [8 -1:0] in_dat_data3;
output [8 -1:0] in_dat_data4;
output [8 -1:0] in_dat_data5;
output [8 -1:0] in_dat_data6;
output [8 -1:0] in_dat_data7;
output [8 -1:0] in_dat_data8;
output [8 -1:0] in_dat_data9;
output [8 -1:0] in_dat_data10;
output [8 -1:0] in_dat_data11;
output [8 -1:0] in_dat_data12;
output [8 -1:0] in_dat_data13;
output [8 -1:0] in_dat_data14;
output [8 -1:0] in_dat_data15;
output [8 -1:0] in_dat_data16;
output [8 -1:0] in_dat_data17;
output [8 -1:0] in_dat_data18;
output [8 -1:0] in_dat_data19;
output [8 -1:0] in_dat_data20;
output [8 -1:0] in_dat_data21;
output [8 -1:0] in_dat_data22;
output [8 -1:0] in_dat_data23;
output [8 -1:0] in_dat_data24;
output [8 -1:0] in_dat_data25;
output [8 -1:0] in_dat_data26;
output [8 -1:0] in_dat_data27;
output [8 -1:0] in_dat_data28;
output [8 -1:0] in_dat_data29;
output [8 -1:0] in_dat_data30;
output [8 -1:0] in_dat_data31;
input [8 -1:0] sc2mac_wt_data0;
input [8 -1:0] sc2mac_wt_data1;
input [8 -1:0] sc2mac_wt_data2;
input [8 -1:0] sc2mac_wt_data3;
input [8 -1:0] sc2mac_wt_data4;
input [8 -1:0] sc2mac_wt_data5;
input [8 -1:0] sc2mac_wt_data6;
input [8 -1:0] sc2mac_wt_data7;
input [8 -1:0] sc2mac_wt_data8;
input [8 -1:0] sc2mac_wt_data9;
input [8 -1:0] sc2mac_wt_data10;
input [8 -1:0] sc2mac_wt_data11;
input [8 -1:0] sc2mac_wt_data12;
input [8 -1:0] sc2mac_wt_data13;
input [8 -1:0] sc2mac_wt_data14;
input [8 -1:0] sc2mac_wt_data15;
input [8 -1:0] sc2mac_wt_data16;
input [8 -1:0] sc2mac_wt_data17;
input [8 -1:0] sc2mac_wt_data18;
input [8 -1:0] sc2mac_wt_data19;
input [8 -1:0] sc2mac_wt_data20;
input [8 -1:0] sc2mac_wt_data21;
input [8 -1:0] sc2mac_wt_data22;
input [8 -1:0] sc2mac_wt_data23;
input [8 -1:0] sc2mac_wt_data24;
input [8 -1:0] sc2mac_wt_data25;
input [8 -1:0] sc2mac_wt_data26;
input [8 -1:0] sc2mac_wt_data27;
input [8 -1:0] sc2mac_wt_data28;
input [8 -1:0] sc2mac_wt_data29;
input [8 -1:0] sc2mac_wt_data30;
input [8 -1:0] sc2mac_wt_data31;
output [8 -1:0] in_wt_data0;
output [8 -1:0] in_wt_data1;
output [8 -1:0] in_wt_data2;
output [8 -1:0] in_wt_data3;
output [8 -1:0] in_wt_data4;
output [8 -1:0] in_wt_data5;
output [8 -1:0] in_wt_data6;
output [8 -1:0] in_wt_data7;
output [8 -1:0] in_wt_data8;
output [8 -1:0] in_wt_data9;
output [8 -1:0] in_wt_data10;
output [8 -1:0] in_wt_data11;
output [8 -1:0] in_wt_data12;
output [8 -1:0] in_wt_data13;
output [8 -1:0] in_wt_data14;
output [8 -1:0] in_wt_data15;
output [8 -1:0] in_wt_data16;
output [8 -1:0] in_wt_data17;
output [8 -1:0] in_wt_data18;
output [8 -1:0] in_wt_data19;
output [8 -1:0] in_wt_data20;
output [8 -1:0] in_wt_data21;
output [8 -1:0] in_wt_data22;
output [8 -1:0] in_wt_data23;
output [8 -1:0] in_wt_data24;
output [8 -1:0] in_wt_data25;
output [8 -1:0] in_wt_data26;
output [8 -1:0] in_wt_data27;
output [8 -1:0] in_wt_data28;
output [8 -1:0] in_wt_data29;
output [8 -1:0] in_wt_data30;
output [8 -1:0] in_wt_data31;
//| eperl: generated_end (DO NOT EDIT ABOVE)
input nvdla_core_clk;
input nvdla_core_rstn;
input [32 -1:0] sc2mac_dat_mask;
input [8:0] sc2mac_dat_pd;
input sc2mac_dat_pvld;
input [32 -1:0] sc2mac_wt_mask;
input sc2mac_wt_pvld;
input [8/2 -1:0] sc2mac_wt_sel;
output [32 -1:0] in_dat_mask;
output [8:0] in_dat_pd;
output in_dat_pvld;
output in_dat_stripe_end;
output in_dat_stripe_st;
output [32 -1:0] in_wt_mask;
output in_wt_pvld;
output [8/2 -1:0] in_wt_sel;
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: wire [8 -1:0] in_dat_data${i};
//: wire [8 -1:0] in_wt_data${i};)
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [8 -1:0] in_dat_data0;
wire [8 -1:0] in_wt_data0;
wire [8 -1:0] in_dat_data1;
wire [8 -1:0] in_wt_data1;
wire [8 -1:0] in_dat_data2;
wire [8 -1:0] in_wt_data2;
wire [8 -1:0] in_dat_data3;
wire [8 -1:0] in_wt_data3;
wire [8 -1:0] in_dat_data4;
wire [8 -1:0] in_wt_data4;
wire [8 -1:0] in_dat_data5;
wire [8 -1:0] in_wt_data5;
wire [8 -1:0] in_dat_data6;
wire [8 -1:0] in_wt_data6;
wire [8 -1:0] in_dat_data7;
wire [8 -1:0] in_wt_data7;
wire [8 -1:0] in_dat_data8;
wire [8 -1:0] in_wt_data8;
wire [8 -1:0] in_dat_data9;
wire [8 -1:0] in_wt_data9;
wire [8 -1:0] in_dat_data10;
wire [8 -1:0] in_wt_data10;
wire [8 -1:0] in_dat_data11;
wire [8 -1:0] in_wt_data11;
wire [8 -1:0] in_dat_data12;
wire [8 -1:0] in_wt_data12;
wire [8 -1:0] in_dat_data13;
wire [8 -1:0] in_wt_data13;
wire [8 -1:0] in_dat_data14;
wire [8 -1:0] in_wt_data14;
wire [8 -1:0] in_dat_data15;
wire [8 -1:0] in_wt_data15;
wire [8 -1:0] in_dat_data16;
wire [8 -1:0] in_wt_data16;
wire [8 -1:0] in_dat_data17;
wire [8 -1:0] in_wt_data17;
wire [8 -1:0] in_dat_data18;
wire [8 -1:0] in_wt_data18;
wire [8 -1:0] in_dat_data19;
wire [8 -1:0] in_wt_data19;
wire [8 -1:0] in_dat_data20;
wire [8 -1:0] in_wt_data20;
wire [8 -1:0] in_dat_data21;
wire [8 -1:0] in_wt_data21;
wire [8 -1:0] in_dat_data22;
wire [8 -1:0] in_wt_data22;
wire [8 -1:0] in_dat_data23;
wire [8 -1:0] in_wt_data23;
wire [8 -1:0] in_dat_data24;
wire [8 -1:0] in_wt_data24;
wire [8 -1:0] in_dat_data25;
wire [8 -1:0] in_wt_data25;
wire [8 -1:0] in_dat_data26;
wire [8 -1:0] in_wt_data26;
wire [8 -1:0] in_dat_data27;
wire [8 -1:0] in_wt_data27;
wire [8 -1:0] in_dat_data28;
wire [8 -1:0] in_wt_data28;
wire [8 -1:0] in_dat_data29;
wire [8 -1:0] in_wt_data29;
wire [8 -1:0] in_dat_data30;
wire [8 -1:0] in_wt_data30;
wire [8 -1:0] in_dat_data31;
wire [8 -1:0] in_wt_data31;
//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [32 -1:0] in_dat_mask;
wire [8:0] in_dat_pd;
wire in_dat_pvld;
wire in_dat_stripe_end;
wire in_dat_stripe_st;
wire [32 -1:0] in_wt_mask;
wire in_wt_pvld;
wire [8/2 -1:0] in_wt_sel;
wire in_rt_dat_pvld_d0;
wire [32 -1:0] in_rt_dat_mask_d0;
wire [8:0] in_rt_dat_pd_d0;
wire [8*32 -1:0] in_rt_dat_data_d0;
//: for(my $i=1; $i<2 +1; $i++){
//: print qq(
//: reg in_rt_dat_pvld_d${i};
//: reg [32 -1:0] in_rt_dat_mask_d${i};
//: reg [8:0] in_rt_dat_pd_d${i};
//: reg [8*32 -1:0] in_rt_dat_data_d${i};
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

reg in_rt_dat_pvld_d1;
reg [32 -1:0] in_rt_dat_mask_d1;
reg [8:0] in_rt_dat_pd_d1;
reg [8*32 -1:0] in_rt_dat_data_d1;

reg in_rt_dat_pvld_d2;
reg [32 -1:0] in_rt_dat_mask_d2;
reg [8:0] in_rt_dat_pd_d2;
reg [8*32 -1:0] in_rt_dat_data_d2;

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [8*32 -1:0] in_rt_wt_data_d0;
wire [32 -1:0] in_rt_wt_mask_d0;
wire in_rt_wt_pvld_d0;
wire [8/2 -1:0] in_rt_wt_sel_d0;
//: for(my $i=1; $i<2 +1; $i++){
//: print qq(
//: reg [8*32 -1:0] in_rt_wt_data_d${i};
//: reg [32 -1:0] in_rt_wt_mask_d${i};
//: reg in_rt_wt_pvld_d${i};
//: reg [8/2 -1:0] in_rt_wt_sel_d${i};
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

reg [8*32 -1:0] in_rt_wt_data_d1;
reg [32 -1:0] in_rt_wt_mask_d1;
reg in_rt_wt_pvld_d1;
reg [8/2 -1:0] in_rt_wt_sel_d1;

reg [8*32 -1:0] in_rt_wt_data_d2;
reg [32 -1:0] in_rt_wt_mask_d2;
reg in_rt_wt_pvld_d2;
reg [8/2 -1:0] in_rt_wt_sel_d2;

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign in_rt_dat_pvld_d0 = sc2mac_dat_pvld;
assign in_rt_dat_mask_d0 = sc2mac_dat_mask;
assign in_rt_dat_pd_d0 = sc2mac_dat_pd;
assign in_rt_wt_pvld_d0 = sc2mac_wt_pvld;
assign in_rt_wt_mask_d0 = sc2mac_wt_mask;
assign in_rt_wt_sel_d0 = sc2mac_wt_sel;
//: my $kk=8;
//: for(my $k = 0; $k <32; $k ++) {
//: print "wire [$kk-1:0]  in_rt_dat_data${k}_d0 = sc2mac_dat_data${k}; \n";
//: }
//: for(my $k = 0; $k <32; $k ++) {
//: print "wire [$kk-1:0]  in_rt_wt_data${k}_d0 = sc2mac_wt_data${k}; \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
wire [8-1:0]  in_rt_dat_data0_d0 = sc2mac_dat_data0; 
wire [8-1:0]  in_rt_dat_data1_d0 = sc2mac_dat_data1; 
wire [8-1:0]  in_rt_dat_data2_d0 = sc2mac_dat_data2; 
wire [8-1:0]  in_rt_dat_data3_d0 = sc2mac_dat_data3; 
wire [8-1:0]  in_rt_dat_data4_d0 = sc2mac_dat_data4; 
wire [8-1:0]  in_rt_dat_data5_d0 = sc2mac_dat_data5; 
wire [8-1:0]  in_rt_dat_data6_d0 = sc2mac_dat_data6; 
wire [8-1:0]  in_rt_dat_data7_d0 = sc2mac_dat_data7; 
wire [8-1:0]  in_rt_dat_data8_d0 = sc2mac_dat_data8; 
wire [8-1:0]  in_rt_dat_data9_d0 = sc2mac_dat_data9; 
wire [8-1:0]  in_rt_dat_data10_d0 = sc2mac_dat_data10; 
wire [8-1:0]  in_rt_dat_data11_d0 = sc2mac_dat_data11; 
wire [8-1:0]  in_rt_dat_data12_d0 = sc2mac_dat_data12; 
wire [8-1:0]  in_rt_dat_data13_d0 = sc2mac_dat_data13; 
wire [8-1:0]  in_rt_dat_data14_d0 = sc2mac_dat_data14; 
wire [8-1:0]  in_rt_dat_data15_d0 = sc2mac_dat_data15; 
wire [8-1:0]  in_rt_dat_data16_d0 = sc2mac_dat_data16; 
wire [8-1:0]  in_rt_dat_data17_d0 = sc2mac_dat_data17; 
wire [8-1:0]  in_rt_dat_data18_d0 = sc2mac_dat_data18; 
wire [8-1:0]  in_rt_dat_data19_d0 = sc2mac_dat_data19; 
wire [8-1:0]  in_rt_dat_data20_d0 = sc2mac_dat_data20; 
wire [8-1:0]  in_rt_dat_data21_d0 = sc2mac_dat_data21; 
wire [8-1:0]  in_rt_dat_data22_d0 = sc2mac_dat_data22; 
wire [8-1:0]  in_rt_dat_data23_d0 = sc2mac_dat_data23; 
wire [8-1:0]  in_rt_dat_data24_d0 = sc2mac_dat_data24; 
wire [8-1:0]  in_rt_dat_data25_d0 = sc2mac_dat_data25; 
wire [8-1:0]  in_rt_dat_data26_d0 = sc2mac_dat_data26; 
wire [8-1:0]  in_rt_dat_data27_d0 = sc2mac_dat_data27; 
wire [8-1:0]  in_rt_dat_data28_d0 = sc2mac_dat_data28; 
wire [8-1:0]  in_rt_dat_data29_d0 = sc2mac_dat_data29; 
wire [8-1:0]  in_rt_dat_data30_d0 = sc2mac_dat_data30; 
wire [8-1:0]  in_rt_dat_data31_d0 = sc2mac_dat_data31; 
wire [8-1:0]  in_rt_wt_data0_d0 = sc2mac_wt_data0; 
wire [8-1:0]  in_rt_wt_data1_d0 = sc2mac_wt_data1; 
wire [8-1:0]  in_rt_wt_data2_d0 = sc2mac_wt_data2; 
wire [8-1:0]  in_rt_wt_data3_d0 = sc2mac_wt_data3; 
wire [8-1:0]  in_rt_wt_data4_d0 = sc2mac_wt_data4; 
wire [8-1:0]  in_rt_wt_data5_d0 = sc2mac_wt_data5; 
wire [8-1:0]  in_rt_wt_data6_d0 = sc2mac_wt_data6; 
wire [8-1:0]  in_rt_wt_data7_d0 = sc2mac_wt_data7; 
wire [8-1:0]  in_rt_wt_data8_d0 = sc2mac_wt_data8; 
wire [8-1:0]  in_rt_wt_data9_d0 = sc2mac_wt_data9; 
wire [8-1:0]  in_rt_wt_data10_d0 = sc2mac_wt_data10; 
wire [8-1:0]  in_rt_wt_data11_d0 = sc2mac_wt_data11; 
wire [8-1:0]  in_rt_wt_data12_d0 = sc2mac_wt_data12; 
wire [8-1:0]  in_rt_wt_data13_d0 = sc2mac_wt_data13; 
wire [8-1:0]  in_rt_wt_data14_d0 = sc2mac_wt_data14; 
wire [8-1:0]  in_rt_wt_data15_d0 = sc2mac_wt_data15; 
wire [8-1:0]  in_rt_wt_data16_d0 = sc2mac_wt_data16; 
wire [8-1:0]  in_rt_wt_data17_d0 = sc2mac_wt_data17; 
wire [8-1:0]  in_rt_wt_data18_d0 = sc2mac_wt_data18; 
wire [8-1:0]  in_rt_wt_data19_d0 = sc2mac_wt_data19; 
wire [8-1:0]  in_rt_wt_data20_d0 = sc2mac_wt_data20; 
wire [8-1:0]  in_rt_wt_data21_d0 = sc2mac_wt_data21; 
wire [8-1:0]  in_rt_wt_data22_d0 = sc2mac_wt_data22; 
wire [8-1:0]  in_rt_wt_data23_d0 = sc2mac_wt_data23; 
wire [8-1:0]  in_rt_wt_data24_d0 = sc2mac_wt_data24; 
wire [8-1:0]  in_rt_wt_data25_d0 = sc2mac_wt_data25; 
wire [8-1:0]  in_rt_wt_data26_d0 = sc2mac_wt_data26; 
wire [8-1:0]  in_rt_wt_data27_d0 = sc2mac_wt_data27; 
wire [8-1:0]  in_rt_wt_data28_d0 = sc2mac_wt_data28; 
wire [8-1:0]  in_rt_wt_data29_d0 = sc2mac_wt_data29; 
wire [8-1:0]  in_rt_wt_data30_d0 = sc2mac_wt_data30; 
wire [8-1:0]  in_rt_wt_data31_d0 = sc2mac_wt_data31; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
//==========================================================
// Retiming flops,add latency.
//==========================================================
//: my $latency = 2;
//: my $bpe=8;
//: for(my $i = 0; $i < $latency; $i ++) {
//: my $j = $i + 1;
//: &eperl::flop("-nodeclare -q  in_rt_dat_pvld_d${j}  -d \"in_rt_dat_pvld_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn ");
//: &eperl::flop("-nodeclare -q  in_rt_dat_mask_d${j}  -en \"in_rt_dat_pvld_d${i} | in_rt_dat_pvld_d${j}\" -d  \"in_rt_dat_mask_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn ");
//: &eperl::flop("-nodeclare -q  in_rt_dat_pd_d${j}    -en \"in_rt_dat_pvld_d${i} | in_rt_dat_pvld_d${j}\" -d  \"in_rt_dat_pd_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn ");
//: for(my $k = 0; $k <32; $k ++) {
//: &eperl::flop("-norst -wid $bpe -q  in_rt_dat_data${k}_d${j}  -en \"in_rt_dat_mask_d${i}[${k}]\" -d  \"in_rt_dat_data${k}_d${i}\" -clk nvdla_core_clk");
//: }
//:
//: &eperl::flop("-nodeclare -q  in_rt_wt_pvld_d${j}  -d \"in_rt_wt_pvld_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn ");
//: &eperl::flop("-nodeclare -q  in_rt_wt_mask_d${j}  -en \"in_rt_wt_pvld_d${i} | in_rt_wt_pvld_d${j}\" -d  \"in_rt_wt_mask_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn ");
//: &eperl::flop("-nodeclare -q  in_rt_wt_sel_d${j} -en \"in_rt_wt_pvld_d${i} | in_rt_wt_pvld_d${j}\" -d  \"in_rt_wt_sel_d${i}\" -clk nvdla_core_clk -rst nvdla_core_rstn ");
//:
//: my $bpe = 8;
//: for(my $k = 0; $k <32; $k ++) {
//: &eperl::flop("-norst -wid $bpe -q  in_rt_wt_data${k}_d${j}  -en \"in_rt_wt_mask_d${i}[${k}]\" -d  \"in_rt_wt_data${k}_d${i}\" -clk nvdla_core_clk");
//: }
//: }
//:
//: my $i = $latency;
//: print "assign    in_dat_pvld = in_rt_dat_pvld_d${i};\n";
//: print "assign    in_dat_mask = in_rt_dat_mask_d${i};\n";
//: print "assign    in_dat_pd   = in_rt_dat_pd_d${i};\n";
//: print "assign    in_wt_pvld = in_rt_wt_pvld_d${i};\n";
//: print "assign    in_wt_mask = in_rt_wt_mask_d${i};\n";
//: print "assign    in_wt_sel = in_rt_wt_sel_d${i};\n";
//:
//: my $k=$latency;
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: assign in_dat_data${i} = in_rt_dat_data${i}_d${k}; )
//: }
//: for(my $i=0; $i<32; $i++){
//: print qq(
//: assign in_wt_data${i} = in_rt_wt_data${i}_d${k};)
//: }
//: my $i= 5;
//: my $j= 6;
//: print qq(
//: assign in_dat_stripe_st = in_dat_pd[${i}];
//: assign in_dat_stripe_end = in_dat_pd[${j}]; );
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_dat_pvld_d1 <= 'b0;
   end else begin
       in_rt_dat_pvld_d1 <= in_rt_dat_pvld_d0;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_dat_mask_d1 <= 'b0;
   end else begin
       if ((in_rt_dat_pvld_d0 | in_rt_dat_pvld_d1) == 1'b1) begin
           in_rt_dat_mask_d1 <= in_rt_dat_mask_d0;
       // VCS coverage off
       end else if ((in_rt_dat_pvld_d0 | in_rt_dat_pvld_d1) == 1'b0) begin
       end else begin
           in_rt_dat_mask_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_dat_pd_d1 <= 'b0;
   end else begin
       if ((in_rt_dat_pvld_d0 | in_rt_dat_pvld_d1) == 1'b1) begin
           in_rt_dat_pd_d1 <= in_rt_dat_pd_d0;
       // VCS coverage off
       end else if ((in_rt_dat_pvld_d0 | in_rt_dat_pvld_d1) == 1'b0) begin
       end else begin
           in_rt_dat_pd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] in_rt_dat_data0_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[0]) == 1'b1) begin
           in_rt_dat_data0_d1 <= in_rt_dat_data0_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[0]) == 1'b0) begin
       end else begin
           in_rt_dat_data0_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data1_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[1]) == 1'b1) begin
           in_rt_dat_data1_d1 <= in_rt_dat_data1_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[1]) == 1'b0) begin
       end else begin
           in_rt_dat_data1_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data2_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[2]) == 1'b1) begin
           in_rt_dat_data2_d1 <= in_rt_dat_data2_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[2]) == 1'b0) begin
       end else begin
           in_rt_dat_data2_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data3_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[3]) == 1'b1) begin
           in_rt_dat_data3_d1 <= in_rt_dat_data3_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[3]) == 1'b0) begin
       end else begin
           in_rt_dat_data3_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data4_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[4]) == 1'b1) begin
           in_rt_dat_data4_d1 <= in_rt_dat_data4_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[4]) == 1'b0) begin
       end else begin
           in_rt_dat_data4_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data5_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[5]) == 1'b1) begin
           in_rt_dat_data5_d1 <= in_rt_dat_data5_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[5]) == 1'b0) begin
       end else begin
           in_rt_dat_data5_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data6_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[6]) == 1'b1) begin
           in_rt_dat_data6_d1 <= in_rt_dat_data6_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[6]) == 1'b0) begin
       end else begin
           in_rt_dat_data6_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data7_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[7]) == 1'b1) begin
           in_rt_dat_data7_d1 <= in_rt_dat_data7_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[7]) == 1'b0) begin
       end else begin
           in_rt_dat_data7_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data8_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[8]) == 1'b1) begin
           in_rt_dat_data8_d1 <= in_rt_dat_data8_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[8]) == 1'b0) begin
       end else begin
           in_rt_dat_data8_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data9_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[9]) == 1'b1) begin
           in_rt_dat_data9_d1 <= in_rt_dat_data9_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[9]) == 1'b0) begin
       end else begin
           in_rt_dat_data9_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data10_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[10]) == 1'b1) begin
           in_rt_dat_data10_d1 <= in_rt_dat_data10_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[10]) == 1'b0) begin
       end else begin
           in_rt_dat_data10_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data11_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[11]) == 1'b1) begin
           in_rt_dat_data11_d1 <= in_rt_dat_data11_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[11]) == 1'b0) begin
       end else begin
           in_rt_dat_data11_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data12_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[12]) == 1'b1) begin
           in_rt_dat_data12_d1 <= in_rt_dat_data12_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[12]) == 1'b0) begin
       end else begin
           in_rt_dat_data12_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data13_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[13]) == 1'b1) begin
           in_rt_dat_data13_d1 <= in_rt_dat_data13_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[13]) == 1'b0) begin
       end else begin
           in_rt_dat_data13_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data14_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[14]) == 1'b1) begin
           in_rt_dat_data14_d1 <= in_rt_dat_data14_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[14]) == 1'b0) begin
       end else begin
           in_rt_dat_data14_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data15_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[15]) == 1'b1) begin
           in_rt_dat_data15_d1 <= in_rt_dat_data15_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[15]) == 1'b0) begin
       end else begin
           in_rt_dat_data15_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data16_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[16]) == 1'b1) begin
           in_rt_dat_data16_d1 <= in_rt_dat_data16_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[16]) == 1'b0) begin
       end else begin
           in_rt_dat_data16_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data17_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[17]) == 1'b1) begin
           in_rt_dat_data17_d1 <= in_rt_dat_data17_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[17]) == 1'b0) begin
       end else begin
           in_rt_dat_data17_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data18_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[18]) == 1'b1) begin
           in_rt_dat_data18_d1 <= in_rt_dat_data18_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[18]) == 1'b0) begin
       end else begin
           in_rt_dat_data18_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data19_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[19]) == 1'b1) begin
           in_rt_dat_data19_d1 <= in_rt_dat_data19_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[19]) == 1'b0) begin
       end else begin
           in_rt_dat_data19_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data20_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[20]) == 1'b1) begin
           in_rt_dat_data20_d1 <= in_rt_dat_data20_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[20]) == 1'b0) begin
       end else begin
           in_rt_dat_data20_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data21_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[21]) == 1'b1) begin
           in_rt_dat_data21_d1 <= in_rt_dat_data21_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[21]) == 1'b0) begin
       end else begin
           in_rt_dat_data21_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data22_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[22]) == 1'b1) begin
           in_rt_dat_data22_d1 <= in_rt_dat_data22_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[22]) == 1'b0) begin
       end else begin
           in_rt_dat_data22_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data23_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[23]) == 1'b1) begin
           in_rt_dat_data23_d1 <= in_rt_dat_data23_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[23]) == 1'b0) begin
       end else begin
           in_rt_dat_data23_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data24_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[24]) == 1'b1) begin
           in_rt_dat_data24_d1 <= in_rt_dat_data24_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[24]) == 1'b0) begin
       end else begin
           in_rt_dat_data24_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data25_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[25]) == 1'b1) begin
           in_rt_dat_data25_d1 <= in_rt_dat_data25_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[25]) == 1'b0) begin
       end else begin
           in_rt_dat_data25_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data26_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[26]) == 1'b1) begin
           in_rt_dat_data26_d1 <= in_rt_dat_data26_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[26]) == 1'b0) begin
       end else begin
           in_rt_dat_data26_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data27_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[27]) == 1'b1) begin
           in_rt_dat_data27_d1 <= in_rt_dat_data27_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[27]) == 1'b0) begin
       end else begin
           in_rt_dat_data27_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data28_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[28]) == 1'b1) begin
           in_rt_dat_data28_d1 <= in_rt_dat_data28_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[28]) == 1'b0) begin
       end else begin
           in_rt_dat_data28_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data29_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[29]) == 1'b1) begin
           in_rt_dat_data29_d1 <= in_rt_dat_data29_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[29]) == 1'b0) begin
       end else begin
           in_rt_dat_data29_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data30_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[30]) == 1'b1) begin
           in_rt_dat_data30_d1 <= in_rt_dat_data30_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[30]) == 1'b0) begin
       end else begin
           in_rt_dat_data30_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data31_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d0[31]) == 1'b1) begin
           in_rt_dat_data31_d1 <= in_rt_dat_data31_d0;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d0[31]) == 1'b0) begin
       end else begin
           in_rt_dat_data31_d1 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_wt_pvld_d1 <= 'b0;
   end else begin
       in_rt_wt_pvld_d1 <= in_rt_wt_pvld_d0;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_wt_mask_d1 <= 'b0;
   end else begin
       if ((in_rt_wt_pvld_d0 | in_rt_wt_pvld_d1) == 1'b1) begin
           in_rt_wt_mask_d1 <= in_rt_wt_mask_d0;
       // VCS coverage off
       end else if ((in_rt_wt_pvld_d0 | in_rt_wt_pvld_d1) == 1'b0) begin
       end else begin
           in_rt_wt_mask_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_wt_sel_d1 <= 'b0;
   end else begin
       if ((in_rt_wt_pvld_d0 | in_rt_wt_pvld_d1) == 1'b1) begin
           in_rt_wt_sel_d1 <= in_rt_wt_sel_d0;
       // VCS coverage off
       end else if ((in_rt_wt_pvld_d0 | in_rt_wt_pvld_d1) == 1'b0) begin
       end else begin
           in_rt_wt_sel_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] in_rt_wt_data0_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[0]) == 1'b1) begin
           in_rt_wt_data0_d1 <= in_rt_wt_data0_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[0]) == 1'b0) begin
       end else begin
           in_rt_wt_data0_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data1_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[1]) == 1'b1) begin
           in_rt_wt_data1_d1 <= in_rt_wt_data1_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[1]) == 1'b0) begin
       end else begin
           in_rt_wt_data1_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data2_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[2]) == 1'b1) begin
           in_rt_wt_data2_d1 <= in_rt_wt_data2_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[2]) == 1'b0) begin
       end else begin
           in_rt_wt_data2_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data3_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[3]) == 1'b1) begin
           in_rt_wt_data3_d1 <= in_rt_wt_data3_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[3]) == 1'b0) begin
       end else begin
           in_rt_wt_data3_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data4_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[4]) == 1'b1) begin
           in_rt_wt_data4_d1 <= in_rt_wt_data4_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[4]) == 1'b0) begin
       end else begin
           in_rt_wt_data4_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data5_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[5]) == 1'b1) begin
           in_rt_wt_data5_d1 <= in_rt_wt_data5_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[5]) == 1'b0) begin
       end else begin
           in_rt_wt_data5_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data6_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[6]) == 1'b1) begin
           in_rt_wt_data6_d1 <= in_rt_wt_data6_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[6]) == 1'b0) begin
       end else begin
           in_rt_wt_data6_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data7_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[7]) == 1'b1) begin
           in_rt_wt_data7_d1 <= in_rt_wt_data7_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[7]) == 1'b0) begin
       end else begin
           in_rt_wt_data7_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data8_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[8]) == 1'b1) begin
           in_rt_wt_data8_d1 <= in_rt_wt_data8_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[8]) == 1'b0) begin
       end else begin
           in_rt_wt_data8_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data9_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[9]) == 1'b1) begin
           in_rt_wt_data9_d1 <= in_rt_wt_data9_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[9]) == 1'b0) begin
       end else begin
           in_rt_wt_data9_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data10_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[10]) == 1'b1) begin
           in_rt_wt_data10_d1 <= in_rt_wt_data10_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[10]) == 1'b0) begin
       end else begin
           in_rt_wt_data10_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data11_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[11]) == 1'b1) begin
           in_rt_wt_data11_d1 <= in_rt_wt_data11_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[11]) == 1'b0) begin
       end else begin
           in_rt_wt_data11_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data12_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[12]) == 1'b1) begin
           in_rt_wt_data12_d1 <= in_rt_wt_data12_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[12]) == 1'b0) begin
       end else begin
           in_rt_wt_data12_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data13_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[13]) == 1'b1) begin
           in_rt_wt_data13_d1 <= in_rt_wt_data13_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[13]) == 1'b0) begin
       end else begin
           in_rt_wt_data13_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data14_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[14]) == 1'b1) begin
           in_rt_wt_data14_d1 <= in_rt_wt_data14_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[14]) == 1'b0) begin
       end else begin
           in_rt_wt_data14_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data15_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[15]) == 1'b1) begin
           in_rt_wt_data15_d1 <= in_rt_wt_data15_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[15]) == 1'b0) begin
       end else begin
           in_rt_wt_data15_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data16_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[16]) == 1'b1) begin
           in_rt_wt_data16_d1 <= in_rt_wt_data16_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[16]) == 1'b0) begin
       end else begin
           in_rt_wt_data16_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data17_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[17]) == 1'b1) begin
           in_rt_wt_data17_d1 <= in_rt_wt_data17_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[17]) == 1'b0) begin
       end else begin
           in_rt_wt_data17_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data18_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[18]) == 1'b1) begin
           in_rt_wt_data18_d1 <= in_rt_wt_data18_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[18]) == 1'b0) begin
       end else begin
           in_rt_wt_data18_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data19_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[19]) == 1'b1) begin
           in_rt_wt_data19_d1 <= in_rt_wt_data19_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[19]) == 1'b0) begin
       end else begin
           in_rt_wt_data19_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data20_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[20]) == 1'b1) begin
           in_rt_wt_data20_d1 <= in_rt_wt_data20_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[20]) == 1'b0) begin
       end else begin
           in_rt_wt_data20_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data21_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[21]) == 1'b1) begin
           in_rt_wt_data21_d1 <= in_rt_wt_data21_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[21]) == 1'b0) begin
       end else begin
           in_rt_wt_data21_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data22_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[22]) == 1'b1) begin
           in_rt_wt_data22_d1 <= in_rt_wt_data22_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[22]) == 1'b0) begin
       end else begin
           in_rt_wt_data22_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data23_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[23]) == 1'b1) begin
           in_rt_wt_data23_d1 <= in_rt_wt_data23_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[23]) == 1'b0) begin
       end else begin
           in_rt_wt_data23_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data24_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[24]) == 1'b1) begin
           in_rt_wt_data24_d1 <= in_rt_wt_data24_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[24]) == 1'b0) begin
       end else begin
           in_rt_wt_data24_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data25_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[25]) == 1'b1) begin
           in_rt_wt_data25_d1 <= in_rt_wt_data25_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[25]) == 1'b0) begin
       end else begin
           in_rt_wt_data25_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data26_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[26]) == 1'b1) begin
           in_rt_wt_data26_d1 <= in_rt_wt_data26_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[26]) == 1'b0) begin
       end else begin
           in_rt_wt_data26_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data27_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[27]) == 1'b1) begin
           in_rt_wt_data27_d1 <= in_rt_wt_data27_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[27]) == 1'b0) begin
       end else begin
           in_rt_wt_data27_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data28_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[28]) == 1'b1) begin
           in_rt_wt_data28_d1 <= in_rt_wt_data28_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[28]) == 1'b0) begin
       end else begin
           in_rt_wt_data28_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data29_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[29]) == 1'b1) begin
           in_rt_wt_data29_d1 <= in_rt_wt_data29_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[29]) == 1'b0) begin
       end else begin
           in_rt_wt_data29_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data30_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[30]) == 1'b1) begin
           in_rt_wt_data30_d1 <= in_rt_wt_data30_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[30]) == 1'b0) begin
       end else begin
           in_rt_wt_data30_d1 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data31_d1;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d0[31]) == 1'b1) begin
           in_rt_wt_data31_d1 <= in_rt_wt_data31_d0;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d0[31]) == 1'b0) begin
       end else begin
           in_rt_wt_data31_d1 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_dat_pvld_d2 <= 'b0;
   end else begin
       in_rt_dat_pvld_d2 <= in_rt_dat_pvld_d1;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_dat_mask_d2 <= 'b0;
   end else begin
       if ((in_rt_dat_pvld_d1 | in_rt_dat_pvld_d2) == 1'b1) begin
           in_rt_dat_mask_d2 <= in_rt_dat_mask_d1;
       // VCS coverage off
       end else if ((in_rt_dat_pvld_d1 | in_rt_dat_pvld_d2) == 1'b0) begin
       end else begin
           in_rt_dat_mask_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_dat_pd_d2 <= 'b0;
   end else begin
       if ((in_rt_dat_pvld_d1 | in_rt_dat_pvld_d2) == 1'b1) begin
           in_rt_dat_pd_d2 <= in_rt_dat_pd_d1;
       // VCS coverage off
       end else if ((in_rt_dat_pvld_d1 | in_rt_dat_pvld_d2) == 1'b0) begin
       end else begin
           in_rt_dat_pd_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] in_rt_dat_data0_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[0]) == 1'b1) begin
           in_rt_dat_data0_d2 <= in_rt_dat_data0_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[0]) == 1'b0) begin
       end else begin
           in_rt_dat_data0_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data1_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[1]) == 1'b1) begin
           in_rt_dat_data1_d2 <= in_rt_dat_data1_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[1]) == 1'b0) begin
       end else begin
           in_rt_dat_data1_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data2_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[2]) == 1'b1) begin
           in_rt_dat_data2_d2 <= in_rt_dat_data2_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[2]) == 1'b0) begin
       end else begin
           in_rt_dat_data2_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data3_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[3]) == 1'b1) begin
           in_rt_dat_data3_d2 <= in_rt_dat_data3_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[3]) == 1'b0) begin
       end else begin
           in_rt_dat_data3_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data4_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[4]) == 1'b1) begin
           in_rt_dat_data4_d2 <= in_rt_dat_data4_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[4]) == 1'b0) begin
       end else begin
           in_rt_dat_data4_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data5_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[5]) == 1'b1) begin
           in_rt_dat_data5_d2 <= in_rt_dat_data5_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[5]) == 1'b0) begin
       end else begin
           in_rt_dat_data5_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data6_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[6]) == 1'b1) begin
           in_rt_dat_data6_d2 <= in_rt_dat_data6_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[6]) == 1'b0) begin
       end else begin
           in_rt_dat_data6_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data7_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[7]) == 1'b1) begin
           in_rt_dat_data7_d2 <= in_rt_dat_data7_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[7]) == 1'b0) begin
       end else begin
           in_rt_dat_data7_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data8_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[8]) == 1'b1) begin
           in_rt_dat_data8_d2 <= in_rt_dat_data8_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[8]) == 1'b0) begin
       end else begin
           in_rt_dat_data8_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data9_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[9]) == 1'b1) begin
           in_rt_dat_data9_d2 <= in_rt_dat_data9_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[9]) == 1'b0) begin
       end else begin
           in_rt_dat_data9_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data10_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[10]) == 1'b1) begin
           in_rt_dat_data10_d2 <= in_rt_dat_data10_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[10]) == 1'b0) begin
       end else begin
           in_rt_dat_data10_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data11_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[11]) == 1'b1) begin
           in_rt_dat_data11_d2 <= in_rt_dat_data11_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[11]) == 1'b0) begin
       end else begin
           in_rt_dat_data11_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data12_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[12]) == 1'b1) begin
           in_rt_dat_data12_d2 <= in_rt_dat_data12_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[12]) == 1'b0) begin
       end else begin
           in_rt_dat_data12_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data13_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[13]) == 1'b1) begin
           in_rt_dat_data13_d2 <= in_rt_dat_data13_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[13]) == 1'b0) begin
       end else begin
           in_rt_dat_data13_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data14_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[14]) == 1'b1) begin
           in_rt_dat_data14_d2 <= in_rt_dat_data14_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[14]) == 1'b0) begin
       end else begin
           in_rt_dat_data14_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data15_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[15]) == 1'b1) begin
           in_rt_dat_data15_d2 <= in_rt_dat_data15_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[15]) == 1'b0) begin
       end else begin
           in_rt_dat_data15_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data16_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[16]) == 1'b1) begin
           in_rt_dat_data16_d2 <= in_rt_dat_data16_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[16]) == 1'b0) begin
       end else begin
           in_rt_dat_data16_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data17_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[17]) == 1'b1) begin
           in_rt_dat_data17_d2 <= in_rt_dat_data17_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[17]) == 1'b0) begin
       end else begin
           in_rt_dat_data17_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data18_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[18]) == 1'b1) begin
           in_rt_dat_data18_d2 <= in_rt_dat_data18_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[18]) == 1'b0) begin
       end else begin
           in_rt_dat_data18_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data19_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[19]) == 1'b1) begin
           in_rt_dat_data19_d2 <= in_rt_dat_data19_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[19]) == 1'b0) begin
       end else begin
           in_rt_dat_data19_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data20_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[20]) == 1'b1) begin
           in_rt_dat_data20_d2 <= in_rt_dat_data20_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[20]) == 1'b0) begin
       end else begin
           in_rt_dat_data20_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data21_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[21]) == 1'b1) begin
           in_rt_dat_data21_d2 <= in_rt_dat_data21_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[21]) == 1'b0) begin
       end else begin
           in_rt_dat_data21_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data22_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[22]) == 1'b1) begin
           in_rt_dat_data22_d2 <= in_rt_dat_data22_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[22]) == 1'b0) begin
       end else begin
           in_rt_dat_data22_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data23_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[23]) == 1'b1) begin
           in_rt_dat_data23_d2 <= in_rt_dat_data23_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[23]) == 1'b0) begin
       end else begin
           in_rt_dat_data23_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data24_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[24]) == 1'b1) begin
           in_rt_dat_data24_d2 <= in_rt_dat_data24_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[24]) == 1'b0) begin
       end else begin
           in_rt_dat_data24_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data25_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[25]) == 1'b1) begin
           in_rt_dat_data25_d2 <= in_rt_dat_data25_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[25]) == 1'b0) begin
       end else begin
           in_rt_dat_data25_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data26_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[26]) == 1'b1) begin
           in_rt_dat_data26_d2 <= in_rt_dat_data26_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[26]) == 1'b0) begin
       end else begin
           in_rt_dat_data26_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data27_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[27]) == 1'b1) begin
           in_rt_dat_data27_d2 <= in_rt_dat_data27_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[27]) == 1'b0) begin
       end else begin
           in_rt_dat_data27_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data28_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[28]) == 1'b1) begin
           in_rt_dat_data28_d2 <= in_rt_dat_data28_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[28]) == 1'b0) begin
       end else begin
           in_rt_dat_data28_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data29_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[29]) == 1'b1) begin
           in_rt_dat_data29_d2 <= in_rt_dat_data29_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[29]) == 1'b0) begin
       end else begin
           in_rt_dat_data29_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data30_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[30]) == 1'b1) begin
           in_rt_dat_data30_d2 <= in_rt_dat_data30_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[30]) == 1'b0) begin
       end else begin
           in_rt_dat_data30_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_dat_data31_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_dat_mask_d1[31]) == 1'b1) begin
           in_rt_dat_data31_d2 <= in_rt_dat_data31_d1;
       // VCS coverage off
       end else if ((in_rt_dat_mask_d1[31]) == 1'b0) begin
       end else begin
           in_rt_dat_data31_d2 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_wt_pvld_d2 <= 'b0;
   end else begin
       in_rt_wt_pvld_d2 <= in_rt_wt_pvld_d1;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_wt_mask_d2 <= 'b0;
   end else begin
       if ((in_rt_wt_pvld_d1 | in_rt_wt_pvld_d2) == 1'b1) begin
           in_rt_wt_mask_d2 <= in_rt_wt_mask_d1;
       // VCS coverage off
       end else if ((in_rt_wt_pvld_d1 | in_rt_wt_pvld_d2) == 1'b0) begin
       end else begin
           in_rt_wt_mask_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       in_rt_wt_sel_d2 <= 'b0;
   end else begin
       if ((in_rt_wt_pvld_d1 | in_rt_wt_pvld_d2) == 1'b1) begin
           in_rt_wt_sel_d2 <= in_rt_wt_sel_d1;
       // VCS coverage off
       end else if ((in_rt_wt_pvld_d1 | in_rt_wt_pvld_d2) == 1'b0) begin
       end else begin
           in_rt_wt_sel_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] in_rt_wt_data0_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[0]) == 1'b1) begin
           in_rt_wt_data0_d2 <= in_rt_wt_data0_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[0]) == 1'b0) begin
       end else begin
           in_rt_wt_data0_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data1_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[1]) == 1'b1) begin
           in_rt_wt_data1_d2 <= in_rt_wt_data1_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[1]) == 1'b0) begin
       end else begin
           in_rt_wt_data1_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data2_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[2]) == 1'b1) begin
           in_rt_wt_data2_d2 <= in_rt_wt_data2_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[2]) == 1'b0) begin
       end else begin
           in_rt_wt_data2_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data3_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[3]) == 1'b1) begin
           in_rt_wt_data3_d2 <= in_rt_wt_data3_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[3]) == 1'b0) begin
       end else begin
           in_rt_wt_data3_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data4_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[4]) == 1'b1) begin
           in_rt_wt_data4_d2 <= in_rt_wt_data4_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[4]) == 1'b0) begin
       end else begin
           in_rt_wt_data4_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data5_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[5]) == 1'b1) begin
           in_rt_wt_data5_d2 <= in_rt_wt_data5_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[5]) == 1'b0) begin
       end else begin
           in_rt_wt_data5_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data6_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[6]) == 1'b1) begin
           in_rt_wt_data6_d2 <= in_rt_wt_data6_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[6]) == 1'b0) begin
       end else begin
           in_rt_wt_data6_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data7_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[7]) == 1'b1) begin
           in_rt_wt_data7_d2 <= in_rt_wt_data7_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[7]) == 1'b0) begin
       end else begin
           in_rt_wt_data7_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data8_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[8]) == 1'b1) begin
           in_rt_wt_data8_d2 <= in_rt_wt_data8_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[8]) == 1'b0) begin
       end else begin
           in_rt_wt_data8_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data9_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[9]) == 1'b1) begin
           in_rt_wt_data9_d2 <= in_rt_wt_data9_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[9]) == 1'b0) begin
       end else begin
           in_rt_wt_data9_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data10_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[10]) == 1'b1) begin
           in_rt_wt_data10_d2 <= in_rt_wt_data10_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[10]) == 1'b0) begin
       end else begin
           in_rt_wt_data10_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data11_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[11]) == 1'b1) begin
           in_rt_wt_data11_d2 <= in_rt_wt_data11_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[11]) == 1'b0) begin
       end else begin
           in_rt_wt_data11_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data12_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[12]) == 1'b1) begin
           in_rt_wt_data12_d2 <= in_rt_wt_data12_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[12]) == 1'b0) begin
       end else begin
           in_rt_wt_data12_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data13_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[13]) == 1'b1) begin
           in_rt_wt_data13_d2 <= in_rt_wt_data13_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[13]) == 1'b0) begin
       end else begin
           in_rt_wt_data13_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data14_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[14]) == 1'b1) begin
           in_rt_wt_data14_d2 <= in_rt_wt_data14_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[14]) == 1'b0) begin
       end else begin
           in_rt_wt_data14_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data15_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[15]) == 1'b1) begin
           in_rt_wt_data15_d2 <= in_rt_wt_data15_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[15]) == 1'b0) begin
       end else begin
           in_rt_wt_data15_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data16_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[16]) == 1'b1) begin
           in_rt_wt_data16_d2 <= in_rt_wt_data16_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[16]) == 1'b0) begin
       end else begin
           in_rt_wt_data16_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data17_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[17]) == 1'b1) begin
           in_rt_wt_data17_d2 <= in_rt_wt_data17_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[17]) == 1'b0) begin
       end else begin
           in_rt_wt_data17_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data18_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[18]) == 1'b1) begin
           in_rt_wt_data18_d2 <= in_rt_wt_data18_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[18]) == 1'b0) begin
       end else begin
           in_rt_wt_data18_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data19_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[19]) == 1'b1) begin
           in_rt_wt_data19_d2 <= in_rt_wt_data19_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[19]) == 1'b0) begin
       end else begin
           in_rt_wt_data19_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data20_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[20]) == 1'b1) begin
           in_rt_wt_data20_d2 <= in_rt_wt_data20_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[20]) == 1'b0) begin
       end else begin
           in_rt_wt_data20_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data21_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[21]) == 1'b1) begin
           in_rt_wt_data21_d2 <= in_rt_wt_data21_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[21]) == 1'b0) begin
       end else begin
           in_rt_wt_data21_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data22_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[22]) == 1'b1) begin
           in_rt_wt_data22_d2 <= in_rt_wt_data22_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[22]) == 1'b0) begin
       end else begin
           in_rt_wt_data22_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data23_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[23]) == 1'b1) begin
           in_rt_wt_data23_d2 <= in_rt_wt_data23_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[23]) == 1'b0) begin
       end else begin
           in_rt_wt_data23_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data24_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[24]) == 1'b1) begin
           in_rt_wt_data24_d2 <= in_rt_wt_data24_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[24]) == 1'b0) begin
       end else begin
           in_rt_wt_data24_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data25_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[25]) == 1'b1) begin
           in_rt_wt_data25_d2 <= in_rt_wt_data25_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[25]) == 1'b0) begin
       end else begin
           in_rt_wt_data25_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data26_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[26]) == 1'b1) begin
           in_rt_wt_data26_d2 <= in_rt_wt_data26_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[26]) == 1'b0) begin
       end else begin
           in_rt_wt_data26_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data27_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[27]) == 1'b1) begin
           in_rt_wt_data27_d2 <= in_rt_wt_data27_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[27]) == 1'b0) begin
       end else begin
           in_rt_wt_data27_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data28_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[28]) == 1'b1) begin
           in_rt_wt_data28_d2 <= in_rt_wt_data28_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[28]) == 1'b0) begin
       end else begin
           in_rt_wt_data28_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data29_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[29]) == 1'b1) begin
           in_rt_wt_data29_d2 <= in_rt_wt_data29_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[29]) == 1'b0) begin
       end else begin
           in_rt_wt_data29_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data30_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[30]) == 1'b1) begin
           in_rt_wt_data30_d2 <= in_rt_wt_data30_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[30]) == 1'b0) begin
       end else begin
           in_rt_wt_data30_d2 <= 'bx;
       // VCS coverage on
       end
end
reg [7:0] in_rt_wt_data31_d2;
always @(posedge nvdla_core_clk) begin
       if ((in_rt_wt_mask_d1[31]) == 1'b1) begin
           in_rt_wt_data31_d2 <= in_rt_wt_data31_d1;
       // VCS coverage off
       end else if ((in_rt_wt_mask_d1[31]) == 1'b0) begin
       end else begin
           in_rt_wt_data31_d2 <= 'bx;
       // VCS coverage on
       end
end
assign    in_dat_pvld = in_rt_dat_pvld_d2;
assign    in_dat_mask = in_rt_dat_mask_d2;
assign    in_dat_pd   = in_rt_dat_pd_d2;
assign    in_wt_pvld = in_rt_wt_pvld_d2;
assign    in_wt_mask = in_rt_wt_mask_d2;
assign    in_wt_sel = in_rt_wt_sel_d2;

assign in_dat_data0 = in_rt_dat_data0_d2; 
assign in_dat_data1 = in_rt_dat_data1_d2; 
assign in_dat_data2 = in_rt_dat_data2_d2; 
assign in_dat_data3 = in_rt_dat_data3_d2; 
assign in_dat_data4 = in_rt_dat_data4_d2; 
assign in_dat_data5 = in_rt_dat_data5_d2; 
assign in_dat_data6 = in_rt_dat_data6_d2; 
assign in_dat_data7 = in_rt_dat_data7_d2; 
assign in_dat_data8 = in_rt_dat_data8_d2; 
assign in_dat_data9 = in_rt_dat_data9_d2; 
assign in_dat_data10 = in_rt_dat_data10_d2; 
assign in_dat_data11 = in_rt_dat_data11_d2; 
assign in_dat_data12 = in_rt_dat_data12_d2; 
assign in_dat_data13 = in_rt_dat_data13_d2; 
assign in_dat_data14 = in_rt_dat_data14_d2; 
assign in_dat_data15 = in_rt_dat_data15_d2; 
assign in_dat_data16 = in_rt_dat_data16_d2; 
assign in_dat_data17 = in_rt_dat_data17_d2; 
assign in_dat_data18 = in_rt_dat_data18_d2; 
assign in_dat_data19 = in_rt_dat_data19_d2; 
assign in_dat_data20 = in_rt_dat_data20_d2; 
assign in_dat_data21 = in_rt_dat_data21_d2; 
assign in_dat_data22 = in_rt_dat_data22_d2; 
assign in_dat_data23 = in_rt_dat_data23_d2; 
assign in_dat_data24 = in_rt_dat_data24_d2; 
assign in_dat_data25 = in_rt_dat_data25_d2; 
assign in_dat_data26 = in_rt_dat_data26_d2; 
assign in_dat_data27 = in_rt_dat_data27_d2; 
assign in_dat_data28 = in_rt_dat_data28_d2; 
assign in_dat_data29 = in_rt_dat_data29_d2; 
assign in_dat_data30 = in_rt_dat_data30_d2; 
assign in_dat_data31 = in_rt_dat_data31_d2; 
assign in_wt_data0 = in_rt_wt_data0_d2;
assign in_wt_data1 = in_rt_wt_data1_d2;
assign in_wt_data2 = in_rt_wt_data2_d2;
assign in_wt_data3 = in_rt_wt_data3_d2;
assign in_wt_data4 = in_rt_wt_data4_d2;
assign in_wt_data5 = in_rt_wt_data5_d2;
assign in_wt_data6 = in_rt_wt_data6_d2;
assign in_wt_data7 = in_rt_wt_data7_d2;
assign in_wt_data8 = in_rt_wt_data8_d2;
assign in_wt_data9 = in_rt_wt_data9_d2;
assign in_wt_data10 = in_rt_wt_data10_d2;
assign in_wt_data11 = in_rt_wt_data11_d2;
assign in_wt_data12 = in_rt_wt_data12_d2;
assign in_wt_data13 = in_rt_wt_data13_d2;
assign in_wt_data14 = in_rt_wt_data14_d2;
assign in_wt_data15 = in_rt_wt_data15_d2;
assign in_wt_data16 = in_rt_wt_data16_d2;
assign in_wt_data17 = in_rt_wt_data17_d2;
assign in_wt_data18 = in_rt_wt_data18_d2;
assign in_wt_data19 = in_rt_wt_data19_d2;
assign in_wt_data20 = in_rt_wt_data20_d2;
assign in_wt_data21 = in_rt_wt_data21_d2;
assign in_wt_data22 = in_rt_wt_data22_d2;
assign in_wt_data23 = in_rt_wt_data23_d2;
assign in_wt_data24 = in_rt_wt_data24_d2;
assign in_wt_data25 = in_rt_wt_data25_d2;
assign in_wt_data26 = in_rt_wt_data26_d2;
assign in_wt_data27 = in_rt_wt_data27_d2;
assign in_wt_data28 = in_rt_wt_data28_d2;
assign in_wt_data29 = in_rt_wt_data29_d2;
assign in_wt_data30 = in_rt_wt_data30_d2;
assign in_wt_data31 = in_rt_wt_data31_d2;
assign in_dat_stripe_st = in_dat_pd[5];
assign in_dat_stripe_end = in_dat_pd[6]; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
endmodule
