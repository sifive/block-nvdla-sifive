// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_partition_c.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_define.h
///////////////////////////////////////////////////
//
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
    `define CC_ATOMC_DIV_ATOMK_EQUAL_2
//image stripe keep 2*atomK
//batch keep 1
`define CBUF_WEIGHT_COMPRESSED //whether need read WMB
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CBUF.h
    `define CBUF_BANK_RAM_CASE1
//ram case could be 0/1/2/3/4  0:1ram/bank; 1:1*2ram/bank; 2:2*1ram/bank; 3:2*2ram/bank  4:4*1ram/bank
    `define CBUF_WEIGHT_COMPRESSED //whether need read WMB
`define CDMA2CBUF_DEBUG_PRINT //open debug print
module NV_NVDLA_partition_c (
   accu2sc_credit_size //|< i
  ,accu2sc_credit_vld //|< i
  ,cacc2csb_resp_src_valid //|< i
  ,cacc2csb_resp_src_pd //|< i
  ,cacc2glb_done_intr_src_pd //|< i
  ,cacc2csb_resp_dst_valid //|> o
  ,cacc2csb_resp_dst_pd //|> o
  ,cacc2glb_done_intr_dst_pd //|> o
  ,csb2cacc_req_src_pvld //|< i
  ,csb2cacc_req_src_prdy //|> o
  ,csb2cacc_req_src_pd //|< i
  ,csb2cacc_req_dst_prdy //|< i
  ,csb2cacc_req_dst_pvld //|> o
  ,csb2cacc_req_dst_pd //|> o
  ,cmac_b2csb_resp_src_valid //|< i
  ,cmac_b2csb_resp_src_pd //|< i
  ,cmac_b2csb_resp_dst_valid //|> o
  ,cmac_b2csb_resp_dst_pd //|> o
  ,csb2cmac_b_req_dst_pvld //|> o
  ,csb2cmac_b_req_src_prdy //|> o
  ,csb2cmac_b_req_dst_pd //|> o
  ,csb2cmac_b_req_src_pvld //|< i
  ,csb2cmac_b_req_src_pd //|< i
  ,csb2cmac_b_req_dst_prdy //|< i
  ,cdma_dat2cvif_rd_req_ready //|< i
  ,cdma_dat2mcif_rd_req_ready //|< i
  ,cdma_wt2cvif_rd_req_ready //|< i
  ,cdma_wt2mcif_rd_req_ready //|< i
  ,csb2cdma_req_pd //|< i
  ,csb2cdma_req_pvld //|< i
  ,csb2csc_req_pd //|< i
  ,csb2csc_req_pvld //|< i
  ,cvif2cdma_dat_rd_rsp_pd //|< i
  ,cvif2cdma_dat_rd_rsp_valid //|< i
  ,cvif2cdma_wt_rd_rsp_pd //|< i
  ,cvif2cdma_wt_rd_rsp_valid //|< i
  ,direct_reset_ //|< i
  ,dla_reset_rstn //|< i
  ,global_clk_ovr_on //|< i
  ,mcif2cdma_dat_rd_rsp_pd //|< i
  ,mcif2cdma_dat_rd_rsp_valid //|< i
  ,mcif2cdma_wt_rd_rsp_pd //|< i
  ,mcif2cdma_wt_rd_rsp_valid //|< i
  ,nvdla_clk_ovr_on //|< i
  ,nvdla_core_clk //|< i
  ,pwrbus_ram_pd //|< i
  ,test_mode //|< i
  ,tmc2slcg_disable_clock_gating //|< i
  ,cdma2csb_resp_pd //|> o
  ,cdma2csb_resp_valid //|> o
  ,cdma_dat2cvif_rd_req_pd //|> o
  ,cdma_dat2cvif_rd_req_valid //|> o
  ,cdma_dat2glb_done_intr_pd //|> o
  ,cdma_dat2mcif_rd_req_pd //|> o
  ,cdma_dat2mcif_rd_req_valid //|> o
  ,cdma_wt2cvif_rd_req_pd //|> o
  ,cdma_wt2cvif_rd_req_valid //|> o
  ,cdma_wt2glb_done_intr_pd //|> o
  ,cdma_wt2mcif_rd_req_pd //|> o
  ,cdma_wt2mcif_rd_req_valid //|> o
  ,csb2cdma_req_prdy //|> o
  ,csb2csc_req_prdy //|> o
  ,csc2csb_resp_pd //|> o
  ,csc2csb_resp_valid //|> o
  ,cvif2cdma_dat_rd_rsp_ready //|> o
  ,cvif2cdma_wt_rd_rsp_ready //|> o
  ,mcif2cdma_dat_rd_rsp_ready //|> o
  ,mcif2cdma_wt_rd_rsp_ready //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_dat_a_src_data${i} //|> o   );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_a_src_data0 //|> o   
,sc2mac_dat_a_src_data1 //|> o   
,sc2mac_dat_a_src_data2 //|> o   
,sc2mac_dat_a_src_data3 //|> o   
,sc2mac_dat_a_src_data4 //|> o   
,sc2mac_dat_a_src_data5 //|> o   
,sc2mac_dat_a_src_data6 //|> o   
,sc2mac_dat_a_src_data7 //|> o   
,sc2mac_dat_a_src_data8 //|> o   
,sc2mac_dat_a_src_data9 //|> o   
,sc2mac_dat_a_src_data10 //|> o   
,sc2mac_dat_a_src_data11 //|> o   
,sc2mac_dat_a_src_data12 //|> o   
,sc2mac_dat_a_src_data13 //|> o   
,sc2mac_dat_a_src_data14 //|> o   
,sc2mac_dat_a_src_data15 //|> o   
,sc2mac_dat_a_src_data16 //|> o   
,sc2mac_dat_a_src_data17 //|> o   
,sc2mac_dat_a_src_data18 //|> o   
,sc2mac_dat_a_src_data19 //|> o   
,sc2mac_dat_a_src_data20 //|> o   
,sc2mac_dat_a_src_data21 //|> o   
,sc2mac_dat_a_src_data22 //|> o   
,sc2mac_dat_a_src_data23 //|> o   
,sc2mac_dat_a_src_data24 //|> o   
,sc2mac_dat_a_src_data25 //|> o   
,sc2mac_dat_a_src_data26 //|> o   
,sc2mac_dat_a_src_data27 //|> o   
,sc2mac_dat_a_src_data28 //|> o   
,sc2mac_dat_a_src_data29 //|> o   
,sc2mac_dat_a_src_data30 //|> o   
,sc2mac_dat_a_src_data31 //|> o   
,sc2mac_dat_a_src_data32 //|> o   
,sc2mac_dat_a_src_data33 //|> o   
,sc2mac_dat_a_src_data34 //|> o   
,sc2mac_dat_a_src_data35 //|> o   
,sc2mac_dat_a_src_data36 //|> o   
,sc2mac_dat_a_src_data37 //|> o   
,sc2mac_dat_a_src_data38 //|> o   
,sc2mac_dat_a_src_data39 //|> o   
,sc2mac_dat_a_src_data40 //|> o   
,sc2mac_dat_a_src_data41 //|> o   
,sc2mac_dat_a_src_data42 //|> o   
,sc2mac_dat_a_src_data43 //|> o   
,sc2mac_dat_a_src_data44 //|> o   
,sc2mac_dat_a_src_data45 //|> o   
,sc2mac_dat_a_src_data46 //|> o   
,sc2mac_dat_a_src_data47 //|> o   
,sc2mac_dat_a_src_data48 //|> o   
,sc2mac_dat_a_src_data49 //|> o   
,sc2mac_dat_a_src_data50 //|> o   
,sc2mac_dat_a_src_data51 //|> o   
,sc2mac_dat_a_src_data52 //|> o   
,sc2mac_dat_a_src_data53 //|> o   
,sc2mac_dat_a_src_data54 //|> o   
,sc2mac_dat_a_src_data55 //|> o   
,sc2mac_dat_a_src_data56 //|> o   
,sc2mac_dat_a_src_data57 //|> o   
,sc2mac_dat_a_src_data58 //|> o   
,sc2mac_dat_a_src_data59 //|> o   
,sc2mac_dat_a_src_data60 //|> o   
,sc2mac_dat_a_src_data61 //|> o   
,sc2mac_dat_a_src_data62 //|> o   
,sc2mac_dat_a_src_data63 //|> o   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_a_src_mask //|> o
  ,sc2mac_dat_a_src_pd //|> o
  ,sc2mac_dat_a_src_pvld //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_dat_b_dst_data${i} //|> o   );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_b_dst_data0 //|> o   
,sc2mac_dat_b_dst_data1 //|> o   
,sc2mac_dat_b_dst_data2 //|> o   
,sc2mac_dat_b_dst_data3 //|> o   
,sc2mac_dat_b_dst_data4 //|> o   
,sc2mac_dat_b_dst_data5 //|> o   
,sc2mac_dat_b_dst_data6 //|> o   
,sc2mac_dat_b_dst_data7 //|> o   
,sc2mac_dat_b_dst_data8 //|> o   
,sc2mac_dat_b_dst_data9 //|> o   
,sc2mac_dat_b_dst_data10 //|> o   
,sc2mac_dat_b_dst_data11 //|> o   
,sc2mac_dat_b_dst_data12 //|> o   
,sc2mac_dat_b_dst_data13 //|> o   
,sc2mac_dat_b_dst_data14 //|> o   
,sc2mac_dat_b_dst_data15 //|> o   
,sc2mac_dat_b_dst_data16 //|> o   
,sc2mac_dat_b_dst_data17 //|> o   
,sc2mac_dat_b_dst_data18 //|> o   
,sc2mac_dat_b_dst_data19 //|> o   
,sc2mac_dat_b_dst_data20 //|> o   
,sc2mac_dat_b_dst_data21 //|> o   
,sc2mac_dat_b_dst_data22 //|> o   
,sc2mac_dat_b_dst_data23 //|> o   
,sc2mac_dat_b_dst_data24 //|> o   
,sc2mac_dat_b_dst_data25 //|> o   
,sc2mac_dat_b_dst_data26 //|> o   
,sc2mac_dat_b_dst_data27 //|> o   
,sc2mac_dat_b_dst_data28 //|> o   
,sc2mac_dat_b_dst_data29 //|> o   
,sc2mac_dat_b_dst_data30 //|> o   
,sc2mac_dat_b_dst_data31 //|> o   
,sc2mac_dat_b_dst_data32 //|> o   
,sc2mac_dat_b_dst_data33 //|> o   
,sc2mac_dat_b_dst_data34 //|> o   
,sc2mac_dat_b_dst_data35 //|> o   
,sc2mac_dat_b_dst_data36 //|> o   
,sc2mac_dat_b_dst_data37 //|> o   
,sc2mac_dat_b_dst_data38 //|> o   
,sc2mac_dat_b_dst_data39 //|> o   
,sc2mac_dat_b_dst_data40 //|> o   
,sc2mac_dat_b_dst_data41 //|> o   
,sc2mac_dat_b_dst_data42 //|> o   
,sc2mac_dat_b_dst_data43 //|> o   
,sc2mac_dat_b_dst_data44 //|> o   
,sc2mac_dat_b_dst_data45 //|> o   
,sc2mac_dat_b_dst_data46 //|> o   
,sc2mac_dat_b_dst_data47 //|> o   
,sc2mac_dat_b_dst_data48 //|> o   
,sc2mac_dat_b_dst_data49 //|> o   
,sc2mac_dat_b_dst_data50 //|> o   
,sc2mac_dat_b_dst_data51 //|> o   
,sc2mac_dat_b_dst_data52 //|> o   
,sc2mac_dat_b_dst_data53 //|> o   
,sc2mac_dat_b_dst_data54 //|> o   
,sc2mac_dat_b_dst_data55 //|> o   
,sc2mac_dat_b_dst_data56 //|> o   
,sc2mac_dat_b_dst_data57 //|> o   
,sc2mac_dat_b_dst_data58 //|> o   
,sc2mac_dat_b_dst_data59 //|> o   
,sc2mac_dat_b_dst_data60 //|> o   
,sc2mac_dat_b_dst_data61 //|> o   
,sc2mac_dat_b_dst_data62 //|> o   
,sc2mac_dat_b_dst_data63 //|> o   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_b_dst_mask //|> o
  ,sc2mac_dat_b_dst_pd //|> o
  ,sc2mac_dat_b_dst_pvld //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_wt_a_src_data${i} //|> o   );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_wt_a_src_data0 //|> o   
,sc2mac_wt_a_src_data1 //|> o   
,sc2mac_wt_a_src_data2 //|> o   
,sc2mac_wt_a_src_data3 //|> o   
,sc2mac_wt_a_src_data4 //|> o   
,sc2mac_wt_a_src_data5 //|> o   
,sc2mac_wt_a_src_data6 //|> o   
,sc2mac_wt_a_src_data7 //|> o   
,sc2mac_wt_a_src_data8 //|> o   
,sc2mac_wt_a_src_data9 //|> o   
,sc2mac_wt_a_src_data10 //|> o   
,sc2mac_wt_a_src_data11 //|> o   
,sc2mac_wt_a_src_data12 //|> o   
,sc2mac_wt_a_src_data13 //|> o   
,sc2mac_wt_a_src_data14 //|> o   
,sc2mac_wt_a_src_data15 //|> o   
,sc2mac_wt_a_src_data16 //|> o   
,sc2mac_wt_a_src_data17 //|> o   
,sc2mac_wt_a_src_data18 //|> o   
,sc2mac_wt_a_src_data19 //|> o   
,sc2mac_wt_a_src_data20 //|> o   
,sc2mac_wt_a_src_data21 //|> o   
,sc2mac_wt_a_src_data22 //|> o   
,sc2mac_wt_a_src_data23 //|> o   
,sc2mac_wt_a_src_data24 //|> o   
,sc2mac_wt_a_src_data25 //|> o   
,sc2mac_wt_a_src_data26 //|> o   
,sc2mac_wt_a_src_data27 //|> o   
,sc2mac_wt_a_src_data28 //|> o   
,sc2mac_wt_a_src_data29 //|> o   
,sc2mac_wt_a_src_data30 //|> o   
,sc2mac_wt_a_src_data31 //|> o   
,sc2mac_wt_a_src_data32 //|> o   
,sc2mac_wt_a_src_data33 //|> o   
,sc2mac_wt_a_src_data34 //|> o   
,sc2mac_wt_a_src_data35 //|> o   
,sc2mac_wt_a_src_data36 //|> o   
,sc2mac_wt_a_src_data37 //|> o   
,sc2mac_wt_a_src_data38 //|> o   
,sc2mac_wt_a_src_data39 //|> o   
,sc2mac_wt_a_src_data40 //|> o   
,sc2mac_wt_a_src_data41 //|> o   
,sc2mac_wt_a_src_data42 //|> o   
,sc2mac_wt_a_src_data43 //|> o   
,sc2mac_wt_a_src_data44 //|> o   
,sc2mac_wt_a_src_data45 //|> o   
,sc2mac_wt_a_src_data46 //|> o   
,sc2mac_wt_a_src_data47 //|> o   
,sc2mac_wt_a_src_data48 //|> o   
,sc2mac_wt_a_src_data49 //|> o   
,sc2mac_wt_a_src_data50 //|> o   
,sc2mac_wt_a_src_data51 //|> o   
,sc2mac_wt_a_src_data52 //|> o   
,sc2mac_wt_a_src_data53 //|> o   
,sc2mac_wt_a_src_data54 //|> o   
,sc2mac_wt_a_src_data55 //|> o   
,sc2mac_wt_a_src_data56 //|> o   
,sc2mac_wt_a_src_data57 //|> o   
,sc2mac_wt_a_src_data58 //|> o   
,sc2mac_wt_a_src_data59 //|> o   
,sc2mac_wt_a_src_data60 //|> o   
,sc2mac_wt_a_src_data61 //|> o   
,sc2mac_wt_a_src_data62 //|> o   
,sc2mac_wt_a_src_data63 //|> o   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_a_src_mask //|> o
  ,sc2mac_wt_a_src_pvld //|> o
  ,sc2mac_wt_a_src_sel //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,sc2mac_wt_b_dst_data${i} //|> o   );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_wt_b_dst_data0 //|> o   
,sc2mac_wt_b_dst_data1 //|> o   
,sc2mac_wt_b_dst_data2 //|> o   
,sc2mac_wt_b_dst_data3 //|> o   
,sc2mac_wt_b_dst_data4 //|> o   
,sc2mac_wt_b_dst_data5 //|> o   
,sc2mac_wt_b_dst_data6 //|> o   
,sc2mac_wt_b_dst_data7 //|> o   
,sc2mac_wt_b_dst_data8 //|> o   
,sc2mac_wt_b_dst_data9 //|> o   
,sc2mac_wt_b_dst_data10 //|> o   
,sc2mac_wt_b_dst_data11 //|> o   
,sc2mac_wt_b_dst_data12 //|> o   
,sc2mac_wt_b_dst_data13 //|> o   
,sc2mac_wt_b_dst_data14 //|> o   
,sc2mac_wt_b_dst_data15 //|> o   
,sc2mac_wt_b_dst_data16 //|> o   
,sc2mac_wt_b_dst_data17 //|> o   
,sc2mac_wt_b_dst_data18 //|> o   
,sc2mac_wt_b_dst_data19 //|> o   
,sc2mac_wt_b_dst_data20 //|> o   
,sc2mac_wt_b_dst_data21 //|> o   
,sc2mac_wt_b_dst_data22 //|> o   
,sc2mac_wt_b_dst_data23 //|> o   
,sc2mac_wt_b_dst_data24 //|> o   
,sc2mac_wt_b_dst_data25 //|> o   
,sc2mac_wt_b_dst_data26 //|> o   
,sc2mac_wt_b_dst_data27 //|> o   
,sc2mac_wt_b_dst_data28 //|> o   
,sc2mac_wt_b_dst_data29 //|> o   
,sc2mac_wt_b_dst_data30 //|> o   
,sc2mac_wt_b_dst_data31 //|> o   
,sc2mac_wt_b_dst_data32 //|> o   
,sc2mac_wt_b_dst_data33 //|> o   
,sc2mac_wt_b_dst_data34 //|> o   
,sc2mac_wt_b_dst_data35 //|> o   
,sc2mac_wt_b_dst_data36 //|> o   
,sc2mac_wt_b_dst_data37 //|> o   
,sc2mac_wt_b_dst_data38 //|> o   
,sc2mac_wt_b_dst_data39 //|> o   
,sc2mac_wt_b_dst_data40 //|> o   
,sc2mac_wt_b_dst_data41 //|> o   
,sc2mac_wt_b_dst_data42 //|> o   
,sc2mac_wt_b_dst_data43 //|> o   
,sc2mac_wt_b_dst_data44 //|> o   
,sc2mac_wt_b_dst_data45 //|> o   
,sc2mac_wt_b_dst_data46 //|> o   
,sc2mac_wt_b_dst_data47 //|> o   
,sc2mac_wt_b_dst_data48 //|> o   
,sc2mac_wt_b_dst_data49 //|> o   
,sc2mac_wt_b_dst_data50 //|> o   
,sc2mac_wt_b_dst_data51 //|> o   
,sc2mac_wt_b_dst_data52 //|> o   
,sc2mac_wt_b_dst_data53 //|> o   
,sc2mac_wt_b_dst_data54 //|> o   
,sc2mac_wt_b_dst_data55 //|> o   
,sc2mac_wt_b_dst_data56 //|> o   
,sc2mac_wt_b_dst_data57 //|> o   
,sc2mac_wt_b_dst_data58 //|> o   
,sc2mac_wt_b_dst_data59 //|> o   
,sc2mac_wt_b_dst_data60 //|> o   
,sc2mac_wt_b_dst_data61 //|> o   
,sc2mac_wt_b_dst_data62 //|> o   
,sc2mac_wt_b_dst_data63 //|> o   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_wt_b_dst_mask //|> o
  ,sc2mac_wt_b_dst_pvld //|> o
  ,sc2mac_wt_b_dst_sel //|> o
  );
//
// NV_NVDLA_partition_c_io.v
//
input test_mode;
input direct_reset_;
input global_clk_ovr_on;
input tmc2slcg_disable_clock_gating;
input accu2sc_credit_vld; /* data valid */
input [2:0] accu2sc_credit_size;
input cacc2csb_resp_src_valid; /* data valid */
input [33:0] cacc2csb_resp_src_pd; /* pkt_id_width=1 pkt_widths=33,33  */
input [1:0] cacc2glb_done_intr_src_pd;
output cacc2csb_resp_dst_valid; /* data valid */
output [33:0] cacc2csb_resp_dst_pd; /* pkt_id_width=1 pkt_widths=33,33  */
output [1:0] cacc2glb_done_intr_dst_pd;
input csb2cacc_req_src_pvld; /* data valid */
output csb2cacc_req_src_prdy; /* data return handshake */
input [62:0] csb2cacc_req_src_pd;
output csb2cacc_req_dst_pvld; /* data valid */
input csb2cacc_req_dst_prdy; /* data return handshake */
output [62:0] csb2cacc_req_dst_pd;
input cmac_b2csb_resp_src_valid; /* data valid */
input [33:0] cmac_b2csb_resp_src_pd; /* pkt_id_width=1 pkt_widths=33,33  */
output cmac_b2csb_resp_dst_valid; /* data valid */
output [33:0] cmac_b2csb_resp_dst_pd; /* pkt_id_width=1 pkt_widths=33,33  */
input csb2cmac_b_req_src_pvld; /* data valid */
output csb2cmac_b_req_src_prdy; /* data return handshake */
input [62:0] csb2cmac_b_req_src_pd;
output csb2cmac_b_req_dst_pvld; /* data valid */
input csb2cmac_b_req_dst_prdy; /* data return handshake */
output [62:0] csb2cmac_b_req_dst_pd;
output cdma2csb_resp_valid; /* data valid */
output [33:0] cdma2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
output [1:0] cdma_dat2glb_done_intr_pd;
output cdma_dat2mcif_rd_req_valid; /* data valid */
input cdma_dat2mcif_rd_req_ready; /* data return handshake */
output [64 +14:0] cdma_dat2mcif_rd_req_pd;
output [1:0] cdma_wt2glb_done_intr_pd;
output cdma_wt2mcif_rd_req_valid; /* data valid */
input cdma_wt2mcif_rd_req_ready; /* data return handshake */
output [64 +14:0] cdma_wt2mcif_rd_req_pd;
input csb2cdma_req_pvld; /* data valid */
output csb2cdma_req_prdy; /* data return handshake */
input [62:0] csb2cdma_req_pd;
input csb2csc_req_pvld; /* data valid */
output csb2csc_req_prdy; /* data return handshake */
input [62:0] csb2csc_req_pd;
output csc2csb_resp_valid; /* data valid */
output [33:0] csc2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
output cdma_dat2cvif_rd_req_valid; /* data valid */
input cdma_dat2cvif_rd_req_ready; /* data return handshake */
output [64 +14:0] cdma_dat2cvif_rd_req_pd;
output cdma_wt2cvif_rd_req_valid; /* data valid */
input cdma_wt2cvif_rd_req_ready; /* data return handshake */
output [64 +14:0] cdma_wt2cvif_rd_req_pd;
input cvif2cdma_dat_rd_rsp_valid; /* data valid */
output cvif2cdma_dat_rd_rsp_ready; /* data return handshake */
input [512 +(512/8/32)-1:0] cvif2cdma_dat_rd_rsp_pd;
input cvif2cdma_wt_rd_rsp_valid; /* data valid */
output cvif2cdma_wt_rd_rsp_ready; /* data return handshake */
input [512 +(512/8/32)-1:0] cvif2cdma_wt_rd_rsp_pd;
input mcif2cdma_dat_rd_rsp_valid; /* data valid */
output mcif2cdma_dat_rd_rsp_ready; /* data return handshake */
input [512 +(512/8/32)-1:0] mcif2cdma_dat_rd_rsp_pd;
input mcif2cdma_wt_rd_rsp_valid; /* data valid */
output mcif2cdma_wt_rd_rsp_ready; /* data return handshake */
input [512 +(512/8/32)-1:0] mcif2cdma_wt_rd_rsp_pd;
input [31:0] pwrbus_ram_pd;
//: my $kk=64 -1;
//: foreach my $i (0..${kk}) {
//: print qq(
//: output [8 -1:0] sc2mac_dat_a_src_data${i};
//: output [8 -1:0] sc2mac_dat_b_dst_data${i};
//: output [8 -1:0] sc2mac_wt_a_src_data${i};
//: output [8 -1:0] sc2mac_wt_b_dst_data${i};
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [8 -1:0] sc2mac_dat_a_src_data0;
output [8 -1:0] sc2mac_dat_b_dst_data0;
output [8 -1:0] sc2mac_wt_a_src_data0;
output [8 -1:0] sc2mac_wt_b_dst_data0;

output [8 -1:0] sc2mac_dat_a_src_data1;
output [8 -1:0] sc2mac_dat_b_dst_data1;
output [8 -1:0] sc2mac_wt_a_src_data1;
output [8 -1:0] sc2mac_wt_b_dst_data1;

output [8 -1:0] sc2mac_dat_a_src_data2;
output [8 -1:0] sc2mac_dat_b_dst_data2;
output [8 -1:0] sc2mac_wt_a_src_data2;
output [8 -1:0] sc2mac_wt_b_dst_data2;

output [8 -1:0] sc2mac_dat_a_src_data3;
output [8 -1:0] sc2mac_dat_b_dst_data3;
output [8 -1:0] sc2mac_wt_a_src_data3;
output [8 -1:0] sc2mac_wt_b_dst_data3;

output [8 -1:0] sc2mac_dat_a_src_data4;
output [8 -1:0] sc2mac_dat_b_dst_data4;
output [8 -1:0] sc2mac_wt_a_src_data4;
output [8 -1:0] sc2mac_wt_b_dst_data4;

output [8 -1:0] sc2mac_dat_a_src_data5;
output [8 -1:0] sc2mac_dat_b_dst_data5;
output [8 -1:0] sc2mac_wt_a_src_data5;
output [8 -1:0] sc2mac_wt_b_dst_data5;

output [8 -1:0] sc2mac_dat_a_src_data6;
output [8 -1:0] sc2mac_dat_b_dst_data6;
output [8 -1:0] sc2mac_wt_a_src_data6;
output [8 -1:0] sc2mac_wt_b_dst_data6;

output [8 -1:0] sc2mac_dat_a_src_data7;
output [8 -1:0] sc2mac_dat_b_dst_data7;
output [8 -1:0] sc2mac_wt_a_src_data7;
output [8 -1:0] sc2mac_wt_b_dst_data7;

output [8 -1:0] sc2mac_dat_a_src_data8;
output [8 -1:0] sc2mac_dat_b_dst_data8;
output [8 -1:0] sc2mac_wt_a_src_data8;
output [8 -1:0] sc2mac_wt_b_dst_data8;

output [8 -1:0] sc2mac_dat_a_src_data9;
output [8 -1:0] sc2mac_dat_b_dst_data9;
output [8 -1:0] sc2mac_wt_a_src_data9;
output [8 -1:0] sc2mac_wt_b_dst_data9;

output [8 -1:0] sc2mac_dat_a_src_data10;
output [8 -1:0] sc2mac_dat_b_dst_data10;
output [8 -1:0] sc2mac_wt_a_src_data10;
output [8 -1:0] sc2mac_wt_b_dst_data10;

output [8 -1:0] sc2mac_dat_a_src_data11;
output [8 -1:0] sc2mac_dat_b_dst_data11;
output [8 -1:0] sc2mac_wt_a_src_data11;
output [8 -1:0] sc2mac_wt_b_dst_data11;

output [8 -1:0] sc2mac_dat_a_src_data12;
output [8 -1:0] sc2mac_dat_b_dst_data12;
output [8 -1:0] sc2mac_wt_a_src_data12;
output [8 -1:0] sc2mac_wt_b_dst_data12;

output [8 -1:0] sc2mac_dat_a_src_data13;
output [8 -1:0] sc2mac_dat_b_dst_data13;
output [8 -1:0] sc2mac_wt_a_src_data13;
output [8 -1:0] sc2mac_wt_b_dst_data13;

output [8 -1:0] sc2mac_dat_a_src_data14;
output [8 -1:0] sc2mac_dat_b_dst_data14;
output [8 -1:0] sc2mac_wt_a_src_data14;
output [8 -1:0] sc2mac_wt_b_dst_data14;

output [8 -1:0] sc2mac_dat_a_src_data15;
output [8 -1:0] sc2mac_dat_b_dst_data15;
output [8 -1:0] sc2mac_wt_a_src_data15;
output [8 -1:0] sc2mac_wt_b_dst_data15;

output [8 -1:0] sc2mac_dat_a_src_data16;
output [8 -1:0] sc2mac_dat_b_dst_data16;
output [8 -1:0] sc2mac_wt_a_src_data16;
output [8 -1:0] sc2mac_wt_b_dst_data16;

output [8 -1:0] sc2mac_dat_a_src_data17;
output [8 -1:0] sc2mac_dat_b_dst_data17;
output [8 -1:0] sc2mac_wt_a_src_data17;
output [8 -1:0] sc2mac_wt_b_dst_data17;

output [8 -1:0] sc2mac_dat_a_src_data18;
output [8 -1:0] sc2mac_dat_b_dst_data18;
output [8 -1:0] sc2mac_wt_a_src_data18;
output [8 -1:0] sc2mac_wt_b_dst_data18;

output [8 -1:0] sc2mac_dat_a_src_data19;
output [8 -1:0] sc2mac_dat_b_dst_data19;
output [8 -1:0] sc2mac_wt_a_src_data19;
output [8 -1:0] sc2mac_wt_b_dst_data19;

output [8 -1:0] sc2mac_dat_a_src_data20;
output [8 -1:0] sc2mac_dat_b_dst_data20;
output [8 -1:0] sc2mac_wt_a_src_data20;
output [8 -1:0] sc2mac_wt_b_dst_data20;

output [8 -1:0] sc2mac_dat_a_src_data21;
output [8 -1:0] sc2mac_dat_b_dst_data21;
output [8 -1:0] sc2mac_wt_a_src_data21;
output [8 -1:0] sc2mac_wt_b_dst_data21;

output [8 -1:0] sc2mac_dat_a_src_data22;
output [8 -1:0] sc2mac_dat_b_dst_data22;
output [8 -1:0] sc2mac_wt_a_src_data22;
output [8 -1:0] sc2mac_wt_b_dst_data22;

output [8 -1:0] sc2mac_dat_a_src_data23;
output [8 -1:0] sc2mac_dat_b_dst_data23;
output [8 -1:0] sc2mac_wt_a_src_data23;
output [8 -1:0] sc2mac_wt_b_dst_data23;

output [8 -1:0] sc2mac_dat_a_src_data24;
output [8 -1:0] sc2mac_dat_b_dst_data24;
output [8 -1:0] sc2mac_wt_a_src_data24;
output [8 -1:0] sc2mac_wt_b_dst_data24;

output [8 -1:0] sc2mac_dat_a_src_data25;
output [8 -1:0] sc2mac_dat_b_dst_data25;
output [8 -1:0] sc2mac_wt_a_src_data25;
output [8 -1:0] sc2mac_wt_b_dst_data25;

output [8 -1:0] sc2mac_dat_a_src_data26;
output [8 -1:0] sc2mac_dat_b_dst_data26;
output [8 -1:0] sc2mac_wt_a_src_data26;
output [8 -1:0] sc2mac_wt_b_dst_data26;

output [8 -1:0] sc2mac_dat_a_src_data27;
output [8 -1:0] sc2mac_dat_b_dst_data27;
output [8 -1:0] sc2mac_wt_a_src_data27;
output [8 -1:0] sc2mac_wt_b_dst_data27;

output [8 -1:0] sc2mac_dat_a_src_data28;
output [8 -1:0] sc2mac_dat_b_dst_data28;
output [8 -1:0] sc2mac_wt_a_src_data28;
output [8 -1:0] sc2mac_wt_b_dst_data28;

output [8 -1:0] sc2mac_dat_a_src_data29;
output [8 -1:0] sc2mac_dat_b_dst_data29;
output [8 -1:0] sc2mac_wt_a_src_data29;
output [8 -1:0] sc2mac_wt_b_dst_data29;

output [8 -1:0] sc2mac_dat_a_src_data30;
output [8 -1:0] sc2mac_dat_b_dst_data30;
output [8 -1:0] sc2mac_wt_a_src_data30;
output [8 -1:0] sc2mac_wt_b_dst_data30;

output [8 -1:0] sc2mac_dat_a_src_data31;
output [8 -1:0] sc2mac_dat_b_dst_data31;
output [8 -1:0] sc2mac_wt_a_src_data31;
output [8 -1:0] sc2mac_wt_b_dst_data31;

output [8 -1:0] sc2mac_dat_a_src_data32;
output [8 -1:0] sc2mac_dat_b_dst_data32;
output [8 -1:0] sc2mac_wt_a_src_data32;
output [8 -1:0] sc2mac_wt_b_dst_data32;

output [8 -1:0] sc2mac_dat_a_src_data33;
output [8 -1:0] sc2mac_dat_b_dst_data33;
output [8 -1:0] sc2mac_wt_a_src_data33;
output [8 -1:0] sc2mac_wt_b_dst_data33;

output [8 -1:0] sc2mac_dat_a_src_data34;
output [8 -1:0] sc2mac_dat_b_dst_data34;
output [8 -1:0] sc2mac_wt_a_src_data34;
output [8 -1:0] sc2mac_wt_b_dst_data34;

output [8 -1:0] sc2mac_dat_a_src_data35;
output [8 -1:0] sc2mac_dat_b_dst_data35;
output [8 -1:0] sc2mac_wt_a_src_data35;
output [8 -1:0] sc2mac_wt_b_dst_data35;

output [8 -1:0] sc2mac_dat_a_src_data36;
output [8 -1:0] sc2mac_dat_b_dst_data36;
output [8 -1:0] sc2mac_wt_a_src_data36;
output [8 -1:0] sc2mac_wt_b_dst_data36;

output [8 -1:0] sc2mac_dat_a_src_data37;
output [8 -1:0] sc2mac_dat_b_dst_data37;
output [8 -1:0] sc2mac_wt_a_src_data37;
output [8 -1:0] sc2mac_wt_b_dst_data37;

output [8 -1:0] sc2mac_dat_a_src_data38;
output [8 -1:0] sc2mac_dat_b_dst_data38;
output [8 -1:0] sc2mac_wt_a_src_data38;
output [8 -1:0] sc2mac_wt_b_dst_data38;

output [8 -1:0] sc2mac_dat_a_src_data39;
output [8 -1:0] sc2mac_dat_b_dst_data39;
output [8 -1:0] sc2mac_wt_a_src_data39;
output [8 -1:0] sc2mac_wt_b_dst_data39;

output [8 -1:0] sc2mac_dat_a_src_data40;
output [8 -1:0] sc2mac_dat_b_dst_data40;
output [8 -1:0] sc2mac_wt_a_src_data40;
output [8 -1:0] sc2mac_wt_b_dst_data40;

output [8 -1:0] sc2mac_dat_a_src_data41;
output [8 -1:0] sc2mac_dat_b_dst_data41;
output [8 -1:0] sc2mac_wt_a_src_data41;
output [8 -1:0] sc2mac_wt_b_dst_data41;

output [8 -1:0] sc2mac_dat_a_src_data42;
output [8 -1:0] sc2mac_dat_b_dst_data42;
output [8 -1:0] sc2mac_wt_a_src_data42;
output [8 -1:0] sc2mac_wt_b_dst_data42;

output [8 -1:0] sc2mac_dat_a_src_data43;
output [8 -1:0] sc2mac_dat_b_dst_data43;
output [8 -1:0] sc2mac_wt_a_src_data43;
output [8 -1:0] sc2mac_wt_b_dst_data43;

output [8 -1:0] sc2mac_dat_a_src_data44;
output [8 -1:0] sc2mac_dat_b_dst_data44;
output [8 -1:0] sc2mac_wt_a_src_data44;
output [8 -1:0] sc2mac_wt_b_dst_data44;

output [8 -1:0] sc2mac_dat_a_src_data45;
output [8 -1:0] sc2mac_dat_b_dst_data45;
output [8 -1:0] sc2mac_wt_a_src_data45;
output [8 -1:0] sc2mac_wt_b_dst_data45;

output [8 -1:0] sc2mac_dat_a_src_data46;
output [8 -1:0] sc2mac_dat_b_dst_data46;
output [8 -1:0] sc2mac_wt_a_src_data46;
output [8 -1:0] sc2mac_wt_b_dst_data46;

output [8 -1:0] sc2mac_dat_a_src_data47;
output [8 -1:0] sc2mac_dat_b_dst_data47;
output [8 -1:0] sc2mac_wt_a_src_data47;
output [8 -1:0] sc2mac_wt_b_dst_data47;

output [8 -1:0] sc2mac_dat_a_src_data48;
output [8 -1:0] sc2mac_dat_b_dst_data48;
output [8 -1:0] sc2mac_wt_a_src_data48;
output [8 -1:0] sc2mac_wt_b_dst_data48;

output [8 -1:0] sc2mac_dat_a_src_data49;
output [8 -1:0] sc2mac_dat_b_dst_data49;
output [8 -1:0] sc2mac_wt_a_src_data49;
output [8 -1:0] sc2mac_wt_b_dst_data49;

output [8 -1:0] sc2mac_dat_a_src_data50;
output [8 -1:0] sc2mac_dat_b_dst_data50;
output [8 -1:0] sc2mac_wt_a_src_data50;
output [8 -1:0] sc2mac_wt_b_dst_data50;

output [8 -1:0] sc2mac_dat_a_src_data51;
output [8 -1:0] sc2mac_dat_b_dst_data51;
output [8 -1:0] sc2mac_wt_a_src_data51;
output [8 -1:0] sc2mac_wt_b_dst_data51;

output [8 -1:0] sc2mac_dat_a_src_data52;
output [8 -1:0] sc2mac_dat_b_dst_data52;
output [8 -1:0] sc2mac_wt_a_src_data52;
output [8 -1:0] sc2mac_wt_b_dst_data52;

output [8 -1:0] sc2mac_dat_a_src_data53;
output [8 -1:0] sc2mac_dat_b_dst_data53;
output [8 -1:0] sc2mac_wt_a_src_data53;
output [8 -1:0] sc2mac_wt_b_dst_data53;

output [8 -1:0] sc2mac_dat_a_src_data54;
output [8 -1:0] sc2mac_dat_b_dst_data54;
output [8 -1:0] sc2mac_wt_a_src_data54;
output [8 -1:0] sc2mac_wt_b_dst_data54;

output [8 -1:0] sc2mac_dat_a_src_data55;
output [8 -1:0] sc2mac_dat_b_dst_data55;
output [8 -1:0] sc2mac_wt_a_src_data55;
output [8 -1:0] sc2mac_wt_b_dst_data55;

output [8 -1:0] sc2mac_dat_a_src_data56;
output [8 -1:0] sc2mac_dat_b_dst_data56;
output [8 -1:0] sc2mac_wt_a_src_data56;
output [8 -1:0] sc2mac_wt_b_dst_data56;

output [8 -1:0] sc2mac_dat_a_src_data57;
output [8 -1:0] sc2mac_dat_b_dst_data57;
output [8 -1:0] sc2mac_wt_a_src_data57;
output [8 -1:0] sc2mac_wt_b_dst_data57;

output [8 -1:0] sc2mac_dat_a_src_data58;
output [8 -1:0] sc2mac_dat_b_dst_data58;
output [8 -1:0] sc2mac_wt_a_src_data58;
output [8 -1:0] sc2mac_wt_b_dst_data58;

output [8 -1:0] sc2mac_dat_a_src_data59;
output [8 -1:0] sc2mac_dat_b_dst_data59;
output [8 -1:0] sc2mac_wt_a_src_data59;
output [8 -1:0] sc2mac_wt_b_dst_data59;

output [8 -1:0] sc2mac_dat_a_src_data60;
output [8 -1:0] sc2mac_dat_b_dst_data60;
output [8 -1:0] sc2mac_wt_a_src_data60;
output [8 -1:0] sc2mac_wt_b_dst_data60;

output [8 -1:0] sc2mac_dat_a_src_data61;
output [8 -1:0] sc2mac_dat_b_dst_data61;
output [8 -1:0] sc2mac_wt_a_src_data61;
output [8 -1:0] sc2mac_wt_b_dst_data61;

output [8 -1:0] sc2mac_dat_a_src_data62;
output [8 -1:0] sc2mac_dat_b_dst_data62;
output [8 -1:0] sc2mac_wt_a_src_data62;
output [8 -1:0] sc2mac_wt_b_dst_data62;

output [8 -1:0] sc2mac_dat_a_src_data63;
output [8 -1:0] sc2mac_dat_b_dst_data63;
output [8 -1:0] sc2mac_wt_a_src_data63;
output [8 -1:0] sc2mac_wt_b_dst_data63;

//| eperl: generated_end (DO NOT EDIT ABOVE)
output sc2mac_dat_a_src_pvld; /* data valid */
output [64 -1:0] sc2mac_dat_a_src_mask;
output [8:0] sc2mac_dat_a_src_pd;
output sc2mac_dat_b_dst_pvld; /* data valid */
output [64 -1:0] sc2mac_dat_b_dst_mask;
output [8:0] sc2mac_dat_b_dst_pd;
output sc2mac_wt_a_src_pvld; /* data valid */
output [64 -1:0] sc2mac_wt_a_src_mask;
output [32/2-1:0] sc2mac_wt_a_src_sel;
output sc2mac_wt_b_dst_pvld; /* data valid */
output [64 -1:0] sc2mac_wt_b_dst_mask;
output [32/2-1:0] sc2mac_wt_b_dst_sel;
input nvdla_core_clk;
input dla_reset_rstn;
input nvdla_clk_ovr_on;
//////////////////////////////////////////////////////
wire cdma2buf_dat_wr_en;
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int($atmc/$dmaif);
//: print qq(
//: wire [${k}-1:0] cdma2buf_dat_wr_sel;
//: wire [16:0] cdma2buf_dat_wr_addr;
//: wire [${dmaif}-1:0] cdma2buf_dat_wr_data;
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: wire [${k}-1:0] cdma2buf_dat_wr_mask;
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: wire [16:0] cdma2buf_dat_wr_addr${i};
//: wire [${dmaif}-1:0] cdma2buf_dat_wr_data${i};
//: );
//: }
//: } else {
//: print qq(
//: wire [16:0] cdma2buf_dat_wr_addr;
//: wire [${dmaif}-1:0] cdma2buf_dat_wr_data;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [16:0] cdma2buf_dat_wr_addr;
wire [512-1:0] cdma2buf_dat_wr_data;

//| eperl: generated_end (DO NOT EDIT ABOVE)
//wire [11:0] cdma2buf_dat_wr_addr;
//wire [1023:0] cdma2buf_dat_wr_data;
//wire [1:0] cdma2buf_dat_wr_hsel;
wire cdma2buf_wt_wr_en;
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int($atmc/$dmaif);
//: print qq(
//: wire [${k}-1:0] cdma2buf_wt_wr_sel ;
//: wire [16:0] cdma2buf_wt_wr_addr;
//: wire [${dmaif}-1:0] cdma2buf_wt_wr_data;
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: wire [${k}-1:0] cdma2buf_wt_wr_mask;
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: wire [16:0] cdma2buf_wt_wr_addr${i};
//: wire [${dmaif}-1:0] cdma2buf_wt_wr_data${i};
//: );
//: }
//: } else {
//: print qq(
//: wire [16:0] cdma2buf_wt_wr_addr;
//: wire [${dmaif}-1:0] cdma2buf_wt_wr_data;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [16:0] cdma2buf_wt_wr_addr;
wire [512-1:0] cdma2buf_wt_wr_data;

//| eperl: generated_end (DO NOT EDIT ABOVE)
//wire [11:0] cdma2buf_wt_wr_addr;
//wire [511:0] cdma2buf_wt_wr_data;
//wire cdma2buf_wt_wr_hsel;
wire [15 -1:0] cdma2sc_dat_entries;
wire cdma2sc_dat_pending_ack;
wire [13:0] cdma2sc_dat_slices;
wire cdma2sc_dat_updt;
wire [8:0] cdma2sc_wmb_entries;
wire [15 -1:0] cdma2sc_wt_entries;
wire [13:0] cdma2sc_wt_kernels;
wire cdma2sc_wt_pending_ack;
wire cdma2sc_wt_updt;
wire cdma_dla_clk_ovr_on_sync;
wire cdma_global_clk_ovr_on_sync;
wire csc_dla_clk_ovr_on_sync;
wire csc_global_clk_ovr_on_sync;
wire nvdla_core_rstn;
wire [13 -1:0] sc2buf_dat_rd_addr;
wire [512 -1:0] sc2buf_dat_rd_data;
wire sc2buf_dat_rd_en;
wire sc2buf_dat_rd_valid;
wire [10 -1:0] sc2buf_dat_rd_shift;
wire sc2buf_dat_rd_next1_en;
wire [13 -1:0] sc2buf_dat_rd_next1_addr;
`ifdef CBUF_WEIGHT_COMPRESSED
wire [13 -1:0] sc2buf_wmb_rd_addr;
wire [512 -1:0] sc2buf_wmb_rd_data;
wire sc2buf_wmb_rd_en;
wire sc2buf_wmb_rd_valid;
`endif
wire [13 -1:0] sc2buf_wt_rd_addr;
wire [512 -1:0] sc2buf_wt_rd_data;
wire sc2buf_wt_rd_en;
wire sc2buf_wt_rd_valid;
wire [15 -1:0] sc2cdma_dat_entries;
wire sc2cdma_dat_pending_req;
wire [13:0] sc2cdma_dat_slices;
wire sc2cdma_dat_updt;
wire [8:0] sc2cdma_wmb_entries;
wire [15 -1:0] sc2cdma_wt_entries;
wire [13:0] sc2cdma_wt_kernels;
wire sc2cdma_wt_pending_req;
wire sc2cdma_wt_updt;
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: wire [8 -1:0] sc2mac_dat_b_src_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [8 -1:0] sc2mac_dat_b_src_data0; 
wire [8 -1:0] sc2mac_dat_b_src_data1; 
wire [8 -1:0] sc2mac_dat_b_src_data2; 
wire [8 -1:0] sc2mac_dat_b_src_data3; 
wire [8 -1:0] sc2mac_dat_b_src_data4; 
wire [8 -1:0] sc2mac_dat_b_src_data5; 
wire [8 -1:0] sc2mac_dat_b_src_data6; 
wire [8 -1:0] sc2mac_dat_b_src_data7; 
wire [8 -1:0] sc2mac_dat_b_src_data8; 
wire [8 -1:0] sc2mac_dat_b_src_data9; 
wire [8 -1:0] sc2mac_dat_b_src_data10; 
wire [8 -1:0] sc2mac_dat_b_src_data11; 
wire [8 -1:0] sc2mac_dat_b_src_data12; 
wire [8 -1:0] sc2mac_dat_b_src_data13; 
wire [8 -1:0] sc2mac_dat_b_src_data14; 
wire [8 -1:0] sc2mac_dat_b_src_data15; 
wire [8 -1:0] sc2mac_dat_b_src_data16; 
wire [8 -1:0] sc2mac_dat_b_src_data17; 
wire [8 -1:0] sc2mac_dat_b_src_data18; 
wire [8 -1:0] sc2mac_dat_b_src_data19; 
wire [8 -1:0] sc2mac_dat_b_src_data20; 
wire [8 -1:0] sc2mac_dat_b_src_data21; 
wire [8 -1:0] sc2mac_dat_b_src_data22; 
wire [8 -1:0] sc2mac_dat_b_src_data23; 
wire [8 -1:0] sc2mac_dat_b_src_data24; 
wire [8 -1:0] sc2mac_dat_b_src_data25; 
wire [8 -1:0] sc2mac_dat_b_src_data26; 
wire [8 -1:0] sc2mac_dat_b_src_data27; 
wire [8 -1:0] sc2mac_dat_b_src_data28; 
wire [8 -1:0] sc2mac_dat_b_src_data29; 
wire [8 -1:0] sc2mac_dat_b_src_data30; 
wire [8 -1:0] sc2mac_dat_b_src_data31; 
wire [8 -1:0] sc2mac_dat_b_src_data32; 
wire [8 -1:0] sc2mac_dat_b_src_data33; 
wire [8 -1:0] sc2mac_dat_b_src_data34; 
wire [8 -1:0] sc2mac_dat_b_src_data35; 
wire [8 -1:0] sc2mac_dat_b_src_data36; 
wire [8 -1:0] sc2mac_dat_b_src_data37; 
wire [8 -1:0] sc2mac_dat_b_src_data38; 
wire [8 -1:0] sc2mac_dat_b_src_data39; 
wire [8 -1:0] sc2mac_dat_b_src_data40; 
wire [8 -1:0] sc2mac_dat_b_src_data41; 
wire [8 -1:0] sc2mac_dat_b_src_data42; 
wire [8 -1:0] sc2mac_dat_b_src_data43; 
wire [8 -1:0] sc2mac_dat_b_src_data44; 
wire [8 -1:0] sc2mac_dat_b_src_data45; 
wire [8 -1:0] sc2mac_dat_b_src_data46; 
wire [8 -1:0] sc2mac_dat_b_src_data47; 
wire [8 -1:0] sc2mac_dat_b_src_data48; 
wire [8 -1:0] sc2mac_dat_b_src_data49; 
wire [8 -1:0] sc2mac_dat_b_src_data50; 
wire [8 -1:0] sc2mac_dat_b_src_data51; 
wire [8 -1:0] sc2mac_dat_b_src_data52; 
wire [8 -1:0] sc2mac_dat_b_src_data53; 
wire [8 -1:0] sc2mac_dat_b_src_data54; 
wire [8 -1:0] sc2mac_dat_b_src_data55; 
wire [8 -1:0] sc2mac_dat_b_src_data56; 
wire [8 -1:0] sc2mac_dat_b_src_data57; 
wire [8 -1:0] sc2mac_dat_b_src_data58; 
wire [8 -1:0] sc2mac_dat_b_src_data59; 
wire [8 -1:0] sc2mac_dat_b_src_data60; 
wire [8 -1:0] sc2mac_dat_b_src_data61; 
wire [8 -1:0] sc2mac_dat_b_src_data62; 
wire [8 -1:0] sc2mac_dat_b_src_data63; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [64 -1:0] sc2mac_dat_b_src_mask;
wire [8:0] sc2mac_dat_b_src_pd;
wire sc2mac_dat_b_src_pvld;
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: wire [8 -1:0] sc2mac_wt_b_src_data${i}; )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [8 -1:0] sc2mac_wt_b_src_data0; 
wire [8 -1:0] sc2mac_wt_b_src_data1; 
wire [8 -1:0] sc2mac_wt_b_src_data2; 
wire [8 -1:0] sc2mac_wt_b_src_data3; 
wire [8 -1:0] sc2mac_wt_b_src_data4; 
wire [8 -1:0] sc2mac_wt_b_src_data5; 
wire [8 -1:0] sc2mac_wt_b_src_data6; 
wire [8 -1:0] sc2mac_wt_b_src_data7; 
wire [8 -1:0] sc2mac_wt_b_src_data8; 
wire [8 -1:0] sc2mac_wt_b_src_data9; 
wire [8 -1:0] sc2mac_wt_b_src_data10; 
wire [8 -1:0] sc2mac_wt_b_src_data11; 
wire [8 -1:0] sc2mac_wt_b_src_data12; 
wire [8 -1:0] sc2mac_wt_b_src_data13; 
wire [8 -1:0] sc2mac_wt_b_src_data14; 
wire [8 -1:0] sc2mac_wt_b_src_data15; 
wire [8 -1:0] sc2mac_wt_b_src_data16; 
wire [8 -1:0] sc2mac_wt_b_src_data17; 
wire [8 -1:0] sc2mac_wt_b_src_data18; 
wire [8 -1:0] sc2mac_wt_b_src_data19; 
wire [8 -1:0] sc2mac_wt_b_src_data20; 
wire [8 -1:0] sc2mac_wt_b_src_data21; 
wire [8 -1:0] sc2mac_wt_b_src_data22; 
wire [8 -1:0] sc2mac_wt_b_src_data23; 
wire [8 -1:0] sc2mac_wt_b_src_data24; 
wire [8 -1:0] sc2mac_wt_b_src_data25; 
wire [8 -1:0] sc2mac_wt_b_src_data26; 
wire [8 -1:0] sc2mac_wt_b_src_data27; 
wire [8 -1:0] sc2mac_wt_b_src_data28; 
wire [8 -1:0] sc2mac_wt_b_src_data29; 
wire [8 -1:0] sc2mac_wt_b_src_data30; 
wire [8 -1:0] sc2mac_wt_b_src_data31; 
wire [8 -1:0] sc2mac_wt_b_src_data32; 
wire [8 -1:0] sc2mac_wt_b_src_data33; 
wire [8 -1:0] sc2mac_wt_b_src_data34; 
wire [8 -1:0] sc2mac_wt_b_src_data35; 
wire [8 -1:0] sc2mac_wt_b_src_data36; 
wire [8 -1:0] sc2mac_wt_b_src_data37; 
wire [8 -1:0] sc2mac_wt_b_src_data38; 
wire [8 -1:0] sc2mac_wt_b_src_data39; 
wire [8 -1:0] sc2mac_wt_b_src_data40; 
wire [8 -1:0] sc2mac_wt_b_src_data41; 
wire [8 -1:0] sc2mac_wt_b_src_data42; 
wire [8 -1:0] sc2mac_wt_b_src_data43; 
wire [8 -1:0] sc2mac_wt_b_src_data44; 
wire [8 -1:0] sc2mac_wt_b_src_data45; 
wire [8 -1:0] sc2mac_wt_b_src_data46; 
wire [8 -1:0] sc2mac_wt_b_src_data47; 
wire [8 -1:0] sc2mac_wt_b_src_data48; 
wire [8 -1:0] sc2mac_wt_b_src_data49; 
wire [8 -1:0] sc2mac_wt_b_src_data50; 
wire [8 -1:0] sc2mac_wt_b_src_data51; 
wire [8 -1:0] sc2mac_wt_b_src_data52; 
wire [8 -1:0] sc2mac_wt_b_src_data53; 
wire [8 -1:0] sc2mac_wt_b_src_data54; 
wire [8 -1:0] sc2mac_wt_b_src_data55; 
wire [8 -1:0] sc2mac_wt_b_src_data56; 
wire [8 -1:0] sc2mac_wt_b_src_data57; 
wire [8 -1:0] sc2mac_wt_b_src_data58; 
wire [8 -1:0] sc2mac_wt_b_src_data59; 
wire [8 -1:0] sc2mac_wt_b_src_data60; 
wire [8 -1:0] sc2mac_wt_b_src_data61; 
wire [8 -1:0] sc2mac_wt_b_src_data62; 
wire [8 -1:0] sc2mac_wt_b_src_data63; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [64 -1:0] sc2mac_wt_b_src_mask;
wire sc2mac_wt_b_src_pvld;
wire [32/2-1:0] sc2mac_wt_b_src_sel;
////////////////////////////////////////////////////////////////////////
// NVDLA Partition C: Reset Sync //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_reset u_partition_c_reset (
   .dla_reset_rstn (dla_reset_rstn) //|< i
  ,.direct_reset_ (direct_reset_) //|< i
  ,.test_mode (test_mode) //|< i
  ,.synced_rstn (nvdla_core_rstn) //|> w
  ,.nvdla_clk (nvdla_core_clk) //|< i
  );
////////////////////////////////////////////////////////////////////////
// SLCG override
////////////////////////////////////////////////////////////////////////
NV_NVDLA_sync3d u_csc_dla_clk_ovr_on_sync (
   .clk (nvdla_core_clk)
  ,.sync_i (nvdla_clk_ovr_on)
  ,.sync_o (csc_dla_clk_ovr_on_sync)
  );
NV_NVDLA_sync3d u_cdma_dla_clk_ovr_on_sync (
   .clk (nvdla_core_clk)
  ,.sync_i (nvdla_clk_ovr_on)
  ,.sync_o (cdma_dla_clk_ovr_on_sync)
  );
//&Instance NV_NVDLA_sync3d u_dla_clk_ovr_on_sync;
//&Connect clk nvdla_core_clk;
//&Connect sync_i nvdla_clk_ovr_on;
//&Connect sync_o dla_clk_ovr_on_sync;
NV_NVDLA_sync3d_s u_global_csc_clk_ovr_on_sync (
   .clk (nvdla_core_clk)
  ,.prst (nvdla_core_rstn)
  ,.sync_i (global_clk_ovr_on)
  ,.sync_o (csc_global_clk_ovr_on_sync)
  );
NV_NVDLA_sync3d_s u_global_cdma_clk_ovr_on_sync (
   .clk (nvdla_core_clk)
  ,.prst (nvdla_core_rstn)
  ,.sync_i (global_clk_ovr_on)
  ,.sync_o (cdma_global_clk_ovr_on_sync)
  );
//&Instance NV_NVDLA_sync3d_s u_global_clk_ovr_on_sync;
//&Connect clk nvdla_core_clk;
//&Connect prst nvdla_core_rstn;
//&Connect sync_i global_clk_ovr_on;
//&Connect sync_o global_clk_ovr_on_sync;
////////////////////////////////////////////////////////////////////////
// NVDLA Partition C: Convolution DMA //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_cdma u_NV_NVDLA_cdma (
   .nvdla_core_clk (nvdla_core_clk)
  ,.nvdla_core_rstn (nvdla_core_rstn)
  ,.cdma2csb_resp_valid (cdma2csb_resp_valid)
  ,.cdma2csb_resp_pd (cdma2csb_resp_pd)
  ,.cdma2sc_dat_pending_ack (cdma2sc_dat_pending_ack)
  ,.cdma2sc_wt_pending_ack (cdma2sc_wt_pending_ack)
  ,.cdma_dat2mcif_rd_req_valid (cdma_dat2mcif_rd_req_valid)
  ,.cdma_dat2mcif_rd_req_ready (cdma_dat2mcif_rd_req_ready)
  ,.cdma_dat2mcif_rd_req_pd (cdma_dat2mcif_rd_req_pd)
  ,.cdma_wt2mcif_rd_req_valid (cdma_wt2mcif_rd_req_valid)
  ,.cdma_wt2mcif_rd_req_ready (cdma_wt2mcif_rd_req_ready)
  ,.cdma_wt2mcif_rd_req_pd (cdma_wt2mcif_rd_req_pd)
  ,.mcif2cdma_dat_rd_rsp_valid (mcif2cdma_dat_rd_rsp_valid)
  ,.mcif2cdma_dat_rd_rsp_ready (mcif2cdma_dat_rd_rsp_ready)
  ,.mcif2cdma_dat_rd_rsp_pd (mcif2cdma_dat_rd_rsp_pd )
  ,.mcif2cdma_wt_rd_rsp_valid (mcif2cdma_wt_rd_rsp_valid)
  ,.mcif2cdma_wt_rd_rsp_ready (mcif2cdma_wt_rd_rsp_ready)
  ,.mcif2cdma_wt_rd_rsp_pd (mcif2cdma_wt_rd_rsp_pd)
  ,.cdma_dat2cvif_rd_req_valid (cdma_dat2cvif_rd_req_valid)
  ,.cdma_dat2cvif_rd_req_ready (cdma_dat2cvif_rd_req_ready)
  ,.cdma_dat2cvif_rd_req_pd (cdma_dat2cvif_rd_req_pd)
  ,.cdma_wt2cvif_rd_req_valid (cdma_wt2cvif_rd_req_valid)
  ,.cdma_wt2cvif_rd_req_ready (cdma_wt2cvif_rd_req_ready)
  ,.cdma_wt2cvif_rd_req_pd (cdma_wt2cvif_rd_req_pd)
  ,.cvif2cdma_dat_rd_rsp_valid (cvif2cdma_dat_rd_rsp_valid)
  ,.cvif2cdma_dat_rd_rsp_ready (cvif2cdma_dat_rd_rsp_ready)
  ,.cvif2cdma_dat_rd_rsp_pd (cvif2cdma_dat_rd_rsp_pd)
  ,.cvif2cdma_wt_rd_rsp_valid (cvif2cdma_wt_rd_rsp_valid)
  ,.cvif2cdma_wt_rd_rsp_ready (cvif2cdma_wt_rd_rsp_ready)
  ,.cvif2cdma_wt_rd_rsp_pd (cvif2cdma_wt_rd_rsp_pd )
  ,.cdma_dat2glb_done_intr_pd (cdma_dat2glb_done_intr_pd)
  ,.cdma_wt2glb_done_intr_pd (cdma_wt2glb_done_intr_pd)
  ,.csb2cdma_req_pvld (csb2cdma_req_pvld)
  ,.csb2cdma_req_prdy (csb2cdma_req_prdy)
  ,.csb2cdma_req_pd (csb2cdma_req_pd)
  ,.cdma2buf_dat_wr_en (cdma2buf_dat_wr_en)
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: ,.cdma2buf_dat_wr_addr (cdma2buf_dat_wr_addr)
//: ,.cdma2buf_dat_wr_sel (cdma2buf_dat_wr_sel)
//: ,.cdma2buf_dat_wr_data (cdma2buf_dat_wr_data)
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: ,. cdma2buf_dat_wr_mask (cdma2buf_dat_wr_mask )
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: ,.cdma2buf_dat_wr_addr${i} (cdma2buf_dat_wr_addr${i} )
//: ,.cdma2buf_dat_wr_data${i} (cdma2buf_dat_wr_data${i} )
//: );
//: }
//: } else {
//: print qq(
//: ,.cdma2buf_dat_wr_addr (cdma2buf_dat_wr_addr)
//: ,.cdma2buf_dat_wr_data (cdma2buf_dat_wr_data)
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.cdma2buf_dat_wr_addr (cdma2buf_dat_wr_addr)
,.cdma2buf_dat_wr_data (cdma2buf_dat_wr_data)

//| eperl: generated_end (DO NOT EDIT ABOVE)
//,.cdma2buf_dat_wr_addr (cdma2buf_dat_wr_addr)
//,.cdma2buf_dat_wr_hsel (cdma2buf_dat_wr_hsel)
//,.cdma2buf_dat_wr_data (cdma2buf_dat_wr_data)
  ,.cdma2buf_wt_wr_en (cdma2buf_wt_wr_en)
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: ,.cdma2buf_wt_wr_addr (cdma2buf_wt_wr_addr)
//: ,.cdma2buf_wt_wr_sel (cdma2buf_wt_wr_sel)
//: ,.cdma2buf_wt_wr_data (cdma2buf_wt_wr_data)
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: ,.cdma2buf_wt_wr_mask (cdma2buf_wt_wr_mask)
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: ,.cdma2buf_wt_wr_addr${i} (cdma2buf_wt_wr_addr${i})
//: ,.cdma2buf_wt_wr_data${i} (cdma2buf_wt_wr_data${i})
//: );
//: }
//: } else {
//: print qq(
//: ,.cdma2buf_wt_wr_addr (cdma2buf_wt_wr_addr)
//: ,.cdma2buf_wt_wr_data (cdma2buf_wt_wr_data)
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.cdma2buf_wt_wr_addr (cdma2buf_wt_wr_addr)
,.cdma2buf_wt_wr_data (cdma2buf_wt_wr_data)

//| eperl: generated_end (DO NOT EDIT ABOVE)
//,.cdma2buf_wt_wr_addr (cdma2buf_wt_wr_addr)
//,.cdma2buf_wt_wr_hsel (cdma2buf_wt_wr_hsel)
//,.cdma2buf_wt_wr_data (cdma2buf_wt_wr_data)
  ,.cdma2sc_dat_updt (cdma2sc_dat_updt)
  ,.cdma2sc_dat_entries (cdma2sc_dat_entries)
  ,.cdma2sc_dat_slices (cdma2sc_dat_slices)
  ,.sc2cdma_dat_updt (sc2cdma_dat_updt)
  ,.sc2cdma_dat_entries (sc2cdma_dat_entries)
  ,.sc2cdma_dat_slices (sc2cdma_dat_slices)
  ,.pwrbus_ram_pd (pwrbus_ram_pd)
  ,.sc2cdma_dat_pending_req (sc2cdma_dat_pending_req)
  ,.sc2cdma_wt_pending_req (sc2cdma_wt_pending_req)
  ,.cdma2sc_wt_updt (cdma2sc_wt_updt)
  ,.cdma2sc_wt_kernels (cdma2sc_wt_kernels)
  ,.cdma2sc_wt_entries (cdma2sc_wt_entries)
  ,.cdma2sc_wmb_entries (cdma2sc_wmb_entries)
  ,.sc2cdma_wt_updt (sc2cdma_wt_updt)
  ,.sc2cdma_wt_kernels (sc2cdma_wt_kernels)
  ,.sc2cdma_wt_entries (sc2cdma_wt_entries)
  ,.sc2cdma_wmb_entries (sc2cdma_wmb_entries)
  ,.dla_clk_ovr_on_sync (cdma_dla_clk_ovr_on_sync)
  ,.global_clk_ovr_on_sync (cdma_global_clk_ovr_on_sync)
  ,.tmc2slcg_disable_clock_gating (tmc2slcg_disable_clock_gating)
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition C: Convolution Buffer //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_cbuf u_NV_NVDLA_cbuf (
// .nvdla_core_clk (nvdla_core_clk)
// ,.nvdla_core_rstn (nvdla_core_rstn)
// ,.pwrbus_ram_pd (pwrbus_ram_pd)
// ,.cdma2buf_dat_wr_en (cdma2buf_dat_wr_en)
// //: my $dmaif=NVDLA_DMAIF_BW;
// //: my $atmc=NVDLA_MAC_ATOMIC_C_SIZE*NVDLA_BPE;
// //: if($dmaif < $atmc) {
// //:     my $k = int(log(int($atmc/$dmaif))/log(2));
// //:     print qq(
// //:       ,.cdma2buf_dat_wr_addr          (cdma2buf_dat_wr_addr)
// //:       ,.cdma2buf_dat_wr_hsel          (cdma2buf_dat_wr_sel) 
// //:       ,.cdma2buf_dat_wr_data          (cdma2buf_dat_wr_data)
// //:     );
// //: } elsif($dmaif > $atmc) {
// //:     my $k = int(log(int($dmaif/$atmc))/log(2));
// //:     print qq(
// //:          ,. cdma2buf_dat_wr_mask      (cdma2buf_dat_wr_mask   )
// //:     );
// //:     foreach my $i (0..$k-1) {
// //:         print qq(
// //:             ,.cdma2buf_dat_wr_addr${i}      (cdma2buf_dat_wr_addr${i}   )
// //:             ,.cdma2buf_dat_wr_data${i}      (cdma2buf_dat_wr_data${i}   )
// //:         );
// //:     }
// //: } else {
// //:     print qq(
// //:       ,.cdma2buf_dat_wr_addr          (cdma2buf_dat_wr_addr)
// //:       ,.cdma2buf_dat_wr_data          (cdma2buf_dat_wr_data)
// //:     );
// //: }
// //,.cdma2buf_dat_wr_addr          (cdma2buf_dat_wr_addr)
// //,.cdma2buf_dat_wr_hsel          (cdma2buf_dat_wr_hsel)
// //,.cdma2buf_dat_wr_data          (cdma2buf_dat_wr_data)
// ,.cdma2buf_wt_wr_en (cdma2buf_wt_wr_en)
// //: my $dmaif=NVDLA_DMAIF_BW;
// //: my $atmc=NVDLA_MAC_ATOMIC_C_SIZE*NVDLA_BPE;
// //: if($dmaif < $atmc) {
// //:     my $k = int(log(int($atmc/$dmaif))/log(2));
// //:     print qq(
// //:         ,.cdma2buf_wt_wr_addr           (cdma2buf_wt_wr_addr) 
// //:         ,.cdma2buf_wt_wr_hsel            (cdma2buf_wt_wr_sel)        
// //:         ,.cdma2buf_wt_wr_data           (cdma2buf_wt_wr_data)
// //:     );
// //: } elsif($dmaif > $atmc) {
// //:     my $k = int(log(int($dmaif/$atmc))/log(2));
// //:     print qq(
// //:         ,.cdma2buf_wt_wr_mask    (cdma2buf_wt_wr_mask)
// //:     );
// //:     foreach my $i (0..$k-1) {
// //:         print qq(
// //:            ,.cdma2buf_wt_wr_addr${i}    (cdma2buf_wt_wr_addr${i})
// //:            ,.cdma2buf_wt_wr_data${i}    (cdma2buf_wt_wr_data${i})
// //:         );
// //:     }
// //: } else {
// //:     print qq(
// //:         ,.cdma2buf_wt_wr_addr           (cdma2buf_wt_wr_addr) 
// //:         ,.cdma2buf_wt_wr_data           (cdma2buf_wt_wr_data)
// //:     );
// //: }
// //,.cdma2buf_wt_wr_addr           (cdma2buf_wt_wr_addr) 
// //,.cdma2buf_wt_wr_hsel           (cdma2buf_wt_wr_hsel)       
// //,.cdma2buf_wt_wr_data           (cdma2buf_wt_wr_data)
// ,.sc2buf_dat_rd_en (sc2buf_dat_rd_en)
// ,.sc2buf_dat_rd_addr (sc2buf_dat_rd_addr)
// ,.sc2buf_dat_rd_valid (sc2buf_dat_rd_valid)
// ,.sc2buf_dat_rd_data (sc2buf_dat_rd_data)
// ,.sc2buf_wt_rd_en (sc2buf_wt_rd_en)
// ,.sc2buf_wt_rd_addr (sc2buf_wt_rd_addr)
// ,.sc2buf_wt_rd_valid (sc2buf_wt_rd_valid)
// ,.sc2buf_wt_rd_data (sc2buf_wt_rd_data)
// ,.sc2buf_wmb_rd_en (sc2buf_wmb_rd_en)
// ,.sc2buf_wmb_rd_addr (sc2buf_wmb_rd_addr)
// ,.sc2buf_wmb_rd_valid (sc2buf_wmb_rd_valid)
// ,.sc2buf_wmb_rd_data (sc2buf_wmb_rd_data)
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  ,.cdma2buf_wr_en0 (cdma2buf_dat_wr_en) //|< w
  ,.cdma2buf_wr_addr0 (cdma2buf_dat_wr_addr[13 -1:0]) //|< w
  ,.cdma2buf_wr_data0 (cdma2buf_dat_wr_data)//DorisL cdma2buf_dat_wr_data_new)   //|< w
  ,.cdma2buf_wr_en1 (cdma2buf_wt_wr_en) //|< w
  ,.cdma2buf_wr_addr1 (cdma2buf_wt_wr_addr[13 -1:0]) //|< w
  ,.cdma2buf_wr_data1 (cdma2buf_wt_wr_data) //|< w
`ifdef CC_ATOMC_DIV_ATOMK_EQUAL_4
  ,.cdma2buf_wr_sel0 (cdma2buf_dat_wr_sel) //|< w
  ,.cdma2buf_wr_sel1 (cdma2buf_wt_wr_sel) //|< w
