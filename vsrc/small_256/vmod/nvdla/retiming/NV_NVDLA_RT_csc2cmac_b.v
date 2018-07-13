// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_RT_csc2cmac_b.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CSC.h
    //entry bits
    //atomC
    //in bytes, entry/8
    //CSC_ENTRY_HEX/2
    //CSC_ENTRY_HEX/4
    //CSC_ENTRY_HEX-1
    //atomK
    //atomK
    //atomK*2
    `define CC_ATOMC_DIV_ATOMK_EQUAL_4
//image stripe keep 2*atomK
//batch keep 1
module NV_NVDLA_RT_csc2cmac_b(
   nvdla_core_clk
  ,nvdla_core_rstn
  ,sc2mac_wt_src_pvld
  ,sc2mac_wt_src_mask
//: for(my $i=0; $i<32; $i++){
//: print ",sc2mac_wt_src_data${i} \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
,sc2mac_wt_src_data0 
,sc2mac_wt_src_data1 
,sc2mac_wt_src_data2 
,sc2mac_wt_src_data3 
,sc2mac_wt_src_data4 
,sc2mac_wt_src_data5 
,sc2mac_wt_src_data6 
,sc2mac_wt_src_data7 
,sc2mac_wt_src_data8 
,sc2mac_wt_src_data9 
,sc2mac_wt_src_data10 
,sc2mac_wt_src_data11 
,sc2mac_wt_src_data12 
,sc2mac_wt_src_data13 
,sc2mac_wt_src_data14 
,sc2mac_wt_src_data15 
,sc2mac_wt_src_data16 
,sc2mac_wt_src_data17 
,sc2mac_wt_src_data18 
,sc2mac_wt_src_data19 
,sc2mac_wt_src_data20 
,sc2mac_wt_src_data21 
,sc2mac_wt_src_data22 
,sc2mac_wt_src_data23 
,sc2mac_wt_src_data24 
,sc2mac_wt_src_data25 
,sc2mac_wt_src_data26 
,sc2mac_wt_src_data27 
,sc2mac_wt_src_data28 
,sc2mac_wt_src_data29 
,sc2mac_wt_src_data30 
,sc2mac_wt_src_data31 

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_src_sel
  ,sc2mac_dat_src_pvld
  ,sc2mac_dat_src_mask
//: for(my $i=0; $i<32; $i++){
//: print ",sc2mac_dat_src_data${i} \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
,sc2mac_dat_src_data0 
,sc2mac_dat_src_data1 
,sc2mac_dat_src_data2 
,sc2mac_dat_src_data3 
,sc2mac_dat_src_data4 
,sc2mac_dat_src_data5 
,sc2mac_dat_src_data6 
,sc2mac_dat_src_data7 
,sc2mac_dat_src_data8 
,sc2mac_dat_src_data9 
,sc2mac_dat_src_data10 
,sc2mac_dat_src_data11 
,sc2mac_dat_src_data12 
,sc2mac_dat_src_data13 
,sc2mac_dat_src_data14 
,sc2mac_dat_src_data15 
,sc2mac_dat_src_data16 
,sc2mac_dat_src_data17 
,sc2mac_dat_src_data18 
,sc2mac_dat_src_data19 
,sc2mac_dat_src_data20 
,sc2mac_dat_src_data21 
,sc2mac_dat_src_data22 
,sc2mac_dat_src_data23 
,sc2mac_dat_src_data24 
,sc2mac_dat_src_data25 
,sc2mac_dat_src_data26 
,sc2mac_dat_src_data27 
,sc2mac_dat_src_data28 
,sc2mac_dat_src_data29 
,sc2mac_dat_src_data30 
,sc2mac_dat_src_data31 

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_src_pd
  ,sc2mac_wt_dst_pvld
  ,sc2mac_wt_dst_mask
//: for(my $i=0; $i<32; $i++){
//: print ",sc2mac_wt_dst_data${i} \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
,sc2mac_wt_dst_data0 
,sc2mac_wt_dst_data1 
,sc2mac_wt_dst_data2 
,sc2mac_wt_dst_data3 
,sc2mac_wt_dst_data4 
,sc2mac_wt_dst_data5 
,sc2mac_wt_dst_data6 
,sc2mac_wt_dst_data7 
,sc2mac_wt_dst_data8 
,sc2mac_wt_dst_data9 
,sc2mac_wt_dst_data10 
,sc2mac_wt_dst_data11 
,sc2mac_wt_dst_data12 
,sc2mac_wt_dst_data13 
,sc2mac_wt_dst_data14 
,sc2mac_wt_dst_data15 
,sc2mac_wt_dst_data16 
,sc2mac_wt_dst_data17 
,sc2mac_wt_dst_data18 
,sc2mac_wt_dst_data19 
,sc2mac_wt_dst_data20 
,sc2mac_wt_dst_data21 
,sc2mac_wt_dst_data22 
,sc2mac_wt_dst_data23 
,sc2mac_wt_dst_data24 
,sc2mac_wt_dst_data25 
,sc2mac_wt_dst_data26 
,sc2mac_wt_dst_data27 
,sc2mac_wt_dst_data28 
,sc2mac_wt_dst_data29 
,sc2mac_wt_dst_data30 
,sc2mac_wt_dst_data31 

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_dst_sel
  ,sc2mac_dat_dst_pvld
  ,sc2mac_dat_dst_mask
//: for(my $i=0; $i<32; $i++){
//: print ",sc2mac_dat_dst_data${i} \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
,sc2mac_dat_dst_data0 
,sc2mac_dat_dst_data1 
,sc2mac_dat_dst_data2 
,sc2mac_dat_dst_data3 
,sc2mac_dat_dst_data4 
,sc2mac_dat_dst_data5 
,sc2mac_dat_dst_data6 
,sc2mac_dat_dst_data7 
,sc2mac_dat_dst_data8 
,sc2mac_dat_dst_data9 
,sc2mac_dat_dst_data10 
,sc2mac_dat_dst_data11 
,sc2mac_dat_dst_data12 
,sc2mac_dat_dst_data13 
,sc2mac_dat_dst_data14 
,sc2mac_dat_dst_data15 
,sc2mac_dat_dst_data16 
,sc2mac_dat_dst_data17 
,sc2mac_dat_dst_data18 
,sc2mac_dat_dst_data19 
,sc2mac_dat_dst_data20 
,sc2mac_dat_dst_data21 
,sc2mac_dat_dst_data22 
,sc2mac_dat_dst_data23 
,sc2mac_dat_dst_data24 
,sc2mac_dat_dst_data25 
,sc2mac_dat_dst_data26 
,sc2mac_dat_dst_data27 
,sc2mac_dat_dst_data28 
,sc2mac_dat_dst_data29 
,sc2mac_dat_dst_data30 
,sc2mac_dat_dst_data31 

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_dst_pd
  );
//
// NV_NVDLA_RT_csc2cmac_ports.v
//
input nvdla_core_clk;
input nvdla_core_rstn;
input sc2mac_wt_src_pvld; /* data valid */
input [32 -1:0] sc2mac_wt_src_mask;
//: my $bb=8;
//: for(my $i=0; $i<32; $i++){
//: print "input   [${bb}-1:0] sc2mac_wt_src_data${i};  \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
input   [8-1:0] sc2mac_wt_src_data0;  
input   [8-1:0] sc2mac_wt_src_data1;  
input   [8-1:0] sc2mac_wt_src_data2;  
input   [8-1:0] sc2mac_wt_src_data3;  
input   [8-1:0] sc2mac_wt_src_data4;  
input   [8-1:0] sc2mac_wt_src_data5;  
input   [8-1:0] sc2mac_wt_src_data6;  
input   [8-1:0] sc2mac_wt_src_data7;  
input   [8-1:0] sc2mac_wt_src_data8;  
input   [8-1:0] sc2mac_wt_src_data9;  
input   [8-1:0] sc2mac_wt_src_data10;  
input   [8-1:0] sc2mac_wt_src_data11;  
input   [8-1:0] sc2mac_wt_src_data12;  
input   [8-1:0] sc2mac_wt_src_data13;  
input   [8-1:0] sc2mac_wt_src_data14;  
input   [8-1:0] sc2mac_wt_src_data15;  
input   [8-1:0] sc2mac_wt_src_data16;  
input   [8-1:0] sc2mac_wt_src_data17;  
input   [8-1:0] sc2mac_wt_src_data18;  
input   [8-1:0] sc2mac_wt_src_data19;  
input   [8-1:0] sc2mac_wt_src_data20;  
input   [8-1:0] sc2mac_wt_src_data21;  
input   [8-1:0] sc2mac_wt_src_data22;  
input   [8-1:0] sc2mac_wt_src_data23;  
input   [8-1:0] sc2mac_wt_src_data24;  
input   [8-1:0] sc2mac_wt_src_data25;  
input   [8-1:0] sc2mac_wt_src_data26;  
input   [8-1:0] sc2mac_wt_src_data27;  
input   [8-1:0] sc2mac_wt_src_data28;  
input   [8-1:0] sc2mac_wt_src_data29;  
input   [8-1:0] sc2mac_wt_src_data30;  
input   [8-1:0] sc2mac_wt_src_data31;  

//| eperl: generated_end (DO NOT EDIT ABOVE)
input [8/2 -1:0] sc2mac_wt_src_sel;
input sc2mac_dat_src_pvld; /* data valid */
input [32 -1:0] sc2mac_dat_src_mask;
//: my $bb=8;
//: for(my $i=0; $i<32; $i++){
//: print "input   [${bb}-1:0] sc2mac_dat_src_data${i};  \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
input   [8-1:0] sc2mac_dat_src_data0;  
input   [8-1:0] sc2mac_dat_src_data1;  
input   [8-1:0] sc2mac_dat_src_data2;  
input   [8-1:0] sc2mac_dat_src_data3;  
input   [8-1:0] sc2mac_dat_src_data4;  
input   [8-1:0] sc2mac_dat_src_data5;  
input   [8-1:0] sc2mac_dat_src_data6;  
input   [8-1:0] sc2mac_dat_src_data7;  
input   [8-1:0] sc2mac_dat_src_data8;  
input   [8-1:0] sc2mac_dat_src_data9;  
input   [8-1:0] sc2mac_dat_src_data10;  
input   [8-1:0] sc2mac_dat_src_data11;  
input   [8-1:0] sc2mac_dat_src_data12;  
input   [8-1:0] sc2mac_dat_src_data13;  
input   [8-1:0] sc2mac_dat_src_data14;  
input   [8-1:0] sc2mac_dat_src_data15;  
input   [8-1:0] sc2mac_dat_src_data16;  
input   [8-1:0] sc2mac_dat_src_data17;  
input   [8-1:0] sc2mac_dat_src_data18;  
input   [8-1:0] sc2mac_dat_src_data19;  
input   [8-1:0] sc2mac_dat_src_data20;  
input   [8-1:0] sc2mac_dat_src_data21;  
input   [8-1:0] sc2mac_dat_src_data22;  
input   [8-1:0] sc2mac_dat_src_data23;  
input   [8-1:0] sc2mac_dat_src_data24;  
input   [8-1:0] sc2mac_dat_src_data25;  
input   [8-1:0] sc2mac_dat_src_data26;  
input   [8-1:0] sc2mac_dat_src_data27;  
input   [8-1:0] sc2mac_dat_src_data28;  
input   [8-1:0] sc2mac_dat_src_data29;  
input   [8-1:0] sc2mac_dat_src_data30;  
input   [8-1:0] sc2mac_dat_src_data31;  

//| eperl: generated_end (DO NOT EDIT ABOVE)
input [8:0] sc2mac_dat_src_pd;
output sc2mac_wt_dst_pvld; /* data valid */
output [32 -1:0] sc2mac_wt_dst_mask;
//: my $bb=8;
//: for(my $i=0; $i<32; $i++){
//: print "output   [${bb}-1:0] sc2mac_wt_dst_data${i};  \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
output   [8-1:0] sc2mac_wt_dst_data0;  
output   [8-1:0] sc2mac_wt_dst_data1;  
output   [8-1:0] sc2mac_wt_dst_data2;  
output   [8-1:0] sc2mac_wt_dst_data3;  
output   [8-1:0] sc2mac_wt_dst_data4;  
output   [8-1:0] sc2mac_wt_dst_data5;  
output   [8-1:0] sc2mac_wt_dst_data6;  
output   [8-1:0] sc2mac_wt_dst_data7;  
output   [8-1:0] sc2mac_wt_dst_data8;  
output   [8-1:0] sc2mac_wt_dst_data9;  
output   [8-1:0] sc2mac_wt_dst_data10;  
output   [8-1:0] sc2mac_wt_dst_data11;  
output   [8-1:0] sc2mac_wt_dst_data12;  
output   [8-1:0] sc2mac_wt_dst_data13;  
output   [8-1:0] sc2mac_wt_dst_data14;  
output   [8-1:0] sc2mac_wt_dst_data15;  
output   [8-1:0] sc2mac_wt_dst_data16;  
output   [8-1:0] sc2mac_wt_dst_data17;  
output   [8-1:0] sc2mac_wt_dst_data18;  
output   [8-1:0] sc2mac_wt_dst_data19;  
output   [8-1:0] sc2mac_wt_dst_data20;  
output   [8-1:0] sc2mac_wt_dst_data21;  
output   [8-1:0] sc2mac_wt_dst_data22;  
output   [8-1:0] sc2mac_wt_dst_data23;  
output   [8-1:0] sc2mac_wt_dst_data24;  
output   [8-1:0] sc2mac_wt_dst_data25;  
output   [8-1:0] sc2mac_wt_dst_data26;  
output   [8-1:0] sc2mac_wt_dst_data27;  
output   [8-1:0] sc2mac_wt_dst_data28;  
output   [8-1:0] sc2mac_wt_dst_data29;  
output   [8-1:0] sc2mac_wt_dst_data30;  
output   [8-1:0] sc2mac_wt_dst_data31;  

//| eperl: generated_end (DO NOT EDIT ABOVE)
output [8/2 -1:0] sc2mac_wt_dst_sel;
output sc2mac_dat_dst_pvld; /* data valid */
output [32 -1:0] sc2mac_dat_dst_mask;
//: my $bb=8;
//: for(my $i=0; $i<32; $i++){
//: print "output   [${bb}-1:0] sc2mac_dat_dst_data${i};  \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
output   [8-1:0] sc2mac_dat_dst_data0;  
output   [8-1:0] sc2mac_dat_dst_data1;  
output   [8-1:0] sc2mac_dat_dst_data2;  
output   [8-1:0] sc2mac_dat_dst_data3;  
output   [8-1:0] sc2mac_dat_dst_data4;  
output   [8-1:0] sc2mac_dat_dst_data5;  
output   [8-1:0] sc2mac_dat_dst_data6;  
output   [8-1:0] sc2mac_dat_dst_data7;  
output   [8-1:0] sc2mac_dat_dst_data8;  
output   [8-1:0] sc2mac_dat_dst_data9;  
output   [8-1:0] sc2mac_dat_dst_data10;  
output   [8-1:0] sc2mac_dat_dst_data11;  
output   [8-1:0] sc2mac_dat_dst_data12;  
output   [8-1:0] sc2mac_dat_dst_data13;  
output   [8-1:0] sc2mac_dat_dst_data14;  
output   [8-1:0] sc2mac_dat_dst_data15;  
output   [8-1:0] sc2mac_dat_dst_data16;  
output   [8-1:0] sc2mac_dat_dst_data17;  
output   [8-1:0] sc2mac_dat_dst_data18;  
output   [8-1:0] sc2mac_dat_dst_data19;  
output   [8-1:0] sc2mac_dat_dst_data20;  
output   [8-1:0] sc2mac_dat_dst_data21;  
output   [8-1:0] sc2mac_dat_dst_data22;  
output   [8-1:0] sc2mac_dat_dst_data23;  
output   [8-1:0] sc2mac_dat_dst_data24;  
output   [8-1:0] sc2mac_dat_dst_data25;  
output   [8-1:0] sc2mac_dat_dst_data26;  
output   [8-1:0] sc2mac_dat_dst_data27;  
output   [8-1:0] sc2mac_dat_dst_data28;  
output   [8-1:0] sc2mac_dat_dst_data29;  
output   [8-1:0] sc2mac_dat_dst_data30;  
output   [8-1:0] sc2mac_dat_dst_data31;  

//| eperl: generated_end (DO NOT EDIT ABOVE)
output [8:0] sc2mac_dat_dst_pd;
//: my $delay = 1;
//: my $i;
//: my $j;
//: my $k;
//: my $bb=8;
//: my $kk=8/2;
//: my $cc=32;
//: print "wire sc2mac_wt_pvld_d0 = sc2mac_wt_src_pvld;\n";
//: print "wire[${kk}-1:0] sc2mac_wt_sel_d0 = sc2mac_wt_src_sel;\n";
//: print "wire[${cc}-1:0] sc2mac_wt_mask_d0 = sc2mac_wt_src_mask;\n";
//: for($k = 0; $k <32; $k ++) {
//: print "wire sc2mac_wt_data${k}_d0 = sc2mac_wt_src_data${k};\n";
//: }
//:
//: print "wire sc2mac_dat_pvld_d0 = sc2mac_dat_src_pvld;\n";
//: print "wire[8:0] sc2mac_dat_pd_d0 = sc2mac_dat_src_pd;\n";
//: print "wire[${cc}-1:0] sc2mac_dat_mask_d0 = sc2mac_dat_src_mask;\n";
//: for($k = 0; $k <32; $k ++) {
//: print "wire[${bb}-1:0] sc2mac_dat_data${k}_d0 = sc2mac_dat_src_data${k};\n";
//: }
//:
//: for($i = 0; $i < $delay; $i ++) {
//: $j = $i + 1;
//: &eperl::flop("-q sc2mac_wt_pvld_d${j} -d sc2mac_wt_pvld_d${i}");
//: &eperl::flop("-wid ${kk} -q sc2mac_wt_sel_d${j}  -en \"(sc2mac_wt_pvld_d${i} | sc2mac_wt_pvld_d${j})\" -d sc2mac_wt_sel_d${i}");
//: &eperl::flop("-wid ${cc} -q sc2mac_wt_mask_d${j} -en \"(sc2mac_wt_pvld_d${i} | sc2mac_wt_pvld_d${j})\" -d sc2mac_wt_mask_d${i}");
//: for($k = 0; $k <32; $k ++) {
//: &eperl::flop("-wid ${bb} -q sc2mac_wt_data${k}_d${j} -en sc2mac_wt_mask_d${i}[${k}] -d sc2mac_wt_data${k}_d${i}");
//: }
//:
//: &eperl::flop("-q sc2mac_dat_pvld_d${j} -d sc2mac_dat_pvld_d${i}");
//: &eperl::flop("-wid 9 -q sc2mac_dat_pd_d${j} -en \"(sc2mac_dat_pvld_d${i} | sc2mac_dat_pvld_d${j})\" -d sc2mac_dat_pd_d${i}");
//: &eperl::flop("-wid ${cc} -q sc2mac_dat_mask_d${j} -en \"(sc2mac_dat_pvld_d${i} | sc2mac_dat_pvld_d${j})\" -d sc2mac_dat_mask_d${i}");
//: for($k = 0; $k <32; $k ++) {
//: &eperl::flop("-wid ${bb} -q sc2mac_dat_data${k}_d${j} -en \"(sc2mac_dat_mask_d${i}[${k}])\" -d sc2mac_dat_data${k}_d${i}");
//: }
//: }
//:
//: $i = $delay;
//: print "wire sc2mac_wt_dst_pvld = sc2mac_wt_pvld_d${i};\n";
//: print "wire[${kk}-1:0] sc2mac_wt_dst_sel = sc2mac_wt_sel_d${i};\n";
//: print "wire[${cc}-1:0] sc2mac_wt_dst_mask = sc2mac_wt_mask_d${i};\n";
//: for($k = 0; $k <32; $k ++) {
//: print "wire[${bb}-1:0] sc2mac_wt_dst_data${k} = sc2mac_wt_data${k}_d${i};\n";
//: }
//:
//: print "wire sc2mac_dat_dst_pvld = sc2mac_dat_pvld_d${i};\n";
//: print "wire[8:0] sc2mac_dat_dst_pd = sc2mac_dat_pd_d${i};\n";
//: print "wire[${cc}-1:0] sc2mac_dat_dst_mask = sc2mac_dat_mask_d${i};\n";
//: for($k = 0; $k <32; $k ++) {
//: print "wire[${bb}-1:0] sc2mac_dat_dst_data${k} = sc2mac_dat_data${k}_d${i};\n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
wire sc2mac_wt_pvld_d0 = sc2mac_wt_src_pvld;
wire[4-1:0] sc2mac_wt_sel_d0 = sc2mac_wt_src_sel;
wire[32-1:0] sc2mac_wt_mask_d0 = sc2mac_wt_src_mask;
wire sc2mac_wt_data0_d0 = sc2mac_wt_src_data0;
wire sc2mac_wt_data1_d0 = sc2mac_wt_src_data1;
wire sc2mac_wt_data2_d0 = sc2mac_wt_src_data2;
wire sc2mac_wt_data3_d0 = sc2mac_wt_src_data3;
wire sc2mac_wt_data4_d0 = sc2mac_wt_src_data4;
wire sc2mac_wt_data5_d0 = sc2mac_wt_src_data5;
wire sc2mac_wt_data6_d0 = sc2mac_wt_src_data6;
wire sc2mac_wt_data7_d0 = sc2mac_wt_src_data7;
wire sc2mac_wt_data8_d0 = sc2mac_wt_src_data8;
wire sc2mac_wt_data9_d0 = sc2mac_wt_src_data9;
wire sc2mac_wt_data10_d0 = sc2mac_wt_src_data10;
wire sc2mac_wt_data11_d0 = sc2mac_wt_src_data11;
wire sc2mac_wt_data12_d0 = sc2mac_wt_src_data12;
wire sc2mac_wt_data13_d0 = sc2mac_wt_src_data13;
wire sc2mac_wt_data14_d0 = sc2mac_wt_src_data14;
wire sc2mac_wt_data15_d0 = sc2mac_wt_src_data15;
wire sc2mac_wt_data16_d0 = sc2mac_wt_src_data16;
wire sc2mac_wt_data17_d0 = sc2mac_wt_src_data17;
wire sc2mac_wt_data18_d0 = sc2mac_wt_src_data18;
wire sc2mac_wt_data19_d0 = sc2mac_wt_src_data19;
wire sc2mac_wt_data20_d0 = sc2mac_wt_src_data20;
wire sc2mac_wt_data21_d0 = sc2mac_wt_src_data21;
wire sc2mac_wt_data22_d0 = sc2mac_wt_src_data22;
wire sc2mac_wt_data23_d0 = sc2mac_wt_src_data23;
wire sc2mac_wt_data24_d0 = sc2mac_wt_src_data24;
wire sc2mac_wt_data25_d0 = sc2mac_wt_src_data25;
wire sc2mac_wt_data26_d0 = sc2mac_wt_src_data26;
wire sc2mac_wt_data27_d0 = sc2mac_wt_src_data27;
wire sc2mac_wt_data28_d0 = sc2mac_wt_src_data28;
wire sc2mac_wt_data29_d0 = sc2mac_wt_src_data29;
wire sc2mac_wt_data30_d0 = sc2mac_wt_src_data30;
wire sc2mac_wt_data31_d0 = sc2mac_wt_src_data31;
wire sc2mac_dat_pvld_d0 = sc2mac_dat_src_pvld;
wire[8:0] sc2mac_dat_pd_d0 = sc2mac_dat_src_pd;
wire[32-1:0] sc2mac_dat_mask_d0 = sc2mac_dat_src_mask;
wire[8-1:0] sc2mac_dat_data0_d0 = sc2mac_dat_src_data0;
wire[8-1:0] sc2mac_dat_data1_d0 = sc2mac_dat_src_data1;
wire[8-1:0] sc2mac_dat_data2_d0 = sc2mac_dat_src_data2;
wire[8-1:0] sc2mac_dat_data3_d0 = sc2mac_dat_src_data3;
wire[8-1:0] sc2mac_dat_data4_d0 = sc2mac_dat_src_data4;
wire[8-1:0] sc2mac_dat_data5_d0 = sc2mac_dat_src_data5;
wire[8-1:0] sc2mac_dat_data6_d0 = sc2mac_dat_src_data6;
wire[8-1:0] sc2mac_dat_data7_d0 = sc2mac_dat_src_data7;
wire[8-1:0] sc2mac_dat_data8_d0 = sc2mac_dat_src_data8;
wire[8-1:0] sc2mac_dat_data9_d0 = sc2mac_dat_src_data9;
wire[8-1:0] sc2mac_dat_data10_d0 = sc2mac_dat_src_data10;
wire[8-1:0] sc2mac_dat_data11_d0 = sc2mac_dat_src_data11;
wire[8-1:0] sc2mac_dat_data12_d0 = sc2mac_dat_src_data12;
wire[8-1:0] sc2mac_dat_data13_d0 = sc2mac_dat_src_data13;
wire[8-1:0] sc2mac_dat_data14_d0 = sc2mac_dat_src_data14;
wire[8-1:0] sc2mac_dat_data15_d0 = sc2mac_dat_src_data15;
wire[8-1:0] sc2mac_dat_data16_d0 = sc2mac_dat_src_data16;
wire[8-1:0] sc2mac_dat_data17_d0 = sc2mac_dat_src_data17;
wire[8-1:0] sc2mac_dat_data18_d0 = sc2mac_dat_src_data18;
wire[8-1:0] sc2mac_dat_data19_d0 = sc2mac_dat_src_data19;
wire[8-1:0] sc2mac_dat_data20_d0 = sc2mac_dat_src_data20;
wire[8-1:0] sc2mac_dat_data21_d0 = sc2mac_dat_src_data21;
wire[8-1:0] sc2mac_dat_data22_d0 = sc2mac_dat_src_data22;
wire[8-1:0] sc2mac_dat_data23_d0 = sc2mac_dat_src_data23;
wire[8-1:0] sc2mac_dat_data24_d0 = sc2mac_dat_src_data24;
wire[8-1:0] sc2mac_dat_data25_d0 = sc2mac_dat_src_data25;
wire[8-1:0] sc2mac_dat_data26_d0 = sc2mac_dat_src_data26;
wire[8-1:0] sc2mac_dat_data27_d0 = sc2mac_dat_src_data27;
wire[8-1:0] sc2mac_dat_data28_d0 = sc2mac_dat_src_data28;
wire[8-1:0] sc2mac_dat_data29_d0 = sc2mac_dat_src_data29;
wire[8-1:0] sc2mac_dat_data30_d0 = sc2mac_dat_src_data30;
wire[8-1:0] sc2mac_dat_data31_d0 = sc2mac_dat_src_data31;
reg  sc2mac_wt_pvld_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_pvld_d1 <= 'b0;
   end else begin
       sc2mac_wt_pvld_d1 <= sc2mac_wt_pvld_d0;
   end
end
reg [3:0] sc2mac_wt_sel_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_sel_d1 <= 'b0;
   end else begin
       if (((sc2mac_wt_pvld_d0 | sc2mac_wt_pvld_d1)) == 1'b1) begin
           sc2mac_wt_sel_d1 <= sc2mac_wt_sel_d0;
       // VCS coverage off
       end else if (((sc2mac_wt_pvld_d0 | sc2mac_wt_pvld_d1)) == 1'b0) begin
       end else begin
           sc2mac_wt_sel_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [31:0] sc2mac_wt_mask_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_mask_d1 <= 'b0;
   end else begin
       if (((sc2mac_wt_pvld_d0 | sc2mac_wt_pvld_d1)) == 1'b1) begin
           sc2mac_wt_mask_d1 <= sc2mac_wt_mask_d0;
       // VCS coverage off
       end else if (((sc2mac_wt_pvld_d0 | sc2mac_wt_pvld_d1)) == 1'b0) begin
       end else begin
           sc2mac_wt_mask_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data0_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data0_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[0]) == 1'b1) begin
           sc2mac_wt_data0_d1 <= sc2mac_wt_data0_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[0]) == 1'b0) begin
       end else begin
           sc2mac_wt_data0_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data1_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data1_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[1]) == 1'b1) begin
           sc2mac_wt_data1_d1 <= sc2mac_wt_data1_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[1]) == 1'b0) begin
       end else begin
           sc2mac_wt_data1_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data2_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data2_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[2]) == 1'b1) begin
           sc2mac_wt_data2_d1 <= sc2mac_wt_data2_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[2]) == 1'b0) begin
       end else begin
           sc2mac_wt_data2_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data3_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data3_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[3]) == 1'b1) begin
           sc2mac_wt_data3_d1 <= sc2mac_wt_data3_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[3]) == 1'b0) begin
       end else begin
           sc2mac_wt_data3_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data4_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data4_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[4]) == 1'b1) begin
           sc2mac_wt_data4_d1 <= sc2mac_wt_data4_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[4]) == 1'b0) begin
       end else begin
           sc2mac_wt_data4_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data5_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data5_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[5]) == 1'b1) begin
           sc2mac_wt_data5_d1 <= sc2mac_wt_data5_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[5]) == 1'b0) begin
       end else begin
           sc2mac_wt_data5_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data6_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data6_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[6]) == 1'b1) begin
           sc2mac_wt_data6_d1 <= sc2mac_wt_data6_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[6]) == 1'b0) begin
       end else begin
           sc2mac_wt_data6_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data7_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data7_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[7]) == 1'b1) begin
           sc2mac_wt_data7_d1 <= sc2mac_wt_data7_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[7]) == 1'b0) begin
       end else begin
           sc2mac_wt_data7_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data8_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data8_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[8]) == 1'b1) begin
           sc2mac_wt_data8_d1 <= sc2mac_wt_data8_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[8]) == 1'b0) begin
       end else begin
           sc2mac_wt_data8_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data9_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data9_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[9]) == 1'b1) begin
           sc2mac_wt_data9_d1 <= sc2mac_wt_data9_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[9]) == 1'b0) begin
       end else begin
           sc2mac_wt_data9_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data10_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data10_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[10]) == 1'b1) begin
           sc2mac_wt_data10_d1 <= sc2mac_wt_data10_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[10]) == 1'b0) begin
       end else begin
           sc2mac_wt_data10_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data11_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data11_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[11]) == 1'b1) begin
           sc2mac_wt_data11_d1 <= sc2mac_wt_data11_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[11]) == 1'b0) begin
       end else begin
           sc2mac_wt_data11_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data12_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data12_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[12]) == 1'b1) begin
           sc2mac_wt_data12_d1 <= sc2mac_wt_data12_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[12]) == 1'b0) begin
       end else begin
           sc2mac_wt_data12_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data13_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data13_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[13]) == 1'b1) begin
           sc2mac_wt_data13_d1 <= sc2mac_wt_data13_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[13]) == 1'b0) begin
       end else begin
           sc2mac_wt_data13_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data14_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data14_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[14]) == 1'b1) begin
           sc2mac_wt_data14_d1 <= sc2mac_wt_data14_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[14]) == 1'b0) begin
       end else begin
           sc2mac_wt_data14_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data15_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data15_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[15]) == 1'b1) begin
           sc2mac_wt_data15_d1 <= sc2mac_wt_data15_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[15]) == 1'b0) begin
       end else begin
           sc2mac_wt_data15_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data16_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data16_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[16]) == 1'b1) begin
           sc2mac_wt_data16_d1 <= sc2mac_wt_data16_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[16]) == 1'b0) begin
       end else begin
           sc2mac_wt_data16_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data17_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data17_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[17]) == 1'b1) begin
           sc2mac_wt_data17_d1 <= sc2mac_wt_data17_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[17]) == 1'b0) begin
       end else begin
           sc2mac_wt_data17_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data18_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data18_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[18]) == 1'b1) begin
           sc2mac_wt_data18_d1 <= sc2mac_wt_data18_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[18]) == 1'b0) begin
       end else begin
           sc2mac_wt_data18_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data19_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data19_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[19]) == 1'b1) begin
           sc2mac_wt_data19_d1 <= sc2mac_wt_data19_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[19]) == 1'b0) begin
       end else begin
           sc2mac_wt_data19_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data20_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data20_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[20]) == 1'b1) begin
           sc2mac_wt_data20_d1 <= sc2mac_wt_data20_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[20]) == 1'b0) begin
       end else begin
           sc2mac_wt_data20_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data21_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data21_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[21]) == 1'b1) begin
           sc2mac_wt_data21_d1 <= sc2mac_wt_data21_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[21]) == 1'b0) begin
       end else begin
           sc2mac_wt_data21_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data22_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data22_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[22]) == 1'b1) begin
           sc2mac_wt_data22_d1 <= sc2mac_wt_data22_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[22]) == 1'b0) begin
       end else begin
           sc2mac_wt_data22_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data23_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data23_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[23]) == 1'b1) begin
           sc2mac_wt_data23_d1 <= sc2mac_wt_data23_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[23]) == 1'b0) begin
       end else begin
           sc2mac_wt_data23_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data24_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data24_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[24]) == 1'b1) begin
           sc2mac_wt_data24_d1 <= sc2mac_wt_data24_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[24]) == 1'b0) begin
       end else begin
           sc2mac_wt_data24_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data25_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data25_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[25]) == 1'b1) begin
           sc2mac_wt_data25_d1 <= sc2mac_wt_data25_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[25]) == 1'b0) begin
       end else begin
           sc2mac_wt_data25_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data26_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data26_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[26]) == 1'b1) begin
           sc2mac_wt_data26_d1 <= sc2mac_wt_data26_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[26]) == 1'b0) begin
       end else begin
           sc2mac_wt_data26_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data27_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data27_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[27]) == 1'b1) begin
           sc2mac_wt_data27_d1 <= sc2mac_wt_data27_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[27]) == 1'b0) begin
       end else begin
           sc2mac_wt_data27_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data28_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data28_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[28]) == 1'b1) begin
           sc2mac_wt_data28_d1 <= sc2mac_wt_data28_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[28]) == 1'b0) begin
       end else begin
           sc2mac_wt_data28_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data29_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data29_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[29]) == 1'b1) begin
           sc2mac_wt_data29_d1 <= sc2mac_wt_data29_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[29]) == 1'b0) begin
       end else begin
           sc2mac_wt_data29_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data30_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data30_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[30]) == 1'b1) begin
           sc2mac_wt_data30_d1 <= sc2mac_wt_data30_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[30]) == 1'b0) begin
       end else begin
           sc2mac_wt_data30_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_wt_data31_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_wt_data31_d1 <= 'b0;
   end else begin
       if ((sc2mac_wt_mask_d0[31]) == 1'b1) begin
           sc2mac_wt_data31_d1 <= sc2mac_wt_data31_d0;
       // VCS coverage off
       end else if ((sc2mac_wt_mask_d0[31]) == 1'b0) begin
       end else begin
           sc2mac_wt_data31_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg  sc2mac_dat_pvld_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_pvld_d1 <= 'b0;
   end else begin
       sc2mac_dat_pvld_d1 <= sc2mac_dat_pvld_d0;
   end
end
reg [8:0] sc2mac_dat_pd_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_pd_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_pvld_d0 | sc2mac_dat_pvld_d1)) == 1'b1) begin
           sc2mac_dat_pd_d1 <= sc2mac_dat_pd_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_pvld_d0 | sc2mac_dat_pvld_d1)) == 1'b0) begin
       end else begin
           sc2mac_dat_pd_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [31:0] sc2mac_dat_mask_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_mask_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_pvld_d0 | sc2mac_dat_pvld_d1)) == 1'b1) begin
           sc2mac_dat_mask_d1 <= sc2mac_dat_mask_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_pvld_d0 | sc2mac_dat_pvld_d1)) == 1'b0) begin
       end else begin
           sc2mac_dat_mask_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data0_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data0_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[0])) == 1'b1) begin
           sc2mac_dat_data0_d1 <= sc2mac_dat_data0_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[0])) == 1'b0) begin
       end else begin
           sc2mac_dat_data0_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data1_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data1_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[1])) == 1'b1) begin
           sc2mac_dat_data1_d1 <= sc2mac_dat_data1_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[1])) == 1'b0) begin
       end else begin
           sc2mac_dat_data1_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data2_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data2_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[2])) == 1'b1) begin
           sc2mac_dat_data2_d1 <= sc2mac_dat_data2_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[2])) == 1'b0) begin
       end else begin
           sc2mac_dat_data2_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data3_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data3_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[3])) == 1'b1) begin
           sc2mac_dat_data3_d1 <= sc2mac_dat_data3_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[3])) == 1'b0) begin
       end else begin
           sc2mac_dat_data3_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data4_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data4_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[4])) == 1'b1) begin
           sc2mac_dat_data4_d1 <= sc2mac_dat_data4_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[4])) == 1'b0) begin
       end else begin
           sc2mac_dat_data4_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data5_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data5_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[5])) == 1'b1) begin
           sc2mac_dat_data5_d1 <= sc2mac_dat_data5_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[5])) == 1'b0) begin
       end else begin
           sc2mac_dat_data5_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data6_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data6_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[6])) == 1'b1) begin
           sc2mac_dat_data6_d1 <= sc2mac_dat_data6_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[6])) == 1'b0) begin
       end else begin
           sc2mac_dat_data6_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data7_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data7_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[7])) == 1'b1) begin
           sc2mac_dat_data7_d1 <= sc2mac_dat_data7_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[7])) == 1'b0) begin
       end else begin
           sc2mac_dat_data7_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data8_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data8_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[8])) == 1'b1) begin
           sc2mac_dat_data8_d1 <= sc2mac_dat_data8_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[8])) == 1'b0) begin
       end else begin
           sc2mac_dat_data8_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data9_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data9_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[9])) == 1'b1) begin
           sc2mac_dat_data9_d1 <= sc2mac_dat_data9_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[9])) == 1'b0) begin
       end else begin
           sc2mac_dat_data9_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data10_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data10_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[10])) == 1'b1) begin
           sc2mac_dat_data10_d1 <= sc2mac_dat_data10_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[10])) == 1'b0) begin
       end else begin
           sc2mac_dat_data10_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data11_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data11_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[11])) == 1'b1) begin
           sc2mac_dat_data11_d1 <= sc2mac_dat_data11_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[11])) == 1'b0) begin
       end else begin
           sc2mac_dat_data11_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data12_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data12_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[12])) == 1'b1) begin
           sc2mac_dat_data12_d1 <= sc2mac_dat_data12_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[12])) == 1'b0) begin
       end else begin
           sc2mac_dat_data12_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data13_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data13_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[13])) == 1'b1) begin
           sc2mac_dat_data13_d1 <= sc2mac_dat_data13_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[13])) == 1'b0) begin
       end else begin
           sc2mac_dat_data13_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data14_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data14_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[14])) == 1'b1) begin
           sc2mac_dat_data14_d1 <= sc2mac_dat_data14_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[14])) == 1'b0) begin
       end else begin
           sc2mac_dat_data14_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data15_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data15_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[15])) == 1'b1) begin
           sc2mac_dat_data15_d1 <= sc2mac_dat_data15_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[15])) == 1'b0) begin
       end else begin
           sc2mac_dat_data15_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data16_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data16_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[16])) == 1'b1) begin
           sc2mac_dat_data16_d1 <= sc2mac_dat_data16_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[16])) == 1'b0) begin
       end else begin
           sc2mac_dat_data16_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data17_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data17_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[17])) == 1'b1) begin
           sc2mac_dat_data17_d1 <= sc2mac_dat_data17_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[17])) == 1'b0) begin
       end else begin
           sc2mac_dat_data17_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data18_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data18_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[18])) == 1'b1) begin
           sc2mac_dat_data18_d1 <= sc2mac_dat_data18_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[18])) == 1'b0) begin
       end else begin
           sc2mac_dat_data18_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data19_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data19_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[19])) == 1'b1) begin
           sc2mac_dat_data19_d1 <= sc2mac_dat_data19_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[19])) == 1'b0) begin
       end else begin
           sc2mac_dat_data19_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data20_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data20_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[20])) == 1'b1) begin
           sc2mac_dat_data20_d1 <= sc2mac_dat_data20_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[20])) == 1'b0) begin
       end else begin
           sc2mac_dat_data20_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data21_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data21_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[21])) == 1'b1) begin
           sc2mac_dat_data21_d1 <= sc2mac_dat_data21_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[21])) == 1'b0) begin
       end else begin
           sc2mac_dat_data21_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data22_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data22_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[22])) == 1'b1) begin
           sc2mac_dat_data22_d1 <= sc2mac_dat_data22_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[22])) == 1'b0) begin
       end else begin
           sc2mac_dat_data22_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data23_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data23_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[23])) == 1'b1) begin
           sc2mac_dat_data23_d1 <= sc2mac_dat_data23_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[23])) == 1'b0) begin
       end else begin
           sc2mac_dat_data23_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data24_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data24_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[24])) == 1'b1) begin
           sc2mac_dat_data24_d1 <= sc2mac_dat_data24_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[24])) == 1'b0) begin
       end else begin
           sc2mac_dat_data24_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data25_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data25_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[25])) == 1'b1) begin
           sc2mac_dat_data25_d1 <= sc2mac_dat_data25_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[25])) == 1'b0) begin
       end else begin
           sc2mac_dat_data25_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data26_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data26_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[26])) == 1'b1) begin
           sc2mac_dat_data26_d1 <= sc2mac_dat_data26_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[26])) == 1'b0) begin
       end else begin
           sc2mac_dat_data26_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data27_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data27_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[27])) == 1'b1) begin
           sc2mac_dat_data27_d1 <= sc2mac_dat_data27_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[27])) == 1'b0) begin
       end else begin
           sc2mac_dat_data27_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data28_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data28_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[28])) == 1'b1) begin
           sc2mac_dat_data28_d1 <= sc2mac_dat_data28_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[28])) == 1'b0) begin
       end else begin
           sc2mac_dat_data28_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data29_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data29_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[29])) == 1'b1) begin
           sc2mac_dat_data29_d1 <= sc2mac_dat_data29_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[29])) == 1'b0) begin
       end else begin
           sc2mac_dat_data29_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data30_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data30_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[30])) == 1'b1) begin
           sc2mac_dat_data30_d1 <= sc2mac_dat_data30_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[30])) == 1'b0) begin
       end else begin
           sc2mac_dat_data30_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [7:0] sc2mac_dat_data31_d1;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       sc2mac_dat_data31_d1 <= 'b0;
   end else begin
       if (((sc2mac_dat_mask_d0[31])) == 1'b1) begin
           sc2mac_dat_data31_d1 <= sc2mac_dat_data31_d0;
       // VCS coverage off
       end else if (((sc2mac_dat_mask_d0[31])) == 1'b0) begin
       end else begin
           sc2mac_dat_data31_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
wire sc2mac_wt_dst_pvld = sc2mac_wt_pvld_d1;
wire[4-1:0] sc2mac_wt_dst_sel = sc2mac_wt_sel_d1;
wire[32-1:0] sc2mac_wt_dst_mask = sc2mac_wt_mask_d1;
wire[8-1:0] sc2mac_wt_dst_data0 = sc2mac_wt_data0_d1;
wire[8-1:0] sc2mac_wt_dst_data1 = sc2mac_wt_data1_d1;
wire[8-1:0] sc2mac_wt_dst_data2 = sc2mac_wt_data2_d1;
wire[8-1:0] sc2mac_wt_dst_data3 = sc2mac_wt_data3_d1;
wire[8-1:0] sc2mac_wt_dst_data4 = sc2mac_wt_data4_d1;
wire[8-1:0] sc2mac_wt_dst_data5 = sc2mac_wt_data5_d1;
wire[8-1:0] sc2mac_wt_dst_data6 = sc2mac_wt_data6_d1;
wire[8-1:0] sc2mac_wt_dst_data7 = sc2mac_wt_data7_d1;
wire[8-1:0] sc2mac_wt_dst_data8 = sc2mac_wt_data8_d1;
wire[8-1:0] sc2mac_wt_dst_data9 = sc2mac_wt_data9_d1;
wire[8-1:0] sc2mac_wt_dst_data10 = sc2mac_wt_data10_d1;
wire[8-1:0] sc2mac_wt_dst_data11 = sc2mac_wt_data11_d1;
wire[8-1:0] sc2mac_wt_dst_data12 = sc2mac_wt_data12_d1;
wire[8-1:0] sc2mac_wt_dst_data13 = sc2mac_wt_data13_d1;
wire[8-1:0] sc2mac_wt_dst_data14 = sc2mac_wt_data14_d1;
wire[8-1:0] sc2mac_wt_dst_data15 = sc2mac_wt_data15_d1;
wire[8-1:0] sc2mac_wt_dst_data16 = sc2mac_wt_data16_d1;
wire[8-1:0] sc2mac_wt_dst_data17 = sc2mac_wt_data17_d1;
wire[8-1:0] sc2mac_wt_dst_data18 = sc2mac_wt_data18_d1;
wire[8-1:0] sc2mac_wt_dst_data19 = sc2mac_wt_data19_d1;
wire[8-1:0] sc2mac_wt_dst_data20 = sc2mac_wt_data20_d1;
wire[8-1:0] sc2mac_wt_dst_data21 = sc2mac_wt_data21_d1;
wire[8-1:0] sc2mac_wt_dst_data22 = sc2mac_wt_data22_d1;
wire[8-1:0] sc2mac_wt_dst_data23 = sc2mac_wt_data23_d1;
wire[8-1:0] sc2mac_wt_dst_data24 = sc2mac_wt_data24_d1;
wire[8-1:0] sc2mac_wt_dst_data25 = sc2mac_wt_data25_d1;
wire[8-1:0] sc2mac_wt_dst_data26 = sc2mac_wt_data26_d1;
wire[8-1:0] sc2mac_wt_dst_data27 = sc2mac_wt_data27_d1;
wire[8-1:0] sc2mac_wt_dst_data28 = sc2mac_wt_data28_d1;
wire[8-1:0] sc2mac_wt_dst_data29 = sc2mac_wt_data29_d1;
wire[8-1:0] sc2mac_wt_dst_data30 = sc2mac_wt_data30_d1;
wire[8-1:0] sc2mac_wt_dst_data31 = sc2mac_wt_data31_d1;
wire sc2mac_dat_dst_pvld = sc2mac_dat_pvld_d1;
wire[8:0] sc2mac_dat_dst_pd = sc2mac_dat_pd_d1;
wire[32-1:0] sc2mac_dat_dst_mask = sc2mac_dat_mask_d1;
wire[8-1:0] sc2mac_dat_dst_data0 = sc2mac_dat_data0_d1;
wire[8-1:0] sc2mac_dat_dst_data1 = sc2mac_dat_data1_d1;
wire[8-1:0] sc2mac_dat_dst_data2 = sc2mac_dat_data2_d1;
wire[8-1:0] sc2mac_dat_dst_data3 = sc2mac_dat_data3_d1;
wire[8-1:0] sc2mac_dat_dst_data4 = sc2mac_dat_data4_d1;
wire[8-1:0] sc2mac_dat_dst_data5 = sc2mac_dat_data5_d1;
wire[8-1:0] sc2mac_dat_dst_data6 = sc2mac_dat_data6_d1;
wire[8-1:0] sc2mac_dat_dst_data7 = sc2mac_dat_data7_d1;
wire[8-1:0] sc2mac_dat_dst_data8 = sc2mac_dat_data8_d1;
wire[8-1:0] sc2mac_dat_dst_data9 = sc2mac_dat_data9_d1;
wire[8-1:0] sc2mac_dat_dst_data10 = sc2mac_dat_data10_d1;
wire[8-1:0] sc2mac_dat_dst_data11 = sc2mac_dat_data11_d1;
wire[8-1:0] sc2mac_dat_dst_data12 = sc2mac_dat_data12_d1;
wire[8-1:0] sc2mac_dat_dst_data13 = sc2mac_dat_data13_d1;
wire[8-1:0] sc2mac_dat_dst_data14 = sc2mac_dat_data14_d1;
wire[8-1:0] sc2mac_dat_dst_data15 = sc2mac_dat_data15_d1;
wire[8-1:0] sc2mac_dat_dst_data16 = sc2mac_dat_data16_d1;
wire[8-1:0] sc2mac_dat_dst_data17 = sc2mac_dat_data17_d1;
wire[8-1:0] sc2mac_dat_dst_data18 = sc2mac_dat_data18_d1;
wire[8-1:0] sc2mac_dat_dst_data19 = sc2mac_dat_data19_d1;
wire[8-1:0] sc2mac_dat_dst_data20 = sc2mac_dat_data20_d1;
wire[8-1:0] sc2mac_dat_dst_data21 = sc2mac_dat_data21_d1;
wire[8-1:0] sc2mac_dat_dst_data22 = sc2mac_dat_data22_d1;
wire[8-1:0] sc2mac_dat_dst_data23 = sc2mac_dat_data23_d1;
wire[8-1:0] sc2mac_dat_dst_data24 = sc2mac_dat_data24_d1;
wire[8-1:0] sc2mac_dat_dst_data25 = sc2mac_dat_data25_d1;
wire[8-1:0] sc2mac_dat_dst_data26 = sc2mac_dat_data26_d1;
wire[8-1:0] sc2mac_dat_dst_data27 = sc2mac_dat_data27_d1;
wire[8-1:0] sc2mac_dat_dst_data28 = sc2mac_dat_data28_d1;
wire[8-1:0] sc2mac_dat_dst_data29 = sc2mac_dat_data29_d1;
wire[8-1:0] sc2mac_dat_dst_data30 = sc2mac_dat_data30_d1;
wire[8-1:0] sc2mac_dat_dst_data31 = sc2mac_dat_data31_d1;

//| eperl: generated_end (DO NOT EDIT ABOVE)
endmodule // NV_NVDLA_RT_csc2cmac_b