`endif
`ifdef CC_ATOMC_DIV_ATOMK_EQUAL_2
  ,.cdma2buf_wr_sel0 (cdma2buf_dat_wr_sel) //|< w
  ,.cdma2buf_wr_sel1 (cdma2buf_wt_wr_sel) //|< w
`endif
`ifdef CC_ATOMC_DIV_ATOMK_EQUAL_1
  ,.cdma2buf_wr_sel0 ({2{1'b1}}) //|< w
  ,.cdma2buf_wr_sel1 ({2{1'b1}}) //|< w
`endif
  ,.sc2buf_dat_rd_en (sc2buf_dat_rd_en) //|< w
  ,.sc2buf_dat_rd_addr (sc2buf_dat_rd_addr[13 -1:0]) //|< w
  ,.sc2buf_dat_rd_valid (sc2buf_dat_rd_valid) //|> w
  ,.sc2buf_dat_rd_shift (sc2buf_dat_rd_shift)
  ,.sc2buf_dat_rd_next1_en (sc2buf_dat_rd_next1_en)
  ,.sc2buf_dat_rd_next1_addr (sc2buf_dat_rd_next1_addr)
  ,.sc2buf_dat_rd_data (sc2buf_dat_rd_data[512 -1:0]) //|> w
  ,.sc2buf_wt_rd_en (sc2buf_wt_rd_en) //|< w
  ,.sc2buf_wt_rd_addr (sc2buf_wt_rd_addr[13 -1:0]) //|< w
  ,.sc2buf_wt_rd_valid (sc2buf_wt_rd_valid) //|> w
  ,.sc2buf_wt_rd_data (sc2buf_wt_rd_data[512 -1:0]) //|> w
  `ifdef CBUF_WEIGHT_COMPRESSED
  ,.sc2buf_wmb_rd_en (sc2buf_wmb_rd_en) //|< w
  ,.sc2buf_wmb_rd_addr (sc2buf_wmb_rd_addr[13 -1:0]) //|< w
  ,.sc2buf_wmb_rd_valid (sc2buf_wmb_rd_valid) //|> w
  ,.sc2buf_wmb_rd_data (sc2buf_wmb_rd_data[512 -1:0]) //|> w
  `endif
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition C: Convolution Sequence Controller //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_csc u_NV_NVDLA_csc (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< w
  ,.sc2cdma_dat_pending_req (sc2cdma_dat_pending_req) //|> w
  ,.sc2cdma_wt_pending_req (sc2cdma_wt_pending_req) //|> w
  ,.accu2sc_credit_vld (accu2sc_credit_vld) //|< i
  ,.accu2sc_credit_size (accu2sc_credit_size[2:0]) //|< i
  ,.cdma2sc_dat_pending_ack (cdma2sc_dat_pending_ack) //|< w
  ,.cdma2sc_wt_pending_ack (cdma2sc_wt_pending_ack) //|< w
  ,.csb2csc_req_pvld (csb2csc_req_pvld) //|< i
  ,.csb2csc_req_prdy (csb2csc_req_prdy) //|> o
  ,.csb2csc_req_pd (csb2csc_req_pd[62:0]) //|< i
  ,.csc2csb_resp_valid (csc2csb_resp_valid) //|> o
  ,.csc2csb_resp_pd (csc2csb_resp_pd[33:0]) //|> o
  ,.cdma2sc_dat_updt (cdma2sc_dat_updt) //|< w
  ,.cdma2sc_dat_entries (cdma2sc_dat_entries[15 -1:0]) //|< w
  ,.cdma2sc_dat_slices (cdma2sc_dat_slices[13:0]) //|< w
  ,.sc2cdma_dat_updt (sc2cdma_dat_updt) //|> w
  ,.sc2cdma_dat_entries (sc2cdma_dat_entries[15 -1:0]) //|> w
  ,.sc2cdma_dat_slices (sc2cdma_dat_slices[13:0]) //|> w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  ,.sc2buf_dat_rd_en (sc2buf_dat_rd_en) //|> w
  ,.sc2buf_dat_rd_addr (sc2buf_dat_rd_addr[13 -1:0]) //|> w
  ,.sc2buf_dat_rd_valid (sc2buf_dat_rd_valid) //|< w
  ,.sc2buf_dat_rd_data (sc2buf_dat_rd_data[512 -1:0]) //|< w
  ,.sc2buf_dat_rd_shift (sc2buf_dat_rd_shift[10 -1:0])
  ,.sc2buf_dat_rd_next1_en (sc2buf_dat_rd_next1_en)
  ,.sc2buf_dat_rd_next1_addr (sc2buf_dat_rd_next1_addr)
  `ifdef CBUF_WEIGHT_COMPRESSED
  ,.sc2buf_wmb_rd_en (sc2buf_wmb_rd_en) //|> w
  ,.sc2buf_wmb_rd_addr (sc2buf_wmb_rd_addr[13 -1:0]) //|> w
  ,.sc2buf_wmb_rd_valid (sc2buf_wmb_rd_valid) //|< w
  ,.sc2buf_wmb_rd_data (sc2buf_wmb_rd_data[512 -1:0]) //|< w
  `endif
  ,.sc2buf_wt_rd_en (sc2buf_wt_rd_en) //|> w
  ,.sc2buf_wt_rd_addr (sc2buf_wt_rd_addr[13 -1:0]) //|> w
  ,.sc2buf_wt_rd_valid (sc2buf_wt_rd_valid) //|< w
  ,.sc2buf_wt_rd_data (sc2buf_wt_rd_data[512 -1:0]) //|< w
  ,.sc2mac_dat_a_pvld (sc2mac_dat_a_src_pvld) //|> o
  ,.sc2mac_dat_a_mask (sc2mac_dat_a_src_mask[64 -1:0]) //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,.sc2mac_dat_a_data${i} (sc2mac_dat_a_src_data${i}[8 -1:0]) //|> o   )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_dat_a_data0 (sc2mac_dat_a_src_data0[8 -1:0]) //|> o   
,.sc2mac_dat_a_data1 (sc2mac_dat_a_src_data1[8 -1:0]) //|> o   
,.sc2mac_dat_a_data2 (sc2mac_dat_a_src_data2[8 -1:0]) //|> o   
,.sc2mac_dat_a_data3 (sc2mac_dat_a_src_data3[8 -1:0]) //|> o   
,.sc2mac_dat_a_data4 (sc2mac_dat_a_src_data4[8 -1:0]) //|> o   
,.sc2mac_dat_a_data5 (sc2mac_dat_a_src_data5[8 -1:0]) //|> o   
,.sc2mac_dat_a_data6 (sc2mac_dat_a_src_data6[8 -1:0]) //|> o   
,.sc2mac_dat_a_data7 (sc2mac_dat_a_src_data7[8 -1:0]) //|> o   
,.sc2mac_dat_a_data8 (sc2mac_dat_a_src_data8[8 -1:0]) //|> o   
,.sc2mac_dat_a_data9 (sc2mac_dat_a_src_data9[8 -1:0]) //|> o   
,.sc2mac_dat_a_data10 (sc2mac_dat_a_src_data10[8 -1:0]) //|> o   
,.sc2mac_dat_a_data11 (sc2mac_dat_a_src_data11[8 -1:0]) //|> o   
,.sc2mac_dat_a_data12 (sc2mac_dat_a_src_data12[8 -1:0]) //|> o   
,.sc2mac_dat_a_data13 (sc2mac_dat_a_src_data13[8 -1:0]) //|> o   
,.sc2mac_dat_a_data14 (sc2mac_dat_a_src_data14[8 -1:0]) //|> o   
,.sc2mac_dat_a_data15 (sc2mac_dat_a_src_data15[8 -1:0]) //|> o   
,.sc2mac_dat_a_data16 (sc2mac_dat_a_src_data16[8 -1:0]) //|> o   
,.sc2mac_dat_a_data17 (sc2mac_dat_a_src_data17[8 -1:0]) //|> o   
,.sc2mac_dat_a_data18 (sc2mac_dat_a_src_data18[8 -1:0]) //|> o   
,.sc2mac_dat_a_data19 (sc2mac_dat_a_src_data19[8 -1:0]) //|> o   
,.sc2mac_dat_a_data20 (sc2mac_dat_a_src_data20[8 -1:0]) //|> o   
,.sc2mac_dat_a_data21 (sc2mac_dat_a_src_data21[8 -1:0]) //|> o   
,.sc2mac_dat_a_data22 (sc2mac_dat_a_src_data22[8 -1:0]) //|> o   
,.sc2mac_dat_a_data23 (sc2mac_dat_a_src_data23[8 -1:0]) //|> o   
,.sc2mac_dat_a_data24 (sc2mac_dat_a_src_data24[8 -1:0]) //|> o   
,.sc2mac_dat_a_data25 (sc2mac_dat_a_src_data25[8 -1:0]) //|> o   
,.sc2mac_dat_a_data26 (sc2mac_dat_a_src_data26[8 -1:0]) //|> o   
,.sc2mac_dat_a_data27 (sc2mac_dat_a_src_data27[8 -1:0]) //|> o   
,.sc2mac_dat_a_data28 (sc2mac_dat_a_src_data28[8 -1:0]) //|> o   
,.sc2mac_dat_a_data29 (sc2mac_dat_a_src_data29[8 -1:0]) //|> o   
,.sc2mac_dat_a_data30 (sc2mac_dat_a_src_data30[8 -1:0]) //|> o   
,.sc2mac_dat_a_data31 (sc2mac_dat_a_src_data31[8 -1:0]) //|> o   
,.sc2mac_dat_a_data32 (sc2mac_dat_a_src_data32[8 -1:0]) //|> o   
,.sc2mac_dat_a_data33 (sc2mac_dat_a_src_data33[8 -1:0]) //|> o   
,.sc2mac_dat_a_data34 (sc2mac_dat_a_src_data34[8 -1:0]) //|> o   
,.sc2mac_dat_a_data35 (sc2mac_dat_a_src_data35[8 -1:0]) //|> o   
,.sc2mac_dat_a_data36 (sc2mac_dat_a_src_data36[8 -1:0]) //|> o   
,.sc2mac_dat_a_data37 (sc2mac_dat_a_src_data37[8 -1:0]) //|> o   
,.sc2mac_dat_a_data38 (sc2mac_dat_a_src_data38[8 -1:0]) //|> o   
,.sc2mac_dat_a_data39 (sc2mac_dat_a_src_data39[8 -1:0]) //|> o   
,.sc2mac_dat_a_data40 (sc2mac_dat_a_src_data40[8 -1:0]) //|> o   
,.sc2mac_dat_a_data41 (sc2mac_dat_a_src_data41[8 -1:0]) //|> o   
,.sc2mac_dat_a_data42 (sc2mac_dat_a_src_data42[8 -1:0]) //|> o   
,.sc2mac_dat_a_data43 (sc2mac_dat_a_src_data43[8 -1:0]) //|> o   
,.sc2mac_dat_a_data44 (sc2mac_dat_a_src_data44[8 -1:0]) //|> o   
,.sc2mac_dat_a_data45 (sc2mac_dat_a_src_data45[8 -1:0]) //|> o   
,.sc2mac_dat_a_data46 (sc2mac_dat_a_src_data46[8 -1:0]) //|> o   
,.sc2mac_dat_a_data47 (sc2mac_dat_a_src_data47[8 -1:0]) //|> o   
,.sc2mac_dat_a_data48 (sc2mac_dat_a_src_data48[8 -1:0]) //|> o   
,.sc2mac_dat_a_data49 (sc2mac_dat_a_src_data49[8 -1:0]) //|> o   
,.sc2mac_dat_a_data50 (sc2mac_dat_a_src_data50[8 -1:0]) //|> o   
,.sc2mac_dat_a_data51 (sc2mac_dat_a_src_data51[8 -1:0]) //|> o   
,.sc2mac_dat_a_data52 (sc2mac_dat_a_src_data52[8 -1:0]) //|> o   
,.sc2mac_dat_a_data53 (sc2mac_dat_a_src_data53[8 -1:0]) //|> o   
,.sc2mac_dat_a_data54 (sc2mac_dat_a_src_data54[8 -1:0]) //|> o   
,.sc2mac_dat_a_data55 (sc2mac_dat_a_src_data55[8 -1:0]) //|> o   
,.sc2mac_dat_a_data56 (sc2mac_dat_a_src_data56[8 -1:0]) //|> o   
,.sc2mac_dat_a_data57 (sc2mac_dat_a_src_data57[8 -1:0]) //|> o   
,.sc2mac_dat_a_data58 (sc2mac_dat_a_src_data58[8 -1:0]) //|> o   
,.sc2mac_dat_a_data59 (sc2mac_dat_a_src_data59[8 -1:0]) //|> o   
,.sc2mac_dat_a_data60 (sc2mac_dat_a_src_data60[8 -1:0]) //|> o   
,.sc2mac_dat_a_data61 (sc2mac_dat_a_src_data61[8 -1:0]) //|> o   
,.sc2mac_dat_a_data62 (sc2mac_dat_a_src_data62[8 -1:0]) //|> o   
,.sc2mac_dat_a_data63 (sc2mac_dat_a_src_data63[8 -1:0]) //|> o   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_dat_a_pd (sc2mac_dat_a_src_pd[8:0]) //|> o
  ,.sc2mac_dat_b_pvld (sc2mac_dat_b_src_pvld) //|> w
  ,.sc2mac_dat_b_mask (sc2mac_dat_b_src_mask[64 -1:0]) //|> w
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,.sc2mac_dat_b_data${i} (sc2mac_dat_b_src_data${i}[8 -1:0]) //|> o   )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_dat_b_data0 (sc2mac_dat_b_src_data0[8 -1:0]) //|> o   
,.sc2mac_dat_b_data1 (sc2mac_dat_b_src_data1[8 -1:0]) //|> o   
,.sc2mac_dat_b_data2 (sc2mac_dat_b_src_data2[8 -1:0]) //|> o   
,.sc2mac_dat_b_data3 (sc2mac_dat_b_src_data3[8 -1:0]) //|> o   
,.sc2mac_dat_b_data4 (sc2mac_dat_b_src_data4[8 -1:0]) //|> o   
,.sc2mac_dat_b_data5 (sc2mac_dat_b_src_data5[8 -1:0]) //|> o   
,.sc2mac_dat_b_data6 (sc2mac_dat_b_src_data6[8 -1:0]) //|> o   
,.sc2mac_dat_b_data7 (sc2mac_dat_b_src_data7[8 -1:0]) //|> o   
,.sc2mac_dat_b_data8 (sc2mac_dat_b_src_data8[8 -1:0]) //|> o   
,.sc2mac_dat_b_data9 (sc2mac_dat_b_src_data9[8 -1:0]) //|> o   
,.sc2mac_dat_b_data10 (sc2mac_dat_b_src_data10[8 -1:0]) //|> o   
,.sc2mac_dat_b_data11 (sc2mac_dat_b_src_data11[8 -1:0]) //|> o   
,.sc2mac_dat_b_data12 (sc2mac_dat_b_src_data12[8 -1:0]) //|> o   
,.sc2mac_dat_b_data13 (sc2mac_dat_b_src_data13[8 -1:0]) //|> o   
,.sc2mac_dat_b_data14 (sc2mac_dat_b_src_data14[8 -1:0]) //|> o   
,.sc2mac_dat_b_data15 (sc2mac_dat_b_src_data15[8 -1:0]) //|> o   
,.sc2mac_dat_b_data16 (sc2mac_dat_b_src_data16[8 -1:0]) //|> o   
,.sc2mac_dat_b_data17 (sc2mac_dat_b_src_data17[8 -1:0]) //|> o   
,.sc2mac_dat_b_data18 (sc2mac_dat_b_src_data18[8 -1:0]) //|> o   
,.sc2mac_dat_b_data19 (sc2mac_dat_b_src_data19[8 -1:0]) //|> o   
,.sc2mac_dat_b_data20 (sc2mac_dat_b_src_data20[8 -1:0]) //|> o   
,.sc2mac_dat_b_data21 (sc2mac_dat_b_src_data21[8 -1:0]) //|> o   
,.sc2mac_dat_b_data22 (sc2mac_dat_b_src_data22[8 -1:0]) //|> o   
,.sc2mac_dat_b_data23 (sc2mac_dat_b_src_data23[8 -1:0]) //|> o   
,.sc2mac_dat_b_data24 (sc2mac_dat_b_src_data24[8 -1:0]) //|> o   
,.sc2mac_dat_b_data25 (sc2mac_dat_b_src_data25[8 -1:0]) //|> o   
,.sc2mac_dat_b_data26 (sc2mac_dat_b_src_data26[8 -1:0]) //|> o   
,.sc2mac_dat_b_data27 (sc2mac_dat_b_src_data27[8 -1:0]) //|> o   
,.sc2mac_dat_b_data28 (sc2mac_dat_b_src_data28[8 -1:0]) //|> o   
,.sc2mac_dat_b_data29 (sc2mac_dat_b_src_data29[8 -1:0]) //|> o   
,.sc2mac_dat_b_data30 (sc2mac_dat_b_src_data30[8 -1:0]) //|> o   
,.sc2mac_dat_b_data31 (sc2mac_dat_b_src_data31[8 -1:0]) //|> o   
,.sc2mac_dat_b_data32 (sc2mac_dat_b_src_data32[8 -1:0]) //|> o   
,.sc2mac_dat_b_data33 (sc2mac_dat_b_src_data33[8 -1:0]) //|> o   
,.sc2mac_dat_b_data34 (sc2mac_dat_b_src_data34[8 -1:0]) //|> o   
,.sc2mac_dat_b_data35 (sc2mac_dat_b_src_data35[8 -1:0]) //|> o   
,.sc2mac_dat_b_data36 (sc2mac_dat_b_src_data36[8 -1:0]) //|> o   
,.sc2mac_dat_b_data37 (sc2mac_dat_b_src_data37[8 -1:0]) //|> o   
,.sc2mac_dat_b_data38 (sc2mac_dat_b_src_data38[8 -1:0]) //|> o   
,.sc2mac_dat_b_data39 (sc2mac_dat_b_src_data39[8 -1:0]) //|> o   
,.sc2mac_dat_b_data40 (sc2mac_dat_b_src_data40[8 -1:0]) //|> o   
,.sc2mac_dat_b_data41 (sc2mac_dat_b_src_data41[8 -1:0]) //|> o   
,.sc2mac_dat_b_data42 (sc2mac_dat_b_src_data42[8 -1:0]) //|> o   
,.sc2mac_dat_b_data43 (sc2mac_dat_b_src_data43[8 -1:0]) //|> o   
,.sc2mac_dat_b_data44 (sc2mac_dat_b_src_data44[8 -1:0]) //|> o   
,.sc2mac_dat_b_data45 (sc2mac_dat_b_src_data45[8 -1:0]) //|> o   
,.sc2mac_dat_b_data46 (sc2mac_dat_b_src_data46[8 -1:0]) //|> o   
,.sc2mac_dat_b_data47 (sc2mac_dat_b_src_data47[8 -1:0]) //|> o   
,.sc2mac_dat_b_data48 (sc2mac_dat_b_src_data48[8 -1:0]) //|> o   
,.sc2mac_dat_b_data49 (sc2mac_dat_b_src_data49[8 -1:0]) //|> o   
,.sc2mac_dat_b_data50 (sc2mac_dat_b_src_data50[8 -1:0]) //|> o   
,.sc2mac_dat_b_data51 (sc2mac_dat_b_src_data51[8 -1:0]) //|> o   
,.sc2mac_dat_b_data52 (sc2mac_dat_b_src_data52[8 -1:0]) //|> o   
,.sc2mac_dat_b_data53 (sc2mac_dat_b_src_data53[8 -1:0]) //|> o   
,.sc2mac_dat_b_data54 (sc2mac_dat_b_src_data54[8 -1:0]) //|> o   
,.sc2mac_dat_b_data55 (sc2mac_dat_b_src_data55[8 -1:0]) //|> o   
,.sc2mac_dat_b_data56 (sc2mac_dat_b_src_data56[8 -1:0]) //|> o   
,.sc2mac_dat_b_data57 (sc2mac_dat_b_src_data57[8 -1:0]) //|> o   
,.sc2mac_dat_b_data58 (sc2mac_dat_b_src_data58[8 -1:0]) //|> o   
,.sc2mac_dat_b_data59 (sc2mac_dat_b_src_data59[8 -1:0]) //|> o   
,.sc2mac_dat_b_data60 (sc2mac_dat_b_src_data60[8 -1:0]) //|> o   
,.sc2mac_dat_b_data61 (sc2mac_dat_b_src_data61[8 -1:0]) //|> o   
,.sc2mac_dat_b_data62 (sc2mac_dat_b_src_data62[8 -1:0]) //|> o   
,.sc2mac_dat_b_data63 (sc2mac_dat_b_src_data63[8 -1:0]) //|> o   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_dat_b_pd (sc2mac_dat_b_src_pd[8:0]) //|> w
  ,.sc2mac_wt_a_pvld (sc2mac_wt_a_src_pvld) //|> o
  ,.sc2mac_wt_a_mask (sc2mac_wt_a_src_mask[64 -1:0]) //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,.sc2mac_wt_a_data${i} (sc2mac_wt_a_src_data${i}[8 -1:0]) //|> o   )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_wt_a_data0 (sc2mac_wt_a_src_data0[8 -1:0]) //|> o   
,.sc2mac_wt_a_data1 (sc2mac_wt_a_src_data1[8 -1:0]) //|> o   
,.sc2mac_wt_a_data2 (sc2mac_wt_a_src_data2[8 -1:0]) //|> o   
,.sc2mac_wt_a_data3 (sc2mac_wt_a_src_data3[8 -1:0]) //|> o   
,.sc2mac_wt_a_data4 (sc2mac_wt_a_src_data4[8 -1:0]) //|> o   
,.sc2mac_wt_a_data5 (sc2mac_wt_a_src_data5[8 -1:0]) //|> o   
,.sc2mac_wt_a_data6 (sc2mac_wt_a_src_data6[8 -1:0]) //|> o   
,.sc2mac_wt_a_data7 (sc2mac_wt_a_src_data7[8 -1:0]) //|> o   
,.sc2mac_wt_a_data8 (sc2mac_wt_a_src_data8[8 -1:0]) //|> o   
,.sc2mac_wt_a_data9 (sc2mac_wt_a_src_data9[8 -1:0]) //|> o   
,.sc2mac_wt_a_data10 (sc2mac_wt_a_src_data10[8 -1:0]) //|> o   
,.sc2mac_wt_a_data11 (sc2mac_wt_a_src_data11[8 -1:0]) //|> o   
,.sc2mac_wt_a_data12 (sc2mac_wt_a_src_data12[8 -1:0]) //|> o   
,.sc2mac_wt_a_data13 (sc2mac_wt_a_src_data13[8 -1:0]) //|> o   
,.sc2mac_wt_a_data14 (sc2mac_wt_a_src_data14[8 -1:0]) //|> o   
,.sc2mac_wt_a_data15 (sc2mac_wt_a_src_data15[8 -1:0]) //|> o   
,.sc2mac_wt_a_data16 (sc2mac_wt_a_src_data16[8 -1:0]) //|> o   
,.sc2mac_wt_a_data17 (sc2mac_wt_a_src_data17[8 -1:0]) //|> o   
,.sc2mac_wt_a_data18 (sc2mac_wt_a_src_data18[8 -1:0]) //|> o   
,.sc2mac_wt_a_data19 (sc2mac_wt_a_src_data19[8 -1:0]) //|> o   
,.sc2mac_wt_a_data20 (sc2mac_wt_a_src_data20[8 -1:0]) //|> o   
,.sc2mac_wt_a_data21 (sc2mac_wt_a_src_data21[8 -1:0]) //|> o   
,.sc2mac_wt_a_data22 (sc2mac_wt_a_src_data22[8 -1:0]) //|> o   
,.sc2mac_wt_a_data23 (sc2mac_wt_a_src_data23[8 -1:0]) //|> o   
,.sc2mac_wt_a_data24 (sc2mac_wt_a_src_data24[8 -1:0]) //|> o   
,.sc2mac_wt_a_data25 (sc2mac_wt_a_src_data25[8 -1:0]) //|> o   
,.sc2mac_wt_a_data26 (sc2mac_wt_a_src_data26[8 -1:0]) //|> o   
,.sc2mac_wt_a_data27 (sc2mac_wt_a_src_data27[8 -1:0]) //|> o   
,.sc2mac_wt_a_data28 (sc2mac_wt_a_src_data28[8 -1:0]) //|> o   
,.sc2mac_wt_a_data29 (sc2mac_wt_a_src_data29[8 -1:0]) //|> o   
,.sc2mac_wt_a_data30 (sc2mac_wt_a_src_data30[8 -1:0]) //|> o   
,.sc2mac_wt_a_data31 (sc2mac_wt_a_src_data31[8 -1:0]) //|> o   
,.sc2mac_wt_a_data32 (sc2mac_wt_a_src_data32[8 -1:0]) //|> o   
,.sc2mac_wt_a_data33 (sc2mac_wt_a_src_data33[8 -1:0]) //|> o   
,.sc2mac_wt_a_data34 (sc2mac_wt_a_src_data34[8 -1:0]) //|> o   
,.sc2mac_wt_a_data35 (sc2mac_wt_a_src_data35[8 -1:0]) //|> o   
,.sc2mac_wt_a_data36 (sc2mac_wt_a_src_data36[8 -1:0]) //|> o   
,.sc2mac_wt_a_data37 (sc2mac_wt_a_src_data37[8 -1:0]) //|> o   
,.sc2mac_wt_a_data38 (sc2mac_wt_a_src_data38[8 -1:0]) //|> o   
,.sc2mac_wt_a_data39 (sc2mac_wt_a_src_data39[8 -1:0]) //|> o   
,.sc2mac_wt_a_data40 (sc2mac_wt_a_src_data40[8 -1:0]) //|> o   
,.sc2mac_wt_a_data41 (sc2mac_wt_a_src_data41[8 -1:0]) //|> o   
,.sc2mac_wt_a_data42 (sc2mac_wt_a_src_data42[8 -1:0]) //|> o   
,.sc2mac_wt_a_data43 (sc2mac_wt_a_src_data43[8 -1:0]) //|> o   
,.sc2mac_wt_a_data44 (sc2mac_wt_a_src_data44[8 -1:0]) //|> o   
,.sc2mac_wt_a_data45 (sc2mac_wt_a_src_data45[8 -1:0]) //|> o   
,.sc2mac_wt_a_data46 (sc2mac_wt_a_src_data46[8 -1:0]) //|> o   
,.sc2mac_wt_a_data47 (sc2mac_wt_a_src_data47[8 -1:0]) //|> o   
,.sc2mac_wt_a_data48 (sc2mac_wt_a_src_data48[8 -1:0]) //|> o   
,.sc2mac_wt_a_data49 (sc2mac_wt_a_src_data49[8 -1:0]) //|> o   
,.sc2mac_wt_a_data50 (sc2mac_wt_a_src_data50[8 -1:0]) //|> o   
,.sc2mac_wt_a_data51 (sc2mac_wt_a_src_data51[8 -1:0]) //|> o   
,.sc2mac_wt_a_data52 (sc2mac_wt_a_src_data52[8 -1:0]) //|> o   
,.sc2mac_wt_a_data53 (sc2mac_wt_a_src_data53[8 -1:0]) //|> o   
,.sc2mac_wt_a_data54 (sc2mac_wt_a_src_data54[8 -1:0]) //|> o   
,.sc2mac_wt_a_data55 (sc2mac_wt_a_src_data55[8 -1:0]) //|> o   
,.sc2mac_wt_a_data56 (sc2mac_wt_a_src_data56[8 -1:0]) //|> o   
,.sc2mac_wt_a_data57 (sc2mac_wt_a_src_data57[8 -1:0]) //|> o   
,.sc2mac_wt_a_data58 (sc2mac_wt_a_src_data58[8 -1:0]) //|> o   
,.sc2mac_wt_a_data59 (sc2mac_wt_a_src_data59[8 -1:0]) //|> o   
,.sc2mac_wt_a_data60 (sc2mac_wt_a_src_data60[8 -1:0]) //|> o   
,.sc2mac_wt_a_data61 (sc2mac_wt_a_src_data61[8 -1:0]) //|> o   
,.sc2mac_wt_a_data62 (sc2mac_wt_a_src_data62[8 -1:0]) //|> o   
,.sc2mac_wt_a_data63 (sc2mac_wt_a_src_data63[8 -1:0]) //|> o   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_wt_a_sel (sc2mac_wt_a_src_sel[32/2 -1:0]) //|> o
  ,.sc2mac_wt_b_pvld (sc2mac_wt_b_src_pvld) //|> w
  ,.sc2mac_wt_b_mask (sc2mac_wt_b_src_mask[64 -1:0]) //|> w
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,.sc2mac_wt_b_data${i} (sc2mac_wt_b_src_data${i}[8 -1:0]) //|> o   )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_wt_b_data0 (sc2mac_wt_b_src_data0[8 -1:0]) //|> o   
,.sc2mac_wt_b_data1 (sc2mac_wt_b_src_data1[8 -1:0]) //|> o   
,.sc2mac_wt_b_data2 (sc2mac_wt_b_src_data2[8 -1:0]) //|> o   
,.sc2mac_wt_b_data3 (sc2mac_wt_b_src_data3[8 -1:0]) //|> o   
,.sc2mac_wt_b_data4 (sc2mac_wt_b_src_data4[8 -1:0]) //|> o   
,.sc2mac_wt_b_data5 (sc2mac_wt_b_src_data5[8 -1:0]) //|> o   
,.sc2mac_wt_b_data6 (sc2mac_wt_b_src_data6[8 -1:0]) //|> o   
,.sc2mac_wt_b_data7 (sc2mac_wt_b_src_data7[8 -1:0]) //|> o   
,.sc2mac_wt_b_data8 (sc2mac_wt_b_src_data8[8 -1:0]) //|> o   
,.sc2mac_wt_b_data9 (sc2mac_wt_b_src_data9[8 -1:0]) //|> o   
,.sc2mac_wt_b_data10 (sc2mac_wt_b_src_data10[8 -1:0]) //|> o   
,.sc2mac_wt_b_data11 (sc2mac_wt_b_src_data11[8 -1:0]) //|> o   
,.sc2mac_wt_b_data12 (sc2mac_wt_b_src_data12[8 -1:0]) //|> o   
,.sc2mac_wt_b_data13 (sc2mac_wt_b_src_data13[8 -1:0]) //|> o   
,.sc2mac_wt_b_data14 (sc2mac_wt_b_src_data14[8 -1:0]) //|> o   
,.sc2mac_wt_b_data15 (sc2mac_wt_b_src_data15[8 -1:0]) //|> o   
,.sc2mac_wt_b_data16 (sc2mac_wt_b_src_data16[8 -1:0]) //|> o   
,.sc2mac_wt_b_data17 (sc2mac_wt_b_src_data17[8 -1:0]) //|> o   
,.sc2mac_wt_b_data18 (sc2mac_wt_b_src_data18[8 -1:0]) //|> o   
,.sc2mac_wt_b_data19 (sc2mac_wt_b_src_data19[8 -1:0]) //|> o   
,.sc2mac_wt_b_data20 (sc2mac_wt_b_src_data20[8 -1:0]) //|> o   
,.sc2mac_wt_b_data21 (sc2mac_wt_b_src_data21[8 -1:0]) //|> o   
,.sc2mac_wt_b_data22 (sc2mac_wt_b_src_data22[8 -1:0]) //|> o   
,.sc2mac_wt_b_data23 (sc2mac_wt_b_src_data23[8 -1:0]) //|> o   
,.sc2mac_wt_b_data24 (sc2mac_wt_b_src_data24[8 -1:0]) //|> o   
,.sc2mac_wt_b_data25 (sc2mac_wt_b_src_data25[8 -1:0]) //|> o   
,.sc2mac_wt_b_data26 (sc2mac_wt_b_src_data26[8 -1:0]) //|> o   
,.sc2mac_wt_b_data27 (sc2mac_wt_b_src_data27[8 -1:0]) //|> o   
,.sc2mac_wt_b_data28 (sc2mac_wt_b_src_data28[8 -1:0]) //|> o   
,.sc2mac_wt_b_data29 (sc2mac_wt_b_src_data29[8 -1:0]) //|> o   
,.sc2mac_wt_b_data30 (sc2mac_wt_b_src_data30[8 -1:0]) //|> o   
,.sc2mac_wt_b_data31 (sc2mac_wt_b_src_data31[8 -1:0]) //|> o   
,.sc2mac_wt_b_data32 (sc2mac_wt_b_src_data32[8 -1:0]) //|> o   
,.sc2mac_wt_b_data33 (sc2mac_wt_b_src_data33[8 -1:0]) //|> o   
,.sc2mac_wt_b_data34 (sc2mac_wt_b_src_data34[8 -1:0]) //|> o   
,.sc2mac_wt_b_data35 (sc2mac_wt_b_src_data35[8 -1:0]) //|> o   
,.sc2mac_wt_b_data36 (sc2mac_wt_b_src_data36[8 -1:0]) //|> o   
,.sc2mac_wt_b_data37 (sc2mac_wt_b_src_data37[8 -1:0]) //|> o   
,.sc2mac_wt_b_data38 (sc2mac_wt_b_src_data38[8 -1:0]) //|> o   
,.sc2mac_wt_b_data39 (sc2mac_wt_b_src_data39[8 -1:0]) //|> o   
,.sc2mac_wt_b_data40 (sc2mac_wt_b_src_data40[8 -1:0]) //|> o   
,.sc2mac_wt_b_data41 (sc2mac_wt_b_src_data41[8 -1:0]) //|> o   
,.sc2mac_wt_b_data42 (sc2mac_wt_b_src_data42[8 -1:0]) //|> o   
,.sc2mac_wt_b_data43 (sc2mac_wt_b_src_data43[8 -1:0]) //|> o   
,.sc2mac_wt_b_data44 (sc2mac_wt_b_src_data44[8 -1:0]) //|> o   
,.sc2mac_wt_b_data45 (sc2mac_wt_b_src_data45[8 -1:0]) //|> o   
,.sc2mac_wt_b_data46 (sc2mac_wt_b_src_data46[8 -1:0]) //|> o   
,.sc2mac_wt_b_data47 (sc2mac_wt_b_src_data47[8 -1:0]) //|> o   
,.sc2mac_wt_b_data48 (sc2mac_wt_b_src_data48[8 -1:0]) //|> o   
,.sc2mac_wt_b_data49 (sc2mac_wt_b_src_data49[8 -1:0]) //|> o   
,.sc2mac_wt_b_data50 (sc2mac_wt_b_src_data50[8 -1:0]) //|> o   
,.sc2mac_wt_b_data51 (sc2mac_wt_b_src_data51[8 -1:0]) //|> o   
,.sc2mac_wt_b_data52 (sc2mac_wt_b_src_data52[8 -1:0]) //|> o   
,.sc2mac_wt_b_data53 (sc2mac_wt_b_src_data53[8 -1:0]) //|> o   
,.sc2mac_wt_b_data54 (sc2mac_wt_b_src_data54[8 -1:0]) //|> o   
,.sc2mac_wt_b_data55 (sc2mac_wt_b_src_data55[8 -1:0]) //|> o   
,.sc2mac_wt_b_data56 (sc2mac_wt_b_src_data56[8 -1:0]) //|> o   
,.sc2mac_wt_b_data57 (sc2mac_wt_b_src_data57[8 -1:0]) //|> o   
,.sc2mac_wt_b_data58 (sc2mac_wt_b_src_data58[8 -1:0]) //|> o   
,.sc2mac_wt_b_data59 (sc2mac_wt_b_src_data59[8 -1:0]) //|> o   
,.sc2mac_wt_b_data60 (sc2mac_wt_b_src_data60[8 -1:0]) //|> o   
,.sc2mac_wt_b_data61 (sc2mac_wt_b_src_data61[8 -1:0]) //|> o   
,.sc2mac_wt_b_data62 (sc2mac_wt_b_src_data62[8 -1:0]) //|> o   
,.sc2mac_wt_b_data63 (sc2mac_wt_b_src_data63[8 -1:0]) //|> o   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_wt_b_sel (sc2mac_wt_b_src_sel[32/2 -1:0]) //|> w
  ,.cdma2sc_wt_updt (cdma2sc_wt_updt)
  ,.cdma2sc_wt_kernels (cdma2sc_wt_kernels)
  ,.cdma2sc_wt_entries (cdma2sc_wt_entries)
  ,.cdma2sc_wmb_entries (cdma2sc_wmb_entries)
  ,.sc2cdma_wt_updt (sc2cdma_wt_updt)
  ,.sc2cdma_wt_kernels (sc2cdma_wt_kernels)
  ,.sc2cdma_wt_entries (sc2cdma_wt_entries)
  ,.sc2cdma_wmb_entries (sc2cdma_wmb_entries)
  ,.dla_clk_ovr_on_sync (csc_dla_clk_ovr_on_sync)
  ,.global_clk_ovr_on_sync (csc_global_clk_ovr_on_sync)
  ,.tmc2slcg_disable_clock_gating (tmc2slcg_disable_clock_gating)
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition C: Retiming path csc->cmac_b //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_RT_csc2cmac_b u_NV_NVDLA_RT_csc2cmac_b (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< w
  ,.sc2mac_wt_src_pvld (sc2mac_wt_b_src_pvld) //|< w
  ,.sc2mac_wt_src_mask (sc2mac_wt_b_src_mask[64 -1:0]) //|< w
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,.sc2mac_wt_src_data${i} (sc2mac_wt_b_src_data${i}[8 -1:0]) //|< w   )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_wt_src_data0 (sc2mac_wt_b_src_data0[8 -1:0]) //|< w   
,.sc2mac_wt_src_data1 (sc2mac_wt_b_src_data1[8 -1:0]) //|< w   
,.sc2mac_wt_src_data2 (sc2mac_wt_b_src_data2[8 -1:0]) //|< w   
,.sc2mac_wt_src_data3 (sc2mac_wt_b_src_data3[8 -1:0]) //|< w   
,.sc2mac_wt_src_data4 (sc2mac_wt_b_src_data4[8 -1:0]) //|< w   
,.sc2mac_wt_src_data5 (sc2mac_wt_b_src_data5[8 -1:0]) //|< w   
,.sc2mac_wt_src_data6 (sc2mac_wt_b_src_data6[8 -1:0]) //|< w   
,.sc2mac_wt_src_data7 (sc2mac_wt_b_src_data7[8 -1:0]) //|< w   
,.sc2mac_wt_src_data8 (sc2mac_wt_b_src_data8[8 -1:0]) //|< w   
,.sc2mac_wt_src_data9 (sc2mac_wt_b_src_data9[8 -1:0]) //|< w   
,.sc2mac_wt_src_data10 (sc2mac_wt_b_src_data10[8 -1:0]) //|< w   
,.sc2mac_wt_src_data11 (sc2mac_wt_b_src_data11[8 -1:0]) //|< w   
,.sc2mac_wt_src_data12 (sc2mac_wt_b_src_data12[8 -1:0]) //|< w   
,.sc2mac_wt_src_data13 (sc2mac_wt_b_src_data13[8 -1:0]) //|< w   
,.sc2mac_wt_src_data14 (sc2mac_wt_b_src_data14[8 -1:0]) //|< w   
,.sc2mac_wt_src_data15 (sc2mac_wt_b_src_data15[8 -1:0]) //|< w   
,.sc2mac_wt_src_data16 (sc2mac_wt_b_src_data16[8 -1:0]) //|< w   
,.sc2mac_wt_src_data17 (sc2mac_wt_b_src_data17[8 -1:0]) //|< w   
,.sc2mac_wt_src_data18 (sc2mac_wt_b_src_data18[8 -1:0]) //|< w   
,.sc2mac_wt_src_data19 (sc2mac_wt_b_src_data19[8 -1:0]) //|< w   
,.sc2mac_wt_src_data20 (sc2mac_wt_b_src_data20[8 -1:0]) //|< w   
,.sc2mac_wt_src_data21 (sc2mac_wt_b_src_data21[8 -1:0]) //|< w   
,.sc2mac_wt_src_data22 (sc2mac_wt_b_src_data22[8 -1:0]) //|< w   
,.sc2mac_wt_src_data23 (sc2mac_wt_b_src_data23[8 -1:0]) //|< w   
,.sc2mac_wt_src_data24 (sc2mac_wt_b_src_data24[8 -1:0]) //|< w   
,.sc2mac_wt_src_data25 (sc2mac_wt_b_src_data25[8 -1:0]) //|< w   
,.sc2mac_wt_src_data26 (sc2mac_wt_b_src_data26[8 -1:0]) //|< w   
,.sc2mac_wt_src_data27 (sc2mac_wt_b_src_data27[8 -1:0]) //|< w   
,.sc2mac_wt_src_data28 (sc2mac_wt_b_src_data28[8 -1:0]) //|< w   
,.sc2mac_wt_src_data29 (sc2mac_wt_b_src_data29[8 -1:0]) //|< w   
,.sc2mac_wt_src_data30 (sc2mac_wt_b_src_data30[8 -1:0]) //|< w   
,.sc2mac_wt_src_data31 (sc2mac_wt_b_src_data31[8 -1:0]) //|< w   
,.sc2mac_wt_src_data32 (sc2mac_wt_b_src_data32[8 -1:0]) //|< w   
,.sc2mac_wt_src_data33 (sc2mac_wt_b_src_data33[8 -1:0]) //|< w   
,.sc2mac_wt_src_data34 (sc2mac_wt_b_src_data34[8 -1:0]) //|< w   
,.sc2mac_wt_src_data35 (sc2mac_wt_b_src_data35[8 -1:0]) //|< w   
,.sc2mac_wt_src_data36 (sc2mac_wt_b_src_data36[8 -1:0]) //|< w   
,.sc2mac_wt_src_data37 (sc2mac_wt_b_src_data37[8 -1:0]) //|< w   
,.sc2mac_wt_src_data38 (sc2mac_wt_b_src_data38[8 -1:0]) //|< w   
,.sc2mac_wt_src_data39 (sc2mac_wt_b_src_data39[8 -1:0]) //|< w   
,.sc2mac_wt_src_data40 (sc2mac_wt_b_src_data40[8 -1:0]) //|< w   
,.sc2mac_wt_src_data41 (sc2mac_wt_b_src_data41[8 -1:0]) //|< w   
,.sc2mac_wt_src_data42 (sc2mac_wt_b_src_data42[8 -1:0]) //|< w   
,.sc2mac_wt_src_data43 (sc2mac_wt_b_src_data43[8 -1:0]) //|< w   
,.sc2mac_wt_src_data44 (sc2mac_wt_b_src_data44[8 -1:0]) //|< w   
,.sc2mac_wt_src_data45 (sc2mac_wt_b_src_data45[8 -1:0]) //|< w   
,.sc2mac_wt_src_data46 (sc2mac_wt_b_src_data46[8 -1:0]) //|< w   
,.sc2mac_wt_src_data47 (sc2mac_wt_b_src_data47[8 -1:0]) //|< w   
,.sc2mac_wt_src_data48 (sc2mac_wt_b_src_data48[8 -1:0]) //|< w   
,.sc2mac_wt_src_data49 (sc2mac_wt_b_src_data49[8 -1:0]) //|< w   
,.sc2mac_wt_src_data50 (sc2mac_wt_b_src_data50[8 -1:0]) //|< w   
,.sc2mac_wt_src_data51 (sc2mac_wt_b_src_data51[8 -1:0]) //|< w   
,.sc2mac_wt_src_data52 (sc2mac_wt_b_src_data52[8 -1:0]) //|< w   
,.sc2mac_wt_src_data53 (sc2mac_wt_b_src_data53[8 -1:0]) //|< w   
,.sc2mac_wt_src_data54 (sc2mac_wt_b_src_data54[8 -1:0]) //|< w   
,.sc2mac_wt_src_data55 (sc2mac_wt_b_src_data55[8 -1:0]) //|< w   
,.sc2mac_wt_src_data56 (sc2mac_wt_b_src_data56[8 -1:0]) //|< w   
,.sc2mac_wt_src_data57 (sc2mac_wt_b_src_data57[8 -1:0]) //|< w   
,.sc2mac_wt_src_data58 (sc2mac_wt_b_src_data58[8 -1:0]) //|< w   
,.sc2mac_wt_src_data59 (sc2mac_wt_b_src_data59[8 -1:0]) //|< w   
,.sc2mac_wt_src_data60 (sc2mac_wt_b_src_data60[8 -1:0]) //|< w   
,.sc2mac_wt_src_data61 (sc2mac_wt_b_src_data61[8 -1:0]) //|< w   
,.sc2mac_wt_src_data62 (sc2mac_wt_b_src_data62[8 -1:0]) //|< w   
,.sc2mac_wt_src_data63 (sc2mac_wt_b_src_data63[8 -1:0]) //|< w   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_wt_src_sel (sc2mac_wt_b_src_sel[32/2 -1:0]) //|< w
  ,.sc2mac_dat_src_pvld (sc2mac_dat_b_src_pvld) //|< w
  ,.sc2mac_dat_src_mask (sc2mac_dat_b_src_mask[64 -1:0]) //|< w
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,.sc2mac_dat_src_data${i} (sc2mac_dat_b_src_data${i}[8 -1:0]) //|< w   )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_dat_src_data0 (sc2mac_dat_b_src_data0[8 -1:0]) //|< w   
,.sc2mac_dat_src_data1 (sc2mac_dat_b_src_data1[8 -1:0]) //|< w   
,.sc2mac_dat_src_data2 (sc2mac_dat_b_src_data2[8 -1:0]) //|< w   
,.sc2mac_dat_src_data3 (sc2mac_dat_b_src_data3[8 -1:0]) //|< w   
,.sc2mac_dat_src_data4 (sc2mac_dat_b_src_data4[8 -1:0]) //|< w   
,.sc2mac_dat_src_data5 (sc2mac_dat_b_src_data5[8 -1:0]) //|< w   
,.sc2mac_dat_src_data6 (sc2mac_dat_b_src_data6[8 -1:0]) //|< w   
,.sc2mac_dat_src_data7 (sc2mac_dat_b_src_data7[8 -1:0]) //|< w   
,.sc2mac_dat_src_data8 (sc2mac_dat_b_src_data8[8 -1:0]) //|< w   
,.sc2mac_dat_src_data9 (sc2mac_dat_b_src_data9[8 -1:0]) //|< w   
,.sc2mac_dat_src_data10 (sc2mac_dat_b_src_data10[8 -1:0]) //|< w   
,.sc2mac_dat_src_data11 (sc2mac_dat_b_src_data11[8 -1:0]) //|< w   
,.sc2mac_dat_src_data12 (sc2mac_dat_b_src_data12[8 -1:0]) //|< w   
,.sc2mac_dat_src_data13 (sc2mac_dat_b_src_data13[8 -1:0]) //|< w   
,.sc2mac_dat_src_data14 (sc2mac_dat_b_src_data14[8 -1:0]) //|< w   
,.sc2mac_dat_src_data15 (sc2mac_dat_b_src_data15[8 -1:0]) //|< w   
,.sc2mac_dat_src_data16 (sc2mac_dat_b_src_data16[8 -1:0]) //|< w   
,.sc2mac_dat_src_data17 (sc2mac_dat_b_src_data17[8 -1:0]) //|< w   
,.sc2mac_dat_src_data18 (sc2mac_dat_b_src_data18[8 -1:0]) //|< w   
,.sc2mac_dat_src_data19 (sc2mac_dat_b_src_data19[8 -1:0]) //|< w   
,.sc2mac_dat_src_data20 (sc2mac_dat_b_src_data20[8 -1:0]) //|< w   
,.sc2mac_dat_src_data21 (sc2mac_dat_b_src_data21[8 -1:0]) //|< w   
,.sc2mac_dat_src_data22 (sc2mac_dat_b_src_data22[8 -1:0]) //|< w   
,.sc2mac_dat_src_data23 (sc2mac_dat_b_src_data23[8 -1:0]) //|< w   
,.sc2mac_dat_src_data24 (sc2mac_dat_b_src_data24[8 -1:0]) //|< w   
,.sc2mac_dat_src_data25 (sc2mac_dat_b_src_data25[8 -1:0]) //|< w   
,.sc2mac_dat_src_data26 (sc2mac_dat_b_src_data26[8 -1:0]) //|< w   
,.sc2mac_dat_src_data27 (sc2mac_dat_b_src_data27[8 -1:0]) //|< w   
,.sc2mac_dat_src_data28 (sc2mac_dat_b_src_data28[8 -1:0]) //|< w   
,.sc2mac_dat_src_data29 (sc2mac_dat_b_src_data29[8 -1:0]) //|< w   
,.sc2mac_dat_src_data30 (sc2mac_dat_b_src_data30[8 -1:0]) //|< w   
,.sc2mac_dat_src_data31 (sc2mac_dat_b_src_data31[8 -1:0]) //|< w   
,.sc2mac_dat_src_data32 (sc2mac_dat_b_src_data32[8 -1:0]) //|< w   
,.sc2mac_dat_src_data33 (sc2mac_dat_b_src_data33[8 -1:0]) //|< w   
,.sc2mac_dat_src_data34 (sc2mac_dat_b_src_data34[8 -1:0]) //|< w   
,.sc2mac_dat_src_data35 (sc2mac_dat_b_src_data35[8 -1:0]) //|< w   
,.sc2mac_dat_src_data36 (sc2mac_dat_b_src_data36[8 -1:0]) //|< w   
,.sc2mac_dat_src_data37 (sc2mac_dat_b_src_data37[8 -1:0]) //|< w   
,.sc2mac_dat_src_data38 (sc2mac_dat_b_src_data38[8 -1:0]) //|< w   
,.sc2mac_dat_src_data39 (sc2mac_dat_b_src_data39[8 -1:0]) //|< w   
,.sc2mac_dat_src_data40 (sc2mac_dat_b_src_data40[8 -1:0]) //|< w   
,.sc2mac_dat_src_data41 (sc2mac_dat_b_src_data41[8 -1:0]) //|< w   
,.sc2mac_dat_src_data42 (sc2mac_dat_b_src_data42[8 -1:0]) //|< w   
,.sc2mac_dat_src_data43 (sc2mac_dat_b_src_data43[8 -1:0]) //|< w   
,.sc2mac_dat_src_data44 (sc2mac_dat_b_src_data44[8 -1:0]) //|< w   
,.sc2mac_dat_src_data45 (sc2mac_dat_b_src_data45[8 -1:0]) //|< w   
,.sc2mac_dat_src_data46 (sc2mac_dat_b_src_data46[8 -1:0]) //|< w   
,.sc2mac_dat_src_data47 (sc2mac_dat_b_src_data47[8 -1:0]) //|< w   
,.sc2mac_dat_src_data48 (sc2mac_dat_b_src_data48[8 -1:0]) //|< w   
,.sc2mac_dat_src_data49 (sc2mac_dat_b_src_data49[8 -1:0]) //|< w   
,.sc2mac_dat_src_data50 (sc2mac_dat_b_src_data50[8 -1:0]) //|< w   
,.sc2mac_dat_src_data51 (sc2mac_dat_b_src_data51[8 -1:0]) //|< w   
,.sc2mac_dat_src_data52 (sc2mac_dat_b_src_data52[8 -1:0]) //|< w   
,.sc2mac_dat_src_data53 (sc2mac_dat_b_src_data53[8 -1:0]) //|< w   
,.sc2mac_dat_src_data54 (sc2mac_dat_b_src_data54[8 -1:0]) //|< w   
,.sc2mac_dat_src_data55 (sc2mac_dat_b_src_data55[8 -1:0]) //|< w   
,.sc2mac_dat_src_data56 (sc2mac_dat_b_src_data56[8 -1:0]) //|< w   
,.sc2mac_dat_src_data57 (sc2mac_dat_b_src_data57[8 -1:0]) //|< w   
,.sc2mac_dat_src_data58 (sc2mac_dat_b_src_data58[8 -1:0]) //|< w   
,.sc2mac_dat_src_data59 (sc2mac_dat_b_src_data59[8 -1:0]) //|< w   
,.sc2mac_dat_src_data60 (sc2mac_dat_b_src_data60[8 -1:0]) //|< w   
,.sc2mac_dat_src_data61 (sc2mac_dat_b_src_data61[8 -1:0]) //|< w   
,.sc2mac_dat_src_data62 (sc2mac_dat_b_src_data62[8 -1:0]) //|< w   
,.sc2mac_dat_src_data63 (sc2mac_dat_b_src_data63[8 -1:0]) //|< w   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_dat_src_pd (sc2mac_dat_b_src_pd[8:0]) //|< w
  ,.sc2mac_wt_dst_pvld (sc2mac_wt_b_dst_pvld) //|> o
  ,.sc2mac_wt_dst_mask (sc2mac_wt_b_dst_mask[64 -1:0]) //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,.sc2mac_wt_dst_data${i} (sc2mac_wt_b_dst_data${i}[8 -1:0]) //|< w   )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_wt_dst_data0 (sc2mac_wt_b_dst_data0[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data1 (sc2mac_wt_b_dst_data1[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data2 (sc2mac_wt_b_dst_data2[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data3 (sc2mac_wt_b_dst_data3[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data4 (sc2mac_wt_b_dst_data4[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data5 (sc2mac_wt_b_dst_data5[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data6 (sc2mac_wt_b_dst_data6[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data7 (sc2mac_wt_b_dst_data7[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data8 (sc2mac_wt_b_dst_data8[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data9 (sc2mac_wt_b_dst_data9[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data10 (sc2mac_wt_b_dst_data10[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data11 (sc2mac_wt_b_dst_data11[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data12 (sc2mac_wt_b_dst_data12[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data13 (sc2mac_wt_b_dst_data13[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data14 (sc2mac_wt_b_dst_data14[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data15 (sc2mac_wt_b_dst_data15[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data16 (sc2mac_wt_b_dst_data16[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data17 (sc2mac_wt_b_dst_data17[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data18 (sc2mac_wt_b_dst_data18[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data19 (sc2mac_wt_b_dst_data19[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data20 (sc2mac_wt_b_dst_data20[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data21 (sc2mac_wt_b_dst_data21[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data22 (sc2mac_wt_b_dst_data22[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data23 (sc2mac_wt_b_dst_data23[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data24 (sc2mac_wt_b_dst_data24[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data25 (sc2mac_wt_b_dst_data25[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data26 (sc2mac_wt_b_dst_data26[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data27 (sc2mac_wt_b_dst_data27[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data28 (sc2mac_wt_b_dst_data28[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data29 (sc2mac_wt_b_dst_data29[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data30 (sc2mac_wt_b_dst_data30[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data31 (sc2mac_wt_b_dst_data31[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data32 (sc2mac_wt_b_dst_data32[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data33 (sc2mac_wt_b_dst_data33[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data34 (sc2mac_wt_b_dst_data34[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data35 (sc2mac_wt_b_dst_data35[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data36 (sc2mac_wt_b_dst_data36[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data37 (sc2mac_wt_b_dst_data37[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data38 (sc2mac_wt_b_dst_data38[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data39 (sc2mac_wt_b_dst_data39[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data40 (sc2mac_wt_b_dst_data40[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data41 (sc2mac_wt_b_dst_data41[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data42 (sc2mac_wt_b_dst_data42[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data43 (sc2mac_wt_b_dst_data43[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data44 (sc2mac_wt_b_dst_data44[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data45 (sc2mac_wt_b_dst_data45[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data46 (sc2mac_wt_b_dst_data46[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data47 (sc2mac_wt_b_dst_data47[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data48 (sc2mac_wt_b_dst_data48[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data49 (sc2mac_wt_b_dst_data49[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data50 (sc2mac_wt_b_dst_data50[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data51 (sc2mac_wt_b_dst_data51[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data52 (sc2mac_wt_b_dst_data52[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data53 (sc2mac_wt_b_dst_data53[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data54 (sc2mac_wt_b_dst_data54[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data55 (sc2mac_wt_b_dst_data55[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data56 (sc2mac_wt_b_dst_data56[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data57 (sc2mac_wt_b_dst_data57[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data58 (sc2mac_wt_b_dst_data58[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data59 (sc2mac_wt_b_dst_data59[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data60 (sc2mac_wt_b_dst_data60[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data61 (sc2mac_wt_b_dst_data61[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data62 (sc2mac_wt_b_dst_data62[8 -1:0]) //|< w   
,.sc2mac_wt_dst_data63 (sc2mac_wt_b_dst_data63[8 -1:0]) //|< w   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_wt_dst_sel (sc2mac_wt_b_dst_sel[32/2 -1:0]) //|> o
  ,.sc2mac_dat_dst_pvld (sc2mac_dat_b_dst_pvld) //|> o
  ,.sc2mac_dat_dst_mask (sc2mac_dat_b_dst_mask[64 -1:0]) //|> o
//: for(my $i=0; $i<64 ; $i++){
//: print qq(
//: ,.sc2mac_dat_dst_data${i} (sc2mac_dat_b_dst_data${i}[8 -1:0]) //|< w   )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.sc2mac_dat_dst_data0 (sc2mac_dat_b_dst_data0[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data1 (sc2mac_dat_b_dst_data1[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data2 (sc2mac_dat_b_dst_data2[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data3 (sc2mac_dat_b_dst_data3[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data4 (sc2mac_dat_b_dst_data4[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data5 (sc2mac_dat_b_dst_data5[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data6 (sc2mac_dat_b_dst_data6[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data7 (sc2mac_dat_b_dst_data7[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data8 (sc2mac_dat_b_dst_data8[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data9 (sc2mac_dat_b_dst_data9[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data10 (sc2mac_dat_b_dst_data10[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data11 (sc2mac_dat_b_dst_data11[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data12 (sc2mac_dat_b_dst_data12[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data13 (sc2mac_dat_b_dst_data13[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data14 (sc2mac_dat_b_dst_data14[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data15 (sc2mac_dat_b_dst_data15[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data16 (sc2mac_dat_b_dst_data16[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data17 (sc2mac_dat_b_dst_data17[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data18 (sc2mac_dat_b_dst_data18[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data19 (sc2mac_dat_b_dst_data19[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data20 (sc2mac_dat_b_dst_data20[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data21 (sc2mac_dat_b_dst_data21[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data22 (sc2mac_dat_b_dst_data22[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data23 (sc2mac_dat_b_dst_data23[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data24 (sc2mac_dat_b_dst_data24[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data25 (sc2mac_dat_b_dst_data25[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data26 (sc2mac_dat_b_dst_data26[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data27 (sc2mac_dat_b_dst_data27[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data28 (sc2mac_dat_b_dst_data28[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data29 (sc2mac_dat_b_dst_data29[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data30 (sc2mac_dat_b_dst_data30[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data31 (sc2mac_dat_b_dst_data31[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data32 (sc2mac_dat_b_dst_data32[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data33 (sc2mac_dat_b_dst_data33[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data34 (sc2mac_dat_b_dst_data34[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data35 (sc2mac_dat_b_dst_data35[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data36 (sc2mac_dat_b_dst_data36[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data37 (sc2mac_dat_b_dst_data37[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data38 (sc2mac_dat_b_dst_data38[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data39 (sc2mac_dat_b_dst_data39[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data40 (sc2mac_dat_b_dst_data40[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data41 (sc2mac_dat_b_dst_data41[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data42 (sc2mac_dat_b_dst_data42[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data43 (sc2mac_dat_b_dst_data43[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data44 (sc2mac_dat_b_dst_data44[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data45 (sc2mac_dat_b_dst_data45[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data46 (sc2mac_dat_b_dst_data46[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data47 (sc2mac_dat_b_dst_data47[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data48 (sc2mac_dat_b_dst_data48[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data49 (sc2mac_dat_b_dst_data49[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data50 (sc2mac_dat_b_dst_data50[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data51 (sc2mac_dat_b_dst_data51[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data52 (sc2mac_dat_b_dst_data52[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data53 (sc2mac_dat_b_dst_data53[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data54 (sc2mac_dat_b_dst_data54[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data55 (sc2mac_dat_b_dst_data55[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data56 (sc2mac_dat_b_dst_data56[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data57 (sc2mac_dat_b_dst_data57[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data58 (sc2mac_dat_b_dst_data58[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data59 (sc2mac_dat_b_dst_data59[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data60 (sc2mac_dat_b_dst_data60[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data61 (sc2mac_dat_b_dst_data61[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data62 (sc2mac_dat_b_dst_data62[8 -1:0]) //|< w   
,.sc2mac_dat_dst_data63 (sc2mac_dat_b_dst_data63[8 -1:0]) //|< w   
//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_dat_dst_pd (sc2mac_dat_b_dst_pd[8:0]) //|> o
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition C: Retiming path csb->cmac_b //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_RT_csb2cmac u_NV_NVDLA_RT_csb2cmac (
   .nvdla_core_clk (nvdla_core_clk)
  ,.nvdla_core_rstn (nvdla_core_rstn)
  ,.csb2cmac_req_src_pvld (csb2cmac_b_req_src_pvld)
  ,.csb2cmac_req_src_prdy (csb2cmac_b_req_src_prdy)
  ,.csb2cmac_req_src_pd (csb2cmac_b_req_src_pd)
  ,.cmac2csb_resp_src_valid (cmac_b2csb_resp_src_valid)
  ,.cmac2csb_resp_src_pd (cmac_b2csb_resp_src_pd)
  ,.csb2cmac_req_dst_pvld (csb2cmac_b_req_dst_pvld)
  ,.csb2cmac_req_dst_prdy (csb2cmac_b_req_dst_prdy)
  ,.csb2cmac_req_dst_pd (csb2cmac_b_req_dst_pd)
  ,.cmac2csb_resp_dst_valid (cmac_b2csb_resp_dst_valid)
  ,.cmac2csb_resp_dst_pd (cmac_b2csb_resp_dst_pd)
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition C: Retiming path csb<->cacc //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_RT_csb2cacc u_NV_NVDLA_RT_csb2cacc (
   .nvdla_core_clk (nvdla_core_clk)
  ,.nvdla_core_rstn (nvdla_core_rstn)
  ,.csb2cacc_req_src_pvld (csb2cacc_req_src_pvld)
  ,.csb2cacc_req_src_prdy (csb2cacc_req_src_prdy)
  ,.csb2cacc_req_src_pd (csb2cacc_req_src_pd)
  ,.cacc2csb_resp_src_valid (cacc2csb_resp_src_valid)
  ,.cacc2csb_resp_src_pd (cacc2csb_resp_src_pd)
  ,.csb2cacc_req_dst_pvld (csb2cacc_req_dst_pvld)
  ,.csb2cacc_req_dst_prdy (csb2cacc_req_dst_prdy)
  ,.csb2cacc_req_dst_pd (csb2cacc_req_dst_pd)
  ,.cacc2csb_resp_dst_valid (cacc2csb_resp_dst_valid)
  ,.cacc2csb_resp_dst_pd (cacc2csb_resp_dst_pd)
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition C: Retiming path cacc->glbc //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_RT_cacc2glb u_NV_NVDLA_RT_cacc2glb (
   .nvdla_core_clk (nvdla_core_clk)
  ,.nvdla_core_rstn (nvdla_core_rstn)
  ,.cacc2glb_done_intr_src_pd (cacc2glb_done_intr_src_pd)
  ,.cacc2glb_done_intr_dst_pd (cacc2glb_done_intr_dst_pd)
  );
////////////////////////////////////////////////////////////////////////
// Dangles/Contenders report //
////////////////////////////////////////////////////////////////////////
endmodule // NV_NVDLA_partition_c
