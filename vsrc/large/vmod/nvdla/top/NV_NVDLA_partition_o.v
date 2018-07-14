// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_partition_o.v
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
module NV_NVDLA_partition_o (
   test_mode
  ,direct_reset_
  ,global_clk_ovr_on
  ,tmc2slcg_disable_clock_gating
  ,cdma2csb_resp_valid
  ,cdma2csb_resp_pd
  ,cdma_dat2glb_done_intr_pd
  ,cdma_dat2mcif_rd_req_valid
  ,cdma_dat2mcif_rd_req_ready
  ,cdma_dat2mcif_rd_req_pd
  ,cdma_wt2glb_done_intr_pd
  ,cdma_wt2mcif_rd_req_valid
  ,cdma_wt2mcif_rd_req_ready
  ,cdma_wt2mcif_rd_req_pd
  ,cmac_a2csb_resp_src_valid
  ,cmac_a2csb_resp_src_pd
  ,csb2cmac_a_req_dst_pvld
  ,csb2cmac_a_req_dst_prdy
  ,csb2cmac_a_req_dst_pd
  ,cmac_b2csb_resp_dst_valid
  ,cmac_b2csb_resp_dst_pd
  ,csb2cmac_b_req_src_pvld
  ,csb2cmac_b_req_src_prdy
  ,csb2cmac_b_req_src_pd
  ,cacc2csb_resp_dst_valid
  ,cacc2csb_resp_dst_pd
  ,cacc2glb_done_intr_dst_pd
  ,csb2cacc_req_src_pvld
  ,csb2cacc_req_src_prdy
  ,csb2cacc_req_src_pd
  ,csb2cdma_req_pvld
  ,csb2cdma_req_prdy
  ,csb2cdma_req_pd
  ,csb2csc_req_pvld
  ,csb2csc_req_prdy
  ,csb2csc_req_pd
  ,csb2nvdla_valid
  ,csb2nvdla_ready
  ,csb2nvdla_addr
  ,csb2nvdla_wdat
  ,csb2nvdla_write
  ,csb2nvdla_nposted
  ,csb2sdp_rdma_req_pvld
  ,csb2sdp_rdma_req_prdy
  ,csb2sdp_rdma_req_pd
  ,csb2sdp_req_pvld
  ,csb2sdp_req_prdy
  ,csb2sdp_req_pd
  ,csc2csb_resp_valid
  ,csc2csb_resp_pd
  ,mcif2cdma_dat_rd_rsp_valid
  ,mcif2cdma_dat_rd_rsp_ready
  ,mcif2cdma_dat_rd_rsp_pd
  ,mcif2cdma_wt_rd_rsp_valid
  ,mcif2cdma_wt_rd_rsp_ready
  ,mcif2cdma_wt_rd_rsp_pd
  ,mcif2noc_axi_ar_arvalid
  ,mcif2noc_axi_ar_arready
  ,mcif2noc_axi_ar_arid
  ,mcif2noc_axi_ar_arlen
  ,mcif2noc_axi_ar_araddr
  ,mcif2noc_axi_aw_awvalid
  ,mcif2noc_axi_aw_awready
  ,mcif2noc_axi_aw_awid
  ,mcif2noc_axi_aw_awlen
  ,mcif2noc_axi_aw_awaddr
  ,mcif2noc_axi_w_wvalid
  ,mcif2noc_axi_w_wready
  ,mcif2noc_axi_w_wdata
  ,mcif2noc_axi_w_wstrb
  ,mcif2noc_axi_w_wlast
  ,mcif2sdp_b_rd_rsp_valid
  ,mcif2sdp_b_rd_rsp_ready
  ,mcif2sdp_b_rd_rsp_pd
  ,sdp_b2mcif_rd_cdt_lat_fifo_pop
  ,sdp_b2mcif_rd_req_valid
  ,sdp_b2mcif_rd_req_ready
  ,sdp_b2mcif_rd_req_pd
  ,mcif2sdp_e_rd_rsp_valid
  ,mcif2sdp_e_rd_rsp_ready
  ,mcif2sdp_e_rd_rsp_pd
  ,sdp_e2mcif_rd_cdt_lat_fifo_pop
  ,sdp_e2mcif_rd_req_valid
  ,sdp_e2mcif_rd_req_ready
  ,sdp_e2mcif_rd_req_pd
  ,mcif2sdp_n_rd_rsp_valid
  ,mcif2sdp_n_rd_rsp_ready
  ,mcif2sdp_n_rd_rsp_pd
  ,sdp_n2mcif_rd_cdt_lat_fifo_pop
  ,sdp_n2mcif_rd_req_valid
  ,sdp_n2mcif_rd_req_ready
  ,sdp_n2mcif_rd_req_pd
  ,mcif2sdp_rd_rsp_valid
  ,mcif2sdp_rd_rsp_ready
  ,mcif2sdp_rd_rsp_pd
  ,mcif2sdp_wr_rsp_complete
  ,cdma_dat2cvif_rd_req_valid
  ,cdma_dat2cvif_rd_req_ready
  ,cdma_dat2cvif_rd_req_pd
  ,cdma_wt2cvif_rd_req_valid
  ,cdma_wt2cvif_rd_req_ready
  ,cdma_wt2cvif_rd_req_pd
  ,cvif2cdma_dat_rd_rsp_valid
  ,cvif2cdma_dat_rd_rsp_ready
  ,cvif2cdma_dat_rd_rsp_pd
  ,cvif2cdma_wt_rd_rsp_valid
  ,cvif2cdma_wt_rd_rsp_ready
  ,cvif2cdma_wt_rd_rsp_pd
  ,cvif2noc_axi_ar_arvalid
  ,cvif2noc_axi_ar_arready
  ,cvif2noc_axi_ar_arid
  ,cvif2noc_axi_ar_arlen
  ,cvif2noc_axi_ar_araddr
  ,cvif2noc_axi_aw_awvalid
  ,cvif2noc_axi_aw_awready
  ,cvif2noc_axi_aw_awid
  ,cvif2noc_axi_aw_awlen
  ,cvif2noc_axi_aw_awaddr
  ,cvif2noc_axi_w_wvalid
  ,cvif2noc_axi_w_wready
  ,cvif2noc_axi_w_wdata
  ,cvif2noc_axi_w_wstrb
  ,cvif2noc_axi_w_wlast
  ,cvif2sdp_b_rd_rsp_valid
  ,cvif2sdp_b_rd_rsp_ready
  ,cvif2sdp_b_rd_rsp_pd
  ,cvif2sdp_e_rd_rsp_valid
  ,cvif2sdp_e_rd_rsp_ready
  ,cvif2sdp_e_rd_rsp_pd
  ,cvif2sdp_n_rd_rsp_valid
  ,cvif2sdp_n_rd_rsp_ready
  ,cvif2sdp_n_rd_rsp_pd
  ,cvif2sdp_rd_rsp_valid
  ,cvif2sdp_rd_rsp_ready
  ,cvif2sdp_rd_rsp_pd
  ,cvif2sdp_wr_rsp_complete
  ,noc2cvif_axi_b_bvalid
  ,noc2cvif_axi_b_bready
  ,noc2cvif_axi_b_bid
  ,noc2cvif_axi_r_rvalid
  ,noc2cvif_axi_r_rready
  ,noc2cvif_axi_r_rid
  ,noc2cvif_axi_r_rlast
  ,noc2cvif_axi_r_rdata
  ,sdp2cvif_rd_cdt_lat_fifo_pop
  ,sdp2cvif_rd_req_valid
  ,sdp2cvif_rd_req_ready
  ,sdp2cvif_rd_req_pd
  ,sdp2cvif_wr_req_valid
  ,sdp2cvif_wr_req_ready
  ,sdp2cvif_wr_req_pd
  ,sdp_b2cvif_rd_cdt_lat_fifo_pop
  ,sdp_b2cvif_rd_req_valid
  ,sdp_b2cvif_rd_req_ready
  ,sdp_b2cvif_rd_req_pd
  ,sdp_e2cvif_rd_cdt_lat_fifo_pop
  ,sdp_e2cvif_rd_req_valid
  ,sdp_e2cvif_rd_req_ready
  ,sdp_e2cvif_rd_req_pd
  ,sdp_n2cvif_rd_cdt_lat_fifo_pop
  ,sdp_n2cvif_rd_req_valid
  ,sdp_n2cvif_rd_req_ready
  ,sdp_n2cvif_rd_req_pd
  ,noc2mcif_axi_b_bvalid
  ,noc2mcif_axi_b_bready
  ,noc2mcif_axi_b_bid
  ,noc2mcif_axi_r_rvalid
  ,noc2mcif_axi_r_rready
  ,noc2mcif_axi_r_rid
  ,noc2mcif_axi_r_rlast
  ,noc2mcif_axi_r_rdata
  ,nvdla2csb_valid
  ,nvdla2csb_data
  ,nvdla2csb_wr_complete
  ,core_intr
  ,pwrbus_ram_pd
  ,sc2mac_dat_a_dst_pvld
  ,sc2mac_dat_a_dst_mask
//: my $kk=64 -1;
//: foreach my $i (0..${kk}) {
//: print qq(
//: ,sc2mac_dat_a_dst_data$i
//: ,sc2mac_dat_a_src_data$i
//: ,sc2mac_wt_a_dst_data$i
//: ,sc2mac_wt_a_src_data$i
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,sc2mac_dat_a_dst_data0
,sc2mac_dat_a_src_data0
,sc2mac_wt_a_dst_data0
,sc2mac_wt_a_src_data0

,sc2mac_dat_a_dst_data1
,sc2mac_dat_a_src_data1
,sc2mac_wt_a_dst_data1
,sc2mac_wt_a_src_data1

,sc2mac_dat_a_dst_data2
,sc2mac_dat_a_src_data2
,sc2mac_wt_a_dst_data2
,sc2mac_wt_a_src_data2

,sc2mac_dat_a_dst_data3
,sc2mac_dat_a_src_data3
,sc2mac_wt_a_dst_data3
,sc2mac_wt_a_src_data3

,sc2mac_dat_a_dst_data4
,sc2mac_dat_a_src_data4
,sc2mac_wt_a_dst_data4
,sc2mac_wt_a_src_data4

,sc2mac_dat_a_dst_data5
,sc2mac_dat_a_src_data5
,sc2mac_wt_a_dst_data5
,sc2mac_wt_a_src_data5

,sc2mac_dat_a_dst_data6
,sc2mac_dat_a_src_data6
,sc2mac_wt_a_dst_data6
,sc2mac_wt_a_src_data6

,sc2mac_dat_a_dst_data7
,sc2mac_dat_a_src_data7
,sc2mac_wt_a_dst_data7
,sc2mac_wt_a_src_data7

,sc2mac_dat_a_dst_data8
,sc2mac_dat_a_src_data8
,sc2mac_wt_a_dst_data8
,sc2mac_wt_a_src_data8

,sc2mac_dat_a_dst_data9
,sc2mac_dat_a_src_data9
,sc2mac_wt_a_dst_data9
,sc2mac_wt_a_src_data9

,sc2mac_dat_a_dst_data10
,sc2mac_dat_a_src_data10
,sc2mac_wt_a_dst_data10
,sc2mac_wt_a_src_data10

,sc2mac_dat_a_dst_data11
,sc2mac_dat_a_src_data11
,sc2mac_wt_a_dst_data11
,sc2mac_wt_a_src_data11

,sc2mac_dat_a_dst_data12
,sc2mac_dat_a_src_data12
,sc2mac_wt_a_dst_data12
,sc2mac_wt_a_src_data12

,sc2mac_dat_a_dst_data13
,sc2mac_dat_a_src_data13
,sc2mac_wt_a_dst_data13
,sc2mac_wt_a_src_data13

,sc2mac_dat_a_dst_data14
,sc2mac_dat_a_src_data14
,sc2mac_wt_a_dst_data14
,sc2mac_wt_a_src_data14

,sc2mac_dat_a_dst_data15
,sc2mac_dat_a_src_data15
,sc2mac_wt_a_dst_data15
,sc2mac_wt_a_src_data15

,sc2mac_dat_a_dst_data16
,sc2mac_dat_a_src_data16
,sc2mac_wt_a_dst_data16
,sc2mac_wt_a_src_data16

,sc2mac_dat_a_dst_data17
,sc2mac_dat_a_src_data17
,sc2mac_wt_a_dst_data17
,sc2mac_wt_a_src_data17

,sc2mac_dat_a_dst_data18
,sc2mac_dat_a_src_data18
,sc2mac_wt_a_dst_data18
,sc2mac_wt_a_src_data18

,sc2mac_dat_a_dst_data19
,sc2mac_dat_a_src_data19
,sc2mac_wt_a_dst_data19
,sc2mac_wt_a_src_data19

,sc2mac_dat_a_dst_data20
,sc2mac_dat_a_src_data20
,sc2mac_wt_a_dst_data20
,sc2mac_wt_a_src_data20

,sc2mac_dat_a_dst_data21
,sc2mac_dat_a_src_data21
,sc2mac_wt_a_dst_data21
,sc2mac_wt_a_src_data21

,sc2mac_dat_a_dst_data22
,sc2mac_dat_a_src_data22
,sc2mac_wt_a_dst_data22
,sc2mac_wt_a_src_data22

,sc2mac_dat_a_dst_data23
,sc2mac_dat_a_src_data23
,sc2mac_wt_a_dst_data23
,sc2mac_wt_a_src_data23

,sc2mac_dat_a_dst_data24
,sc2mac_dat_a_src_data24
,sc2mac_wt_a_dst_data24
,sc2mac_wt_a_src_data24

,sc2mac_dat_a_dst_data25
,sc2mac_dat_a_src_data25
,sc2mac_wt_a_dst_data25
,sc2mac_wt_a_src_data25

,sc2mac_dat_a_dst_data26
,sc2mac_dat_a_src_data26
,sc2mac_wt_a_dst_data26
,sc2mac_wt_a_src_data26

,sc2mac_dat_a_dst_data27
,sc2mac_dat_a_src_data27
,sc2mac_wt_a_dst_data27
,sc2mac_wt_a_src_data27

,sc2mac_dat_a_dst_data28
,sc2mac_dat_a_src_data28
,sc2mac_wt_a_dst_data28
,sc2mac_wt_a_src_data28

,sc2mac_dat_a_dst_data29
,sc2mac_dat_a_src_data29
,sc2mac_wt_a_dst_data29
,sc2mac_wt_a_src_data29

,sc2mac_dat_a_dst_data30
,sc2mac_dat_a_src_data30
,sc2mac_wt_a_dst_data30
,sc2mac_wt_a_src_data30

,sc2mac_dat_a_dst_data31
,sc2mac_dat_a_src_data31
,sc2mac_wt_a_dst_data31
,sc2mac_wt_a_src_data31

,sc2mac_dat_a_dst_data32
,sc2mac_dat_a_src_data32
,sc2mac_wt_a_dst_data32
,sc2mac_wt_a_src_data32

,sc2mac_dat_a_dst_data33
,sc2mac_dat_a_src_data33
,sc2mac_wt_a_dst_data33
,sc2mac_wt_a_src_data33

,sc2mac_dat_a_dst_data34
,sc2mac_dat_a_src_data34
,sc2mac_wt_a_dst_data34
,sc2mac_wt_a_src_data34

,sc2mac_dat_a_dst_data35
,sc2mac_dat_a_src_data35
,sc2mac_wt_a_dst_data35
,sc2mac_wt_a_src_data35

,sc2mac_dat_a_dst_data36
,sc2mac_dat_a_src_data36
,sc2mac_wt_a_dst_data36
,sc2mac_wt_a_src_data36

,sc2mac_dat_a_dst_data37
,sc2mac_dat_a_src_data37
,sc2mac_wt_a_dst_data37
,sc2mac_wt_a_src_data37

,sc2mac_dat_a_dst_data38
,sc2mac_dat_a_src_data38
,sc2mac_wt_a_dst_data38
,sc2mac_wt_a_src_data38

,sc2mac_dat_a_dst_data39
,sc2mac_dat_a_src_data39
,sc2mac_wt_a_dst_data39
,sc2mac_wt_a_src_data39

,sc2mac_dat_a_dst_data40
,sc2mac_dat_a_src_data40
,sc2mac_wt_a_dst_data40
,sc2mac_wt_a_src_data40

,sc2mac_dat_a_dst_data41
,sc2mac_dat_a_src_data41
,sc2mac_wt_a_dst_data41
,sc2mac_wt_a_src_data41

,sc2mac_dat_a_dst_data42
,sc2mac_dat_a_src_data42
,sc2mac_wt_a_dst_data42
,sc2mac_wt_a_src_data42

,sc2mac_dat_a_dst_data43
,sc2mac_dat_a_src_data43
,sc2mac_wt_a_dst_data43
,sc2mac_wt_a_src_data43

,sc2mac_dat_a_dst_data44
,sc2mac_dat_a_src_data44
,sc2mac_wt_a_dst_data44
,sc2mac_wt_a_src_data44

,sc2mac_dat_a_dst_data45
,sc2mac_dat_a_src_data45
,sc2mac_wt_a_dst_data45
,sc2mac_wt_a_src_data45

,sc2mac_dat_a_dst_data46
,sc2mac_dat_a_src_data46
,sc2mac_wt_a_dst_data46
,sc2mac_wt_a_src_data46

,sc2mac_dat_a_dst_data47
,sc2mac_dat_a_src_data47
,sc2mac_wt_a_dst_data47
,sc2mac_wt_a_src_data47

,sc2mac_dat_a_dst_data48
,sc2mac_dat_a_src_data48
,sc2mac_wt_a_dst_data48
,sc2mac_wt_a_src_data48

,sc2mac_dat_a_dst_data49
,sc2mac_dat_a_src_data49
,sc2mac_wt_a_dst_data49
,sc2mac_wt_a_src_data49

,sc2mac_dat_a_dst_data50
,sc2mac_dat_a_src_data50
,sc2mac_wt_a_dst_data50
,sc2mac_wt_a_src_data50

,sc2mac_dat_a_dst_data51
,sc2mac_dat_a_src_data51
,sc2mac_wt_a_dst_data51
,sc2mac_wt_a_src_data51

,sc2mac_dat_a_dst_data52
,sc2mac_dat_a_src_data52
,sc2mac_wt_a_dst_data52
,sc2mac_wt_a_src_data52

,sc2mac_dat_a_dst_data53
,sc2mac_dat_a_src_data53
,sc2mac_wt_a_dst_data53
,sc2mac_wt_a_src_data53

,sc2mac_dat_a_dst_data54
,sc2mac_dat_a_src_data54
,sc2mac_wt_a_dst_data54
,sc2mac_wt_a_src_data54

,sc2mac_dat_a_dst_data55
,sc2mac_dat_a_src_data55
,sc2mac_wt_a_dst_data55
,sc2mac_wt_a_src_data55

,sc2mac_dat_a_dst_data56
,sc2mac_dat_a_src_data56
,sc2mac_wt_a_dst_data56
,sc2mac_wt_a_src_data56

,sc2mac_dat_a_dst_data57
,sc2mac_dat_a_src_data57
,sc2mac_wt_a_dst_data57
,sc2mac_wt_a_src_data57

,sc2mac_dat_a_dst_data58
,sc2mac_dat_a_src_data58
,sc2mac_wt_a_dst_data58
,sc2mac_wt_a_src_data58

,sc2mac_dat_a_dst_data59
,sc2mac_dat_a_src_data59
,sc2mac_wt_a_dst_data59
,sc2mac_wt_a_src_data59

,sc2mac_dat_a_dst_data60
,sc2mac_dat_a_src_data60
,sc2mac_wt_a_dst_data60
,sc2mac_wt_a_src_data60

,sc2mac_dat_a_dst_data61
,sc2mac_dat_a_src_data61
,sc2mac_wt_a_dst_data61
,sc2mac_wt_a_src_data61

,sc2mac_dat_a_dst_data62
,sc2mac_dat_a_src_data62
,sc2mac_wt_a_dst_data62
,sc2mac_wt_a_src_data62

,sc2mac_dat_a_dst_data63
,sc2mac_dat_a_src_data63
,sc2mac_wt_a_dst_data63
,sc2mac_wt_a_src_data63

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,sc2mac_dat_a_dst_pd
  ,sc2mac_dat_a_src_pvld
  ,sc2mac_dat_a_src_mask
  ,sc2mac_dat_a_src_pd
  ,sc2mac_wt_a_dst_pvld
  ,sc2mac_wt_a_dst_mask
  ,sc2mac_wt_a_dst_sel
  ,sc2mac_wt_a_src_pvld
  ,sc2mac_wt_a_src_mask
  ,sc2mac_wt_a_src_sel
  ,sdp2csb_resp_valid
  ,sdp2csb_resp_pd
  ,sdp2glb_done_intr_pd
  ,sdp2mcif_rd_cdt_lat_fifo_pop
  ,sdp2mcif_rd_req_valid
  ,sdp2mcif_rd_req_ready
  ,sdp2mcif_rd_req_pd
  ,sdp2mcif_wr_req_valid
  ,sdp2mcif_wr_req_ready
  ,sdp2mcif_wr_req_pd
  ,sdp2pdp_valid
  ,sdp2pdp_ready
  ,sdp2pdp_pd
  ,sdp_rdma2csb_resp_valid
  ,sdp_rdma2csb_resp_pd
  ,nvdla_core_clk
  ,dla_reset_rstn
  ,nvdla_core_rstn
  ,nvdla_falcon_clk
  ,nvdla_clk_ovr_on
  );
//
// NV_NVDLA_partition_o_io.v
//
////////////////////////////////////////////////////////////////////
input test_mode;
input direct_reset_;
input global_clk_ovr_on;
input tmc2slcg_disable_clock_gating;
input cdma2csb_resp_valid; /* data valid */
input [33:0] cdma2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
input [1:0] cdma_dat2glb_done_intr_pd;
input [1:0] cdma_wt2glb_done_intr_pd;
input cmac_a2csb_resp_src_valid; /* data valid */
input [33:0] cmac_a2csb_resp_src_pd; /* pkt_id_width=1 pkt_widths=33,33  */
output csb2cmac_a_req_dst_pvld; /* data valid */
input csb2cmac_a_req_dst_prdy; /* data return handshake */
output [62:0] csb2cmac_a_req_dst_pd;
input cmac_b2csb_resp_dst_valid; /* data valid */
input [33:0] cmac_b2csb_resp_dst_pd; /* pkt_id_width=1 pkt_widths=33,33  */
output csb2cmac_b_req_src_pvld; /* data valid */
input csb2cmac_b_req_src_prdy; /* data return handshake */
output [62:0] csb2cmac_b_req_src_pd;
input cacc2csb_resp_dst_valid; /* data valid */
input [33:0] cacc2csb_resp_dst_pd; /* pkt_id_width=1 pkt_widths=33,33  */
input [1:0] cacc2glb_done_intr_dst_pd;
output csb2cacc_req_src_pvld; /* data valid */
input csb2cacc_req_src_prdy; /* data return handshake */
output [62:0] csb2cacc_req_src_pd;
output csb2cdma_req_pvld; /* data valid */
input csb2cdma_req_prdy; /* data return handshake */
output [62:0] csb2cdma_req_pd;
output csb2csc_req_pvld; /* data valid */
input csb2csc_req_prdy; /* data return handshake */
output [62:0] csb2csc_req_pd;
input csc2csb_resp_valid; /* data valid */
input [33:0] csc2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
input csb2nvdla_valid; /* data valid */
output csb2nvdla_ready; /* data return handshake */
input [15:0] csb2nvdla_addr;
input [31:0] csb2nvdla_wdat;
input csb2nvdla_write;
input csb2nvdla_nposted;
output csb2sdp_rdma_req_pvld; /* data valid */
input csb2sdp_rdma_req_prdy; /* data return handshake */
output [62:0] csb2sdp_rdma_req_pd;
output csb2sdp_req_pvld; /* data valid */
input csb2sdp_req_prdy; /* data return handshake */
output [62:0] csb2sdp_req_pd;
input cdma_dat2cvif_rd_req_valid;
output cdma_dat2cvif_rd_req_ready;
input [64 +14:0] cdma_dat2cvif_rd_req_pd;
output cvif2cdma_dat_rd_rsp_valid;
input cvif2cdma_dat_rd_rsp_ready;
output [512 +(512/8/32)-1:0] cvif2cdma_dat_rd_rsp_pd;
input cdma_wt2cvif_rd_req_valid;
output cdma_wt2cvif_rd_req_ready;
input [64 +14:0] cdma_wt2cvif_rd_req_pd;
output cvif2cdma_wt_rd_rsp_valid;
input cvif2cdma_wt_rd_rsp_ready;
output [512 +(512/8/32)-1:0] cvif2cdma_wt_rd_rsp_pd;
output cvif2sdp_wr_rsp_complete;
input sdp2cvif_rd_cdt_lat_fifo_pop;
input sdp2cvif_rd_req_valid;
output sdp2cvif_rd_req_ready;
input [64 +14:0] sdp2cvif_rd_req_pd;
output cvif2sdp_rd_rsp_valid;
input cvif2sdp_rd_rsp_ready;
output [512 +(512/8/32)-1:0] cvif2sdp_rd_rsp_pd;
input sdp2cvif_wr_req_valid;
output sdp2cvif_wr_req_ready;
input [512 +(512/8/32):0] sdp2cvif_wr_req_pd;
output cvif2sdp_b_rd_rsp_valid;
input cvif2sdp_b_rd_rsp_ready;
output [512 +(512/8/32)-1:0] cvif2sdp_b_rd_rsp_pd;
input sdp_b2cvif_rd_cdt_lat_fifo_pop;
input sdp_b2cvif_rd_req_valid;
output sdp_b2cvif_rd_req_ready;
input [64 +14:0] sdp_b2cvif_rd_req_pd;
output cvif2sdp_e_rd_rsp_valid;
input cvif2sdp_e_rd_rsp_ready;
output [512 +(512/8/32)-1:0] cvif2sdp_e_rd_rsp_pd;
input sdp_e2cvif_rd_cdt_lat_fifo_pop;
input sdp_e2cvif_rd_req_valid;
output sdp_e2cvif_rd_req_ready;
input [64 +14:0] sdp_e2cvif_rd_req_pd;
output cvif2sdp_n_rd_rsp_valid;
input cvif2sdp_n_rd_rsp_ready;
output [512 +(512/8/32)-1:0] cvif2sdp_n_rd_rsp_pd;
input sdp_n2cvif_rd_cdt_lat_fifo_pop;
input sdp_n2cvif_rd_req_valid;
output sdp_n2cvif_rd_req_ready;
input [64 +14:0] sdp_n2cvif_rd_req_pd;
output cvif2noc_axi_ar_arvalid;
input cvif2noc_axi_ar_arready;
output [7:0] cvif2noc_axi_ar_arid;
output [3:0] cvif2noc_axi_ar_arlen;
output [64 -1:0] cvif2noc_axi_ar_araddr;
output cvif2noc_axi_aw_awvalid;
input cvif2noc_axi_aw_awready;
output [7:0] cvif2noc_axi_aw_awid;
output [3:0] cvif2noc_axi_aw_awlen;
output [64 -1:0] cvif2noc_axi_aw_awaddr;
output cvif2noc_axi_w_wvalid;
input cvif2noc_axi_w_wready;
output [512 -1:0] cvif2noc_axi_w_wdata;
output [512/8-1:0] cvif2noc_axi_w_wstrb;
output cvif2noc_axi_w_wlast;
input noc2cvif_axi_b_bvalid;
output noc2cvif_axi_b_bready;
input [7:0] noc2cvif_axi_b_bid;
input noc2cvif_axi_r_rvalid;
output noc2cvif_axi_r_rready;
input [7:0] noc2cvif_axi_r_rid;
input noc2cvif_axi_r_rlast;
input [512 -1:0] noc2cvif_axi_r_rdata;
output mcif2noc_axi_ar_arvalid;
input mcif2noc_axi_ar_arready;
output [7:0] mcif2noc_axi_ar_arid;
output [3:0] mcif2noc_axi_ar_arlen;
output [64 -1:0] mcif2noc_axi_ar_araddr;
output mcif2noc_axi_aw_awvalid;
input mcif2noc_axi_aw_awready;
output [7:0] mcif2noc_axi_aw_awid;
output [3:0] mcif2noc_axi_aw_awlen;
output [64 -1:0] mcif2noc_axi_aw_awaddr;
output mcif2noc_axi_w_wvalid;
input mcif2noc_axi_w_wready;
output [512 -1:0] mcif2noc_axi_w_wdata;
output [512/8-1:0] mcif2noc_axi_w_wstrb;
output mcif2noc_axi_w_wlast;
input noc2mcif_axi_b_bvalid;
output noc2mcif_axi_b_bready;
input [7:0] noc2mcif_axi_b_bid;
input noc2mcif_axi_r_rvalid;
output noc2mcif_axi_r_rready;
input [7:0] noc2mcif_axi_r_rid;
input noc2mcif_axi_r_rlast;
input [512 -1:0] noc2mcif_axi_r_rdata;
input cdma_dat2mcif_rd_req_valid;
output cdma_dat2mcif_rd_req_ready;
input [64 +14:0] cdma_dat2mcif_rd_req_pd;
input cdma_wt2mcif_rd_req_valid;
output cdma_wt2mcif_rd_req_ready;
input [64 +14:0] cdma_wt2mcif_rd_req_pd;
output mcif2cdma_dat_rd_rsp_valid;
input mcif2cdma_dat_rd_rsp_ready;
output [512 +(512/8/32)-1:0] mcif2cdma_dat_rd_rsp_pd;
output mcif2cdma_wt_rd_rsp_valid;
input mcif2cdma_wt_rd_rsp_ready;
output [512 +(512/8/32)-1:0] mcif2cdma_wt_rd_rsp_pd;
output mcif2sdp_b_rd_rsp_valid;
input mcif2sdp_b_rd_rsp_ready;
output [512 +(512/8/32)-1:0] mcif2sdp_b_rd_rsp_pd;
input sdp_b2mcif_rd_cdt_lat_fifo_pop;
input sdp_b2mcif_rd_req_valid;
output sdp_b2mcif_rd_req_ready;
input [64 +14:0] sdp_b2mcif_rd_req_pd;
output mcif2sdp_e_rd_rsp_valid;
input mcif2sdp_e_rd_rsp_ready;
output [512 +(512/8/32)-1:0] mcif2sdp_e_rd_rsp_pd;
input sdp_e2mcif_rd_cdt_lat_fifo_pop;
input sdp_e2mcif_rd_req_valid;
output sdp_e2mcif_rd_req_ready;
input [64 +14:0] sdp_e2mcif_rd_req_pd;
output mcif2sdp_n_rd_rsp_valid;
input mcif2sdp_n_rd_rsp_ready;
output [512 +(512/8/32)-1:0] mcif2sdp_n_rd_rsp_pd;
input sdp_n2mcif_rd_cdt_lat_fifo_pop;
input sdp_n2mcif_rd_req_valid;
output sdp_n2mcif_rd_req_ready;
input [64 +14:0] sdp_n2mcif_rd_req_pd;
input sdp2mcif_rd_cdt_lat_fifo_pop;
input sdp2mcif_rd_req_valid;
output sdp2mcif_rd_req_ready;
input [64 +14:0] sdp2mcif_rd_req_pd;
output mcif2sdp_rd_rsp_valid;
input mcif2sdp_rd_rsp_ready;
output [512 +(512/8/32)-1:0] mcif2sdp_rd_rsp_pd;
output mcif2sdp_wr_rsp_complete;
input sdp2mcif_wr_req_valid;
output sdp2mcif_wr_req_ready;
input [512 +(512/8/32):0] sdp2mcif_wr_req_pd;
output nvdla2csb_valid; /* data valid */
output [31:0] nvdla2csb_data;
output nvdla2csb_wr_complete;
output core_intr;
input [31:0] pwrbus_ram_pd;
//: my $kk=64 -1;
//: foreach my $i (0..${kk}) {
//: print qq(
//: output [8 -1:0] sc2mac_dat_a_dst_data${i};
//: input [8 -1:0] sc2mac_dat_a_src_data${i};
//: output [8 -1:0] sc2mac_wt_a_dst_data${i};
//: input [8 -1:0] sc2mac_wt_a_src_data${i};
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [8 -1:0] sc2mac_dat_a_dst_data0;
input [8 -1:0] sc2mac_dat_a_src_data0;
output [8 -1:0] sc2mac_wt_a_dst_data0;
input [8 -1:0] sc2mac_wt_a_src_data0;

output [8 -1:0] sc2mac_dat_a_dst_data1;
input [8 -1:0] sc2mac_dat_a_src_data1;
output [8 -1:0] sc2mac_wt_a_dst_data1;
input [8 -1:0] sc2mac_wt_a_src_data1;

output [8 -1:0] sc2mac_dat_a_dst_data2;
input [8 -1:0] sc2mac_dat_a_src_data2;
output [8 -1:0] sc2mac_wt_a_dst_data2;
input [8 -1:0] sc2mac_wt_a_src_data2;

output [8 -1:0] sc2mac_dat_a_dst_data3;
input [8 -1:0] sc2mac_dat_a_src_data3;
output [8 -1:0] sc2mac_wt_a_dst_data3;
input [8 -1:0] sc2mac_wt_a_src_data3;

output [8 -1:0] sc2mac_dat_a_dst_data4;
input [8 -1:0] sc2mac_dat_a_src_data4;
output [8 -1:0] sc2mac_wt_a_dst_data4;
input [8 -1:0] sc2mac_wt_a_src_data4;

output [8 -1:0] sc2mac_dat_a_dst_data5;
input [8 -1:0] sc2mac_dat_a_src_data5;
output [8 -1:0] sc2mac_wt_a_dst_data5;
input [8 -1:0] sc2mac_wt_a_src_data5;

output [8 -1:0] sc2mac_dat_a_dst_data6;
input [8 -1:0] sc2mac_dat_a_src_data6;
output [8 -1:0] sc2mac_wt_a_dst_data6;
input [8 -1:0] sc2mac_wt_a_src_data6;

output [8 -1:0] sc2mac_dat_a_dst_data7;
input [8 -1:0] sc2mac_dat_a_src_data7;
output [8 -1:0] sc2mac_wt_a_dst_data7;
input [8 -1:0] sc2mac_wt_a_src_data7;

output [8 -1:0] sc2mac_dat_a_dst_data8;
input [8 -1:0] sc2mac_dat_a_src_data8;
output [8 -1:0] sc2mac_wt_a_dst_data8;
input [8 -1:0] sc2mac_wt_a_src_data8;

output [8 -1:0] sc2mac_dat_a_dst_data9;
input [8 -1:0] sc2mac_dat_a_src_data9;
output [8 -1:0] sc2mac_wt_a_dst_data9;
input [8 -1:0] sc2mac_wt_a_src_data9;

output [8 -1:0] sc2mac_dat_a_dst_data10;
input [8 -1:0] sc2mac_dat_a_src_data10;
output [8 -1:0] sc2mac_wt_a_dst_data10;
input [8 -1:0] sc2mac_wt_a_src_data10;

output [8 -1:0] sc2mac_dat_a_dst_data11;
input [8 -1:0] sc2mac_dat_a_src_data11;
output [8 -1:0] sc2mac_wt_a_dst_data11;
input [8 -1:0] sc2mac_wt_a_src_data11;

output [8 -1:0] sc2mac_dat_a_dst_data12;
input [8 -1:0] sc2mac_dat_a_src_data12;
output [8 -1:0] sc2mac_wt_a_dst_data12;
input [8 -1:0] sc2mac_wt_a_src_data12;

output [8 -1:0] sc2mac_dat_a_dst_data13;
input [8 -1:0] sc2mac_dat_a_src_data13;
output [8 -1:0] sc2mac_wt_a_dst_data13;
input [8 -1:0] sc2mac_wt_a_src_data13;

output [8 -1:0] sc2mac_dat_a_dst_data14;
input [8 -1:0] sc2mac_dat_a_src_data14;
output [8 -1:0] sc2mac_wt_a_dst_data14;
input [8 -1:0] sc2mac_wt_a_src_data14;

output [8 -1:0] sc2mac_dat_a_dst_data15;
input [8 -1:0] sc2mac_dat_a_src_data15;
output [8 -1:0] sc2mac_wt_a_dst_data15;
input [8 -1:0] sc2mac_wt_a_src_data15;

output [8 -1:0] sc2mac_dat_a_dst_data16;
input [8 -1:0] sc2mac_dat_a_src_data16;
output [8 -1:0] sc2mac_wt_a_dst_data16;
input [8 -1:0] sc2mac_wt_a_src_data16;

output [8 -1:0] sc2mac_dat_a_dst_data17;
input [8 -1:0] sc2mac_dat_a_src_data17;
output [8 -1:0] sc2mac_wt_a_dst_data17;
input [8 -1:0] sc2mac_wt_a_src_data17;

output [8 -1:0] sc2mac_dat_a_dst_data18;
input [8 -1:0] sc2mac_dat_a_src_data18;
output [8 -1:0] sc2mac_wt_a_dst_data18;
input [8 -1:0] sc2mac_wt_a_src_data18;

output [8 -1:0] sc2mac_dat_a_dst_data19;
input [8 -1:0] sc2mac_dat_a_src_data19;
output [8 -1:0] sc2mac_wt_a_dst_data19;
input [8 -1:0] sc2mac_wt_a_src_data19;

output [8 -1:0] sc2mac_dat_a_dst_data20;
input [8 -1:0] sc2mac_dat_a_src_data20;
output [8 -1:0] sc2mac_wt_a_dst_data20;
input [8 -1:0] sc2mac_wt_a_src_data20;

output [8 -1:0] sc2mac_dat_a_dst_data21;
input [8 -1:0] sc2mac_dat_a_src_data21;
output [8 -1:0] sc2mac_wt_a_dst_data21;
input [8 -1:0] sc2mac_wt_a_src_data21;

output [8 -1:0] sc2mac_dat_a_dst_data22;
input [8 -1:0] sc2mac_dat_a_src_data22;
output [8 -1:0] sc2mac_wt_a_dst_data22;
input [8 -1:0] sc2mac_wt_a_src_data22;

output [8 -1:0] sc2mac_dat_a_dst_data23;
input [8 -1:0] sc2mac_dat_a_src_data23;
output [8 -1:0] sc2mac_wt_a_dst_data23;
input [8 -1:0] sc2mac_wt_a_src_data23;

output [8 -1:0] sc2mac_dat_a_dst_data24;
input [8 -1:0] sc2mac_dat_a_src_data24;
output [8 -1:0] sc2mac_wt_a_dst_data24;
input [8 -1:0] sc2mac_wt_a_src_data24;

output [8 -1:0] sc2mac_dat_a_dst_data25;
input [8 -1:0] sc2mac_dat_a_src_data25;
output [8 -1:0] sc2mac_wt_a_dst_data25;
input [8 -1:0] sc2mac_wt_a_src_data25;

output [8 -1:0] sc2mac_dat_a_dst_data26;
input [8 -1:0] sc2mac_dat_a_src_data26;
output [8 -1:0] sc2mac_wt_a_dst_data26;
input [8 -1:0] sc2mac_wt_a_src_data26;

output [8 -1:0] sc2mac_dat_a_dst_data27;
input [8 -1:0] sc2mac_dat_a_src_data27;
output [8 -1:0] sc2mac_wt_a_dst_data27;
input [8 -1:0] sc2mac_wt_a_src_data27;

output [8 -1:0] sc2mac_dat_a_dst_data28;
input [8 -1:0] sc2mac_dat_a_src_data28;
output [8 -1:0] sc2mac_wt_a_dst_data28;
input [8 -1:0] sc2mac_wt_a_src_data28;

output [8 -1:0] sc2mac_dat_a_dst_data29;
input [8 -1:0] sc2mac_dat_a_src_data29;
output [8 -1:0] sc2mac_wt_a_dst_data29;
input [8 -1:0] sc2mac_wt_a_src_data29;

output [8 -1:0] sc2mac_dat_a_dst_data30;
input [8 -1:0] sc2mac_dat_a_src_data30;
output [8 -1:0] sc2mac_wt_a_dst_data30;
input [8 -1:0] sc2mac_wt_a_src_data30;

output [8 -1:0] sc2mac_dat_a_dst_data31;
input [8 -1:0] sc2mac_dat_a_src_data31;
output [8 -1:0] sc2mac_wt_a_dst_data31;
input [8 -1:0] sc2mac_wt_a_src_data31;

output [8 -1:0] sc2mac_dat_a_dst_data32;
input [8 -1:0] sc2mac_dat_a_src_data32;
output [8 -1:0] sc2mac_wt_a_dst_data32;
input [8 -1:0] sc2mac_wt_a_src_data32;

output [8 -1:0] sc2mac_dat_a_dst_data33;
input [8 -1:0] sc2mac_dat_a_src_data33;
output [8 -1:0] sc2mac_wt_a_dst_data33;
input [8 -1:0] sc2mac_wt_a_src_data33;

output [8 -1:0] sc2mac_dat_a_dst_data34;
input [8 -1:0] sc2mac_dat_a_src_data34;
output [8 -1:0] sc2mac_wt_a_dst_data34;
input [8 -1:0] sc2mac_wt_a_src_data34;

output [8 -1:0] sc2mac_dat_a_dst_data35;
input [8 -1:0] sc2mac_dat_a_src_data35;
output [8 -1:0] sc2mac_wt_a_dst_data35;
input [8 -1:0] sc2mac_wt_a_src_data35;

output [8 -1:0] sc2mac_dat_a_dst_data36;
input [8 -1:0] sc2mac_dat_a_src_data36;
output [8 -1:0] sc2mac_wt_a_dst_data36;
input [8 -1:0] sc2mac_wt_a_src_data36;

output [8 -1:0] sc2mac_dat_a_dst_data37;
input [8 -1:0] sc2mac_dat_a_src_data37;
output [8 -1:0] sc2mac_wt_a_dst_data37;
input [8 -1:0] sc2mac_wt_a_src_data37;

output [8 -1:0] sc2mac_dat_a_dst_data38;
input [8 -1:0] sc2mac_dat_a_src_data38;
output [8 -1:0] sc2mac_wt_a_dst_data38;
input [8 -1:0] sc2mac_wt_a_src_data38;

output [8 -1:0] sc2mac_dat_a_dst_data39;
input [8 -1:0] sc2mac_dat_a_src_data39;
output [8 -1:0] sc2mac_wt_a_dst_data39;
input [8 -1:0] sc2mac_wt_a_src_data39;

output [8 -1:0] sc2mac_dat_a_dst_data40;
input [8 -1:0] sc2mac_dat_a_src_data40;
output [8 -1:0] sc2mac_wt_a_dst_data40;
input [8 -1:0] sc2mac_wt_a_src_data40;

output [8 -1:0] sc2mac_dat_a_dst_data41;
input [8 -1:0] sc2mac_dat_a_src_data41;
output [8 -1:0] sc2mac_wt_a_dst_data41;
input [8 -1:0] sc2mac_wt_a_src_data41;

output [8 -1:0] sc2mac_dat_a_dst_data42;
input [8 -1:0] sc2mac_dat_a_src_data42;
output [8 -1:0] sc2mac_wt_a_dst_data42;
input [8 -1:0] sc2mac_wt_a_src_data42;

output [8 -1:0] sc2mac_dat_a_dst_data43;
input [8 -1:0] sc2mac_dat_a_src_data43;
output [8 -1:0] sc2mac_wt_a_dst_data43;
input [8 -1:0] sc2mac_wt_a_src_data43;

output [8 -1:0] sc2mac_dat_a_dst_data44;
input [8 -1:0] sc2mac_dat_a_src_data44;
output [8 -1:0] sc2mac_wt_a_dst_data44;
input [8 -1:0] sc2mac_wt_a_src_data44;

output [8 -1:0] sc2mac_dat_a_dst_data45;
input [8 -1:0] sc2mac_dat_a_src_data45;
output [8 -1:0] sc2mac_wt_a_dst_data45;
input [8 -1:0] sc2mac_wt_a_src_data45;

output [8 -1:0] sc2mac_dat_a_dst_data46;
input [8 -1:0] sc2mac_dat_a_src_data46;
output [8 -1:0] sc2mac_wt_a_dst_data46;
input [8 -1:0] sc2mac_wt_a_src_data46;

output [8 -1:0] sc2mac_dat_a_dst_data47;
input [8 -1:0] sc2mac_dat_a_src_data47;
output [8 -1:0] sc2mac_wt_a_dst_data47;
input [8 -1:0] sc2mac_wt_a_src_data47;

output [8 -1:0] sc2mac_dat_a_dst_data48;
input [8 -1:0] sc2mac_dat_a_src_data48;
output [8 -1:0] sc2mac_wt_a_dst_data48;
input [8 -1:0] sc2mac_wt_a_src_data48;

output [8 -1:0] sc2mac_dat_a_dst_data49;
input [8 -1:0] sc2mac_dat_a_src_data49;
output [8 -1:0] sc2mac_wt_a_dst_data49;
input [8 -1:0] sc2mac_wt_a_src_data49;

output [8 -1:0] sc2mac_dat_a_dst_data50;
input [8 -1:0] sc2mac_dat_a_src_data50;
output [8 -1:0] sc2mac_wt_a_dst_data50;
input [8 -1:0] sc2mac_wt_a_src_data50;

output [8 -1:0] sc2mac_dat_a_dst_data51;
input [8 -1:0] sc2mac_dat_a_src_data51;
output [8 -1:0] sc2mac_wt_a_dst_data51;
input [8 -1:0] sc2mac_wt_a_src_data51;

output [8 -1:0] sc2mac_dat_a_dst_data52;
input [8 -1:0] sc2mac_dat_a_src_data52;
output [8 -1:0] sc2mac_wt_a_dst_data52;
input [8 -1:0] sc2mac_wt_a_src_data52;

output [8 -1:0] sc2mac_dat_a_dst_data53;
input [8 -1:0] sc2mac_dat_a_src_data53;
output [8 -1:0] sc2mac_wt_a_dst_data53;
input [8 -1:0] sc2mac_wt_a_src_data53;

output [8 -1:0] sc2mac_dat_a_dst_data54;
input [8 -1:0] sc2mac_dat_a_src_data54;
output [8 -1:0] sc2mac_wt_a_dst_data54;
input [8 -1:0] sc2mac_wt_a_src_data54;

output [8 -1:0] sc2mac_dat_a_dst_data55;
input [8 -1:0] sc2mac_dat_a_src_data55;
output [8 -1:0] sc2mac_wt_a_dst_data55;
input [8 -1:0] sc2mac_wt_a_src_data55;

output [8 -1:0] sc2mac_dat_a_dst_data56;
input [8 -1:0] sc2mac_dat_a_src_data56;
output [8 -1:0] sc2mac_wt_a_dst_data56;
input [8 -1:0] sc2mac_wt_a_src_data56;

output [8 -1:0] sc2mac_dat_a_dst_data57;
input [8 -1:0] sc2mac_dat_a_src_data57;
output [8 -1:0] sc2mac_wt_a_dst_data57;
input [8 -1:0] sc2mac_wt_a_src_data57;

output [8 -1:0] sc2mac_dat_a_dst_data58;
input [8 -1:0] sc2mac_dat_a_src_data58;
output [8 -1:0] sc2mac_wt_a_dst_data58;
input [8 -1:0] sc2mac_wt_a_src_data58;

output [8 -1:0] sc2mac_dat_a_dst_data59;
input [8 -1:0] sc2mac_dat_a_src_data59;
output [8 -1:0] sc2mac_wt_a_dst_data59;
input [8 -1:0] sc2mac_wt_a_src_data59;

output [8 -1:0] sc2mac_dat_a_dst_data60;
input [8 -1:0] sc2mac_dat_a_src_data60;
output [8 -1:0] sc2mac_wt_a_dst_data60;
input [8 -1:0] sc2mac_wt_a_src_data60;

output [8 -1:0] sc2mac_dat_a_dst_data61;
input [8 -1:0] sc2mac_dat_a_src_data61;
output [8 -1:0] sc2mac_wt_a_dst_data61;
input [8 -1:0] sc2mac_wt_a_src_data61;

output [8 -1:0] sc2mac_dat_a_dst_data62;
input [8 -1:0] sc2mac_dat_a_src_data62;
output [8 -1:0] sc2mac_wt_a_dst_data62;
input [8 -1:0] sc2mac_wt_a_src_data62;

output [8 -1:0] sc2mac_dat_a_dst_data63;
input [8 -1:0] sc2mac_dat_a_src_data63;
output [8 -1:0] sc2mac_wt_a_dst_data63;
input [8 -1:0] sc2mac_wt_a_src_data63;

//| eperl: generated_end (DO NOT EDIT ABOVE)
output sc2mac_dat_a_dst_pvld;
output [64 -1:0] sc2mac_dat_a_dst_mask;
output [8:0] sc2mac_dat_a_dst_pd;
input sc2mac_dat_a_src_pvld;
input [64 -1:0] sc2mac_dat_a_src_mask;
input [8:0] sc2mac_dat_a_src_pd;
output sc2mac_wt_a_dst_pvld;
output [64 -1:0] sc2mac_wt_a_dst_mask;
output [32/2 -1:0] sc2mac_wt_a_dst_sel;
input sc2mac_wt_a_src_pvld;
input [64 -1:0] sc2mac_wt_a_src_mask;
input [32/2 -1:0] sc2mac_wt_a_src_sel;
input sdp2csb_resp_valid; /* data valid */
input [33:0] sdp2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
input [1:0] sdp2glb_done_intr_pd;
input sdp2pdp_valid;
output sdp2pdp_ready;
input [8*16 -1:0] sdp2pdp_pd;
input sdp_rdma2csb_resp_valid; /* data valid */
input [33:0] sdp_rdma2csb_resp_pd; /* pkt_id_width=1 pkt_widths=33,33  */
input nvdla_core_clk;
input dla_reset_rstn;
output nvdla_core_rstn;
input nvdla_falcon_clk;
output nvdla_clk_ovr_on;
/////////////////////////////////////////////////////////
wire [62:0] csb2cfgrom_req_pd;
wire csb2cfgrom_req_pvld;
wire csb2cfgrom_req_prdy;
wire [33:0] cfgrom2csb_resp_pd;
wire cfgrom2csb_resp_valid;
wire [33:0] bdma2csb_resp_pd;
wire bdma2csb_resp_valid;
wire bdma2cvif_rd_cdt_lat_fifo_pop;
wire cdp2cvif_rd_cdt_lat_fifo_pop;
wire pdp2cvif_rd_cdt_lat_fifo_pop;
wire rbk2cvif_rd_cdt_lat_fifo_pop;
wire sdp2cvif_rd_cdt_lat_fifo_pop;
wire sdp_n2cvif_rd_cdt_lat_fifo_pop;
wire sdp_e2cvif_rd_cdt_lat_fifo_pop;
wire sdp_b2cvif_rd_cdt_lat_fifo_pop;
wire bdma2mcif_rd_cdt_lat_fifo_pop;
wire cdp2mcif_rd_cdt_lat_fifo_pop;
wire pdp2mcif_rd_cdt_lat_fifo_pop;
wire rbk2mcif_rd_cdt_lat_fifo_pop;
wire sdp2mcif_rd_cdt_lat_fifo_pop;
wire sdp_n2mcif_rd_cdt_lat_fifo_pop;
wire sdp_e2mcif_rd_cdt_lat_fifo_pop;
wire sdp_b2mcif_rd_cdt_lat_fifo_pop;
wire cdma_wt2cvif_rd_cdt_lat_fifo_pop;
wire cdma_wt2mcif_rd_cdt_lat_fifo_pop;
wire cdma_dat2cvif_rd_cdt_lat_fifo_pop;
wire cdma_dat2mcif_rd_cdt_lat_fifo_pop;
wire [64 +14:0] bdma2cvif_rd_req_pd;
wire bdma2cvif_rd_req_ready;
wire bdma2cvif_rd_req_valid;
wire [512 +(512/8/32):0] bdma2cvif_wr_req_pd;
wire bdma2cvif_wr_req_ready;
wire bdma2cvif_wr_req_valid;
wire [1:0] bdma2glb_done_intr_pd;
wire [64 +14:0] bdma2mcif_rd_req_pd;
wire bdma2mcif_rd_req_ready;
wire bdma2mcif_rd_req_valid;
wire [512 +(512/8/32):0] bdma2mcif_wr_req_pd;
wire bdma2mcif_wr_req_ready;
wire bdma2mcif_wr_req_valid;
wire [33:0] cdp2csb_resp_pd;
wire cdp2csb_resp_valid;
wire [64 +14:0] cdp2cvif_rd_req_pd;
wire cdp2cvif_rd_req_ready;
wire cdp2cvif_rd_req_valid;
wire [512 +(512/8/32):0] cdp2cvif_wr_req_pd;
wire cdp2cvif_wr_req_ready;
wire cdp2cvif_wr_req_valid;
wire [1:0] cdp2glb_done_intr_pd;
wire [64 +14:0] cdp2mcif_rd_req_pd;
wire cdp2mcif_rd_req_ready;
wire cdp2mcif_rd_req_valid;
wire [512 +(512/8/32):0] cdp2mcif_wr_req_pd;
wire cdp2mcif_wr_req_ready;
wire cdp2mcif_wr_req_valid;
wire [33:0] cdp_rdma2csb_resp_pd;
wire cdp_rdma2csb_resp_valid;
wire [33:0] cmac_a2csb_resp_dst_pd;
wire cmac_a2csb_resp_dst_valid;
wire [62:0] csb2bdma_req_pd;
wire csb2bdma_req_prdy;
wire csb2bdma_req_pvld;
wire [62:0] csb2cdp_rdma_req_pd;
wire csb2cdp_rdma_req_prdy;
wire csb2cdp_rdma_req_pvld;
wire [62:0] csb2cdp_req_pd;
wire csb2cdp_req_prdy;
wire csb2cdp_req_pvld;
wire [62:0] csb2cmac_a_req_src_pd;
wire csb2cmac_a_req_src_prdy;
wire csb2cmac_a_req_src_pvld;
wire [62:0] csb2cvif_req_pd;
wire csb2cvif_req_prdy;
wire csb2cvif_req_pvld;
wire [62:0] csb2glb_req_pd;
wire csb2glb_req_prdy;
wire csb2glb_req_pvld;
wire [62:0] csb2mcif_req_pd;
wire csb2mcif_req_prdy;
wire csb2mcif_req_pvld;
wire [62:0] csb2pdp_rdma_req_pd;
wire csb2pdp_rdma_req_prdy;
wire csb2pdp_rdma_req_pvld;
wire [62:0] csb2pdp_req_pd;
wire csb2pdp_req_prdy;
wire csb2pdp_req_pvld;
wire [62:0] csb2rbk_req_pd;
wire csb2rbk_req_prdy;
wire csb2rbk_req_pvld;
wire [512 +(512/8/32)-1:0] cvif2bdma_rd_rsp_pd;
wire cvif2bdma_rd_rsp_ready;
wire cvif2bdma_rd_rsp_valid;
wire cvif2bdma_wr_rsp_complete;
wire [512 +(512/8/32)-1:0] cvif2cdp_rd_rsp_pd;
wire cvif2cdp_rd_rsp_ready;
wire cvif2cdp_rd_rsp_valid;
wire cvif2cdp_wr_rsp_complete;
wire [33:0] cvif2csb_resp_pd;
wire cvif2csb_resp_valid;
wire [512 +(512/8/32)-1:0] cvif2pdp_rd_rsp_pd;
wire cvif2pdp_rd_rsp_ready;
wire cvif2pdp_rd_rsp_valid;
wire cvif2pdp_wr_rsp_complete;
wire [512 +(512/8/32)-1:0] cvif2rbk_rd_rsp_pd;
wire cvif2rbk_rd_rsp_ready;
wire cvif2rbk_rd_rsp_valid;
wire cvif2rbk_wr_rsp_complete;
wire dla_clk_ovr_on_sync;
wire [33:0] glb2csb_resp_pd;
wire glb2csb_resp_valid;
wire global_clk_ovr_on_sync;
wire [512 +(512/8/32)-1:0] mcif2bdma_rd_rsp_pd;
wire mcif2bdma_rd_rsp_ready;
wire mcif2bdma_rd_rsp_valid;
wire mcif2bdma_wr_rsp_complete;
wire [512 +(512/8/32)-1:0] mcif2cdp_rd_rsp_pd;
wire mcif2cdp_rd_rsp_ready;
wire mcif2cdp_rd_rsp_valid;
wire mcif2cdp_wr_rsp_complete;
wire [33:0] mcif2csb_resp_pd;
wire mcif2csb_resp_valid;
wire [512 +(512/8/32)-1:0] mcif2pdp_rd_rsp_pd;
wire mcif2pdp_rd_rsp_ready;
wire mcif2pdp_rd_rsp_valid;
wire mcif2pdp_wr_rsp_complete;
wire [512 +(512/8/32)-1:0] mcif2rbk_rd_rsp_pd;
wire mcif2rbk_rd_rsp_ready;
wire mcif2rbk_rd_rsp_valid;
wire mcif2rbk_wr_rsp_complete;
wire nvdla_falcon_rstn;
wire [33:0] pdp2csb_resp_pd;
wire pdp2csb_resp_valid;
wire [64 +14:0] pdp2cvif_rd_req_pd;
wire pdp2cvif_rd_req_ready;
wire pdp2cvif_rd_req_valid;
wire [512 +(512/8/32):0] pdp2cvif_wr_req_pd;
wire pdp2cvif_wr_req_ready;
wire pdp2cvif_wr_req_valid;
wire [1:0] pdp2glb_done_intr_pd;
wire [64 +14:0] pdp2mcif_rd_req_pd;
wire pdp2mcif_rd_req_ready;
wire pdp2mcif_rd_req_valid;
wire [512 +(512/8/32):0] pdp2mcif_wr_req_pd;
wire pdp2mcif_wr_req_ready;
wire pdp2mcif_wr_req_valid;
wire [33:0] pdp_rdma2csb_resp_pd;
wire pdp_rdma2csb_resp_valid;
wire [33:0] rbk2csb_resp_pd;
wire rbk2csb_resp_valid;
wire [64 +14:0] rbk2cvif_rd_req_pd;
wire rbk2cvif_rd_req_ready;
wire rbk2cvif_rd_req_valid;
wire [512 +(512/8/32):0] rbk2cvif_wr_req_pd;
wire rbk2cvif_wr_req_ready;
wire rbk2cvif_wr_req_valid;
wire [64 +14:0] rbk2mcif_rd_req_pd;
wire rbk2mcif_rd_req_ready;
wire rbk2mcif_rd_req_valid;
wire [512 +(512/8/32):0] rbk2mcif_wr_req_pd;
wire rbk2mcif_wr_req_ready;
wire rbk2mcif_wr_req_valid;
wire [1:0] rubik2glb_done_intr_pd;
//
assign nvdla_clk_ovr_on = 0;
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: Reset Syncer for nvdla_core_clk //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_core_reset u_sync_core_reset (
   .dla_reset_rstn (dla_reset_rstn)
  ,.direct_reset_ (direct_reset_)
  ,.test_mode (test_mode)
  ,.synced_rstn (nvdla_core_rstn)
  ,.core_reset_rstn (1'b1)
  ,.nvdla_clk (nvdla_core_clk)
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: Reset Syncer for nvdla_falcon_clk //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_reset u_sync_falcon_reset (
   .dla_reset_rstn (nvdla_core_rstn)
  ,.direct_reset_ (direct_reset_)
  ,.test_mode (test_mode)
  ,.synced_rstn (nvdla_falcon_rstn)
  ,.nvdla_clk (nvdla_falcon_clk)
  );
////////////////////////////////////////////////////////////////////////
// SLCG override
////////////////////////////////////////////////////////////////////////
NV_NVDLA_sync3d u_dla_clk_ovr_on_core_sync (
   .clk (nvdla_core_clk)
  ,.sync_i (nvdla_clk_ovr_on)
  ,.sync_o (dla_clk_ovr_on_sync)
  );
NV_NVDLA_sync3d_s u_global_clk_ovr_on_core_sync (
   .clk (nvdla_core_clk)
  ,.prst (nvdla_core_rstn)
  ,.sync_i (global_clk_ovr_on)
  ,.sync_o (global_clk_ovr_on_sync)
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: CFGROM //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_cfgrom u_NV_NVDLA_cfgrom(
  .nvdla_core_clk (nvdla_core_clk )
 ,.nvdla_core_rstn (nvdla_core_rstn )
 ,.csb2cfgrom_req_pd (csb2cfgrom_req_pd )
 ,.csb2cfgrom_req_pvld (csb2cfgrom_req_pvld )
 ,.csb2cfgrom_req_prdy (csb2cfgrom_req_prdy )
 ,.cfgrom2csb_resp_pd (cfgrom2csb_resp_pd )
 ,.cfgrom2csb_resp_valid (cfgrom2csb_resp_valid )
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: CSB master //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_csb_master u_NV_NVDLA_csb_master (
   .nvdla_core_clk (nvdla_core_clk)
  ,.nvdla_core_rstn (nvdla_core_rstn)
  ,.nvdla_falcon_clk (nvdla_falcon_clk)
  ,.nvdla_falcon_rstn (nvdla_falcon_rstn)
  ,.pwrbus_ram_pd (pwrbus_ram_pd)
  ,.csb2nvdla_valid (csb2nvdla_valid)
  ,.csb2nvdla_ready (csb2nvdla_ready)
  ,.csb2nvdla_addr (csb2nvdla_addr)
  ,.csb2nvdla_wdat (csb2nvdla_wdat)
  ,.csb2nvdla_write (csb2nvdla_write)
  ,.csb2nvdla_nposted (csb2nvdla_nposted)
  ,.nvdla2csb_valid (nvdla2csb_valid)
  ,.nvdla2csb_data (nvdla2csb_data)
  ,.nvdla2csb_wr_complete (nvdla2csb_wr_complete)
  ,.csb2cfgrom_req_pd (csb2cfgrom_req_pd )
  ,.csb2cfgrom_req_pvld (csb2cfgrom_req_pvld )
  ,.csb2cfgrom_req_prdy (csb2cfgrom_req_prdy )
  ,.cfgrom2csb_resp_pd (cfgrom2csb_resp_pd )
  ,.cfgrom2csb_resp_valid (cfgrom2csb_resp_valid )
  ,.csb2glb_req_pvld (csb2glb_req_pvld)
  ,.csb2glb_req_prdy (csb2glb_req_prdy)
  ,.csb2glb_req_pd (csb2glb_req_pd)
  ,.glb2csb_resp_valid (glb2csb_resp_valid)
  ,.glb2csb_resp_pd (glb2csb_resp_pd)
  ,.csb2mcif_req_pvld (csb2mcif_req_pvld)
  ,.csb2mcif_req_prdy (csb2mcif_req_prdy)
  ,.csb2mcif_req_pd (csb2mcif_req_pd)
  ,.mcif2csb_resp_valid (mcif2csb_resp_valid)
  ,.mcif2csb_resp_pd (mcif2csb_resp_pd)
  ,.csb2cvif_req_pvld (csb2cvif_req_pvld)
  ,.csb2cvif_req_prdy (csb2cvif_req_prdy)
  ,.csb2cvif_req_pd (csb2cvif_req_pd)
  ,.cvif2csb_resp_valid (cvif2csb_resp_valid)
  ,.cvif2csb_resp_pd (cvif2csb_resp_pd)
  ,.csb2bdma_req_pvld (csb2bdma_req_pvld)
  ,.csb2bdma_req_prdy (csb2bdma_req_prdy)
  ,.csb2bdma_req_pd (csb2bdma_req_pd)
  ,.bdma2csb_resp_valid (bdma2csb_resp_valid)
  ,.bdma2csb_resp_pd (bdma2csb_resp_pd)
  ,.csb2cdma_req_pvld (csb2cdma_req_pvld)
  ,.csb2cdma_req_prdy (csb2cdma_req_prdy)
  ,.csb2cdma_req_pd (csb2cdma_req_pd)
  ,.cdma2csb_resp_valid (cdma2csb_resp_valid)
  ,.cdma2csb_resp_pd (cdma2csb_resp_pd)
  ,.csb2csc_req_pvld (csb2csc_req_pvld)
  ,.csb2csc_req_prdy (csb2csc_req_prdy)
  ,.csb2csc_req_pd (csb2csc_req_pd)
  ,.csc2csb_resp_valid (csc2csb_resp_valid)
  ,.csc2csb_resp_pd (csc2csb_resp_pd)
  ,.csb2cmac_a_req_pvld (csb2cmac_a_req_src_pvld)
  ,.csb2cmac_a_req_prdy (csb2cmac_a_req_src_prdy)
  ,.csb2cmac_a_req_pd (csb2cmac_a_req_src_pd)
  ,.cmac_a2csb_resp_valid (cmac_a2csb_resp_dst_valid)
  ,.cmac_a2csb_resp_pd (cmac_a2csb_resp_dst_pd)
  ,.csb2cmac_b_req_pvld (csb2cmac_b_req_src_pvld)
  ,.csb2cmac_b_req_prdy (csb2cmac_b_req_src_prdy)
  ,.csb2cmac_b_req_pd (csb2cmac_b_req_src_pd)
  ,.cmac_b2csb_resp_valid (cmac_b2csb_resp_dst_valid)
  ,.cmac_b2csb_resp_pd (cmac_b2csb_resp_dst_pd)
  ,.csb2cacc_req_pvld (csb2cacc_req_src_pvld)
  ,.csb2cacc_req_prdy (csb2cacc_req_src_prdy)
  ,.csb2cacc_req_pd (csb2cacc_req_src_pd)
  ,.cacc2csb_resp_valid (cacc2csb_resp_dst_valid)
  ,.cacc2csb_resp_pd (cacc2csb_resp_dst_pd)
  ,.csb2sdp_rdma_req_pvld (csb2sdp_rdma_req_pvld)
  ,.csb2sdp_rdma_req_prdy (csb2sdp_rdma_req_prdy)
  ,.csb2sdp_rdma_req_pd (csb2sdp_rdma_req_pd)
  ,.sdp_rdma2csb_resp_valid (sdp_rdma2csb_resp_valid)
  ,.sdp_rdma2csb_resp_pd (sdp_rdma2csb_resp_pd)
  ,.csb2sdp_req_pvld (csb2sdp_req_pvld)
  ,.csb2sdp_req_prdy (csb2sdp_req_prdy)
  ,.csb2sdp_req_pd (csb2sdp_req_pd)
  ,.sdp2csb_resp_valid (sdp2csb_resp_valid)
  ,.sdp2csb_resp_pd (sdp2csb_resp_pd)
  ,.csb2pdp_rdma_req_pvld (csb2pdp_rdma_req_pvld)
  ,.csb2pdp_rdma_req_prdy (csb2pdp_rdma_req_prdy)
  ,.csb2pdp_rdma_req_pd (csb2pdp_rdma_req_pd)
  ,.pdp_rdma2csb_resp_valid (pdp_rdma2csb_resp_valid)
  ,.pdp_rdma2csb_resp_pd (pdp_rdma2csb_resp_pd)
  ,.csb2pdp_req_pvld (csb2pdp_req_pvld)
  ,.csb2pdp_req_prdy (csb2pdp_req_prdy)
  ,.csb2pdp_req_pd (csb2pdp_req_pd)
  ,.pdp2csb_resp_valid (pdp2csb_resp_valid)
  ,.pdp2csb_resp_pd (pdp2csb_resp_pd)
  ,.csb2cdp_rdma_req_pvld (csb2cdp_rdma_req_pvld)
  ,.csb2cdp_rdma_req_prdy (csb2cdp_rdma_req_prdy)
  ,.csb2cdp_rdma_req_pd (csb2cdp_rdma_req_pd)
  ,.cdp_rdma2csb_resp_valid (cdp_rdma2csb_resp_valid)
  ,.cdp_rdma2csb_resp_pd (cdp_rdma2csb_resp_pd)
  ,.csb2cdp_req_pvld (csb2cdp_req_pvld)
  ,.csb2cdp_req_prdy (csb2cdp_req_prdy)
  ,.csb2cdp_req_pd (csb2cdp_req_pd)
  ,.cdp2csb_resp_valid (cdp2csb_resp_valid)
  ,.cdp2csb_resp_pd (cdp2csb_resp_pd)
  ,.csb2rbk_req_pvld (csb2rbk_req_pvld)
  ,.csb2rbk_req_prdy (csb2rbk_req_prdy)
  ,.csb2rbk_req_pd (csb2rbk_req_pd)
  ,.rbk2csb_resp_valid (rbk2csb_resp_valid)
  ,.rbk2csb_resp_pd (rbk2csb_resp_pd)
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: ASYNC CROSSING INTERFACE //
////////////////////////////////////////////////////////////////////////
//&Instance NV_NVDLA_async;
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: AXI Interface to MC //
////////////////////////////////////////////////////////////////////////
//:my $i;
//:my $nindex=0;
//: my @dma_index = (1, 1, 1,1, 1,1, 1, 1, 1, 1,0,0,0,0,0,0);
//: my @dma_name = ("bdma","cdma_dat","cdma_wt","cdp","pdp","rbk","sdp","sdp_b","sdp_e","sdp_n");
//: my @lat_fifo_depth = (245,0,0,61,61,80,80,160,80,160,0,0,0,0,0,0);
//: for ($i=0;$i<16;$i++) {
//: if ($dma_index[$i]) {
//: if ($lat_fifo_depth[$i] != 0) {
//: print qq(
//: wire dma_sr_$dma_name[$i]_lat_fifo_pop = $dma_name[$i]2cvif_rd_cdt_lat_fifo_pop;
//: wire dma_dr_$dma_name[$i]_lat_fifo_pop = $dma_name[$i]2mcif_rd_cdt_lat_fifo_pop;
//: );
//: } else {
//: print qq(
//: wire dma_sr_$dma_name[$i]_lat_fifo_pop = 1'b0;
//: wire dma_dr_$dma_name[$i]_lat_fifo_pop = 1'b0;
//: );
//: }
//: $nindex++;
//: }
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire dma_sr_bdma_lat_fifo_pop = bdma2cvif_rd_cdt_lat_fifo_pop;
wire dma_dr_bdma_lat_fifo_pop = bdma2mcif_rd_cdt_lat_fifo_pop;

wire dma_sr_cdma_dat_lat_fifo_pop = 1'b0;
wire dma_dr_cdma_dat_lat_fifo_pop = 1'b0;

wire dma_sr_cdma_wt_lat_fifo_pop = 1'b0;
wire dma_dr_cdma_wt_lat_fifo_pop = 1'b0;

wire dma_sr_cdp_lat_fifo_pop = cdp2cvif_rd_cdt_lat_fifo_pop;
wire dma_dr_cdp_lat_fifo_pop = cdp2mcif_rd_cdt_lat_fifo_pop;

wire dma_sr_pdp_lat_fifo_pop = pdp2cvif_rd_cdt_lat_fifo_pop;
wire dma_dr_pdp_lat_fifo_pop = pdp2mcif_rd_cdt_lat_fifo_pop;

wire dma_sr_rbk_lat_fifo_pop = rbk2cvif_rd_cdt_lat_fifo_pop;
wire dma_dr_rbk_lat_fifo_pop = rbk2mcif_rd_cdt_lat_fifo_pop;

wire dma_sr_sdp_lat_fifo_pop = sdp2cvif_rd_cdt_lat_fifo_pop;
wire dma_dr_sdp_lat_fifo_pop = sdp2mcif_rd_cdt_lat_fifo_pop;

wire dma_sr_sdp_b_lat_fifo_pop = sdp_b2cvif_rd_cdt_lat_fifo_pop;
wire dma_dr_sdp_b_lat_fifo_pop = sdp_b2mcif_rd_cdt_lat_fifo_pop;

wire dma_sr_sdp_e_lat_fifo_pop = sdp_e2cvif_rd_cdt_lat_fifo_pop;
wire dma_dr_sdp_e_lat_fifo_pop = sdp_e2mcif_rd_cdt_lat_fifo_pop;

wire dma_sr_sdp_n_lat_fifo_pop = sdp_n2cvif_rd_cdt_lat_fifo_pop;
wire dma_dr_sdp_n_lat_fifo_pop = sdp_n2mcif_rd_cdt_lat_fifo_pop;

//| eperl: generated_end (DO NOT EDIT ABOVE)
// just for nv_small test, can be replaced by configurable design
NV_NVDLA_NOCIF_dram u_NV_NVDLA_mcif (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< o
//:my $i;
//:my $nindex=0;
//: my @dma_index = (1, 1, 1,1, 1,1, 1, 1, 1, 1,0,0,0,0,0,0);
//: my @dma_name = ("bdma","cdma_dat","cdma_wt","cdp","pdp","rbk","sdp","sdp_b","sdp_e","sdp_n");
//: my @client_id = (0, 8, 9, 3, 2, 4, 1, 5, 7, 6,0,0,0,0,0,0,0);
//: my @lat_fifo_depth = (245,0,0,61,61,80,80,160,80,160,0,0,0,0,0,0);
//: for ($i=0;$i<16;$i++) {
//: if ($dma_index[$i]) {
//: print qq(
//: ,.client${nindex}2mcif_rd_cdt_lat_fifo_pop (dma_dr_$dma_name[$i]_lat_fifo_pop) //|<w
//: ,.client${nindex}2mcif_rd_req_valid ($dma_name[$i]2mcif_rd_req_valid) //|< w
//: ,.client${nindex}2mcif_rd_req_ready ($dma_name[$i]2mcif_rd_req_ready) //|> w
//: ,.client${nindex}2mcif_rd_req_pd ($dma_name[$i]2mcif_rd_req_pd ) //|< w
//: ,.client${nindex}2mcif_lat_fifo_depth (8'd$lat_fifo_depth[$i] ) //|< w
//: ,.mcif2client${nindex}_rd_rsp_valid (mcif2$dma_name[$i]_rd_rsp_valid) //|> w
//: ,.mcif2client${nindex}_rd_rsp_ready (mcif2$dma_name[$i]_rd_rsp_ready) //|< w
//: ,.mcif2client${nindex}_rd_rsp_pd (mcif2$dma_name[$i]_rd_rsp_pd ) //|> w
//: ,.client${nindex}2mcif_rd_axid (4'd$client_id[$i] )
//:);
//:$nindex = $nindex + 1;
//:}
//:}
//:my $i;
//:my $nindex=0;
//: my @dma_index = (1, 1,1, 1,1, 0,0,0,0,0,0,0,0,0,0,0);
//: my @dma_name = ("bdma","sdp","pdp","cdp","rbk");
//: my @client_id = (0,1,2,3,4);
//: for ($i=0;$i<16;$i++) {
//: if ($dma_index[$i]) {
//: print qq(
//: ,.client${nindex}2mcif_wr_req_valid ($dma_name[$i]2mcif_wr_req_valid) //|< w
//: ,.client${nindex}2mcif_wr_req_ready ($dma_name[$i]2mcif_wr_req_ready) //|> w
//: ,.client${nindex}2mcif_wr_req_pd ($dma_name[$i]2mcif_wr_req_pd ) //|< w
//: ,.mcif2client${nindex}_wr_rsp_complete (mcif2$dma_name[$i]_wr_rsp_complete) //|> w
//: ,.client${nindex}2mcif_wr_axid (4'd$client_id[$i] )
//:);
//:$nindex = $nindex + 1;
//:}
//:}
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.client02mcif_rd_cdt_lat_fifo_pop (dma_dr_bdma_lat_fifo_pop) //|<w
,.client02mcif_rd_req_valid (bdma2mcif_rd_req_valid) //|< w
,.client02mcif_rd_req_ready (bdma2mcif_rd_req_ready) //|> w
,.client02mcif_rd_req_pd (bdma2mcif_rd_req_pd ) //|< w
,.client02mcif_lat_fifo_depth (8'd245 ) //|< w
,.mcif2client0_rd_rsp_valid (mcif2bdma_rd_rsp_valid) //|> w
,.mcif2client0_rd_rsp_ready (mcif2bdma_rd_rsp_ready) //|< w
,.mcif2client0_rd_rsp_pd (mcif2bdma_rd_rsp_pd ) //|> w
,.client02mcif_rd_axid (4'd0 )

,.client12mcif_rd_cdt_lat_fifo_pop (dma_dr_cdma_dat_lat_fifo_pop) //|<w
,.client12mcif_rd_req_valid (cdma_dat2mcif_rd_req_valid) //|< w
,.client12mcif_rd_req_ready (cdma_dat2mcif_rd_req_ready) //|> w
,.client12mcif_rd_req_pd (cdma_dat2mcif_rd_req_pd ) //|< w
,.client12mcif_lat_fifo_depth (8'd0 ) //|< w
,.mcif2client1_rd_rsp_valid (mcif2cdma_dat_rd_rsp_valid) //|> w
,.mcif2client1_rd_rsp_ready (mcif2cdma_dat_rd_rsp_ready) //|< w
,.mcif2client1_rd_rsp_pd (mcif2cdma_dat_rd_rsp_pd ) //|> w
,.client12mcif_rd_axid (4'd8 )

,.client22mcif_rd_cdt_lat_fifo_pop (dma_dr_cdma_wt_lat_fifo_pop) //|<w
,.client22mcif_rd_req_valid (cdma_wt2mcif_rd_req_valid) //|< w
,.client22mcif_rd_req_ready (cdma_wt2mcif_rd_req_ready) //|> w
,.client22mcif_rd_req_pd (cdma_wt2mcif_rd_req_pd ) //|< w
,.client22mcif_lat_fifo_depth (8'd0 ) //|< w
,.mcif2client2_rd_rsp_valid (mcif2cdma_wt_rd_rsp_valid) //|> w
,.mcif2client2_rd_rsp_ready (mcif2cdma_wt_rd_rsp_ready) //|< w
,.mcif2client2_rd_rsp_pd (mcif2cdma_wt_rd_rsp_pd ) //|> w
,.client22mcif_rd_axid (4'd9 )

,.client32mcif_rd_cdt_lat_fifo_pop (dma_dr_cdp_lat_fifo_pop) //|<w
,.client32mcif_rd_req_valid (cdp2mcif_rd_req_valid) //|< w
,.client32mcif_rd_req_ready (cdp2mcif_rd_req_ready) //|> w
,.client32mcif_rd_req_pd (cdp2mcif_rd_req_pd ) //|< w
,.client32mcif_lat_fifo_depth (8'd61 ) //|< w
,.mcif2client3_rd_rsp_valid (mcif2cdp_rd_rsp_valid) //|> w
,.mcif2client3_rd_rsp_ready (mcif2cdp_rd_rsp_ready) //|< w
,.mcif2client3_rd_rsp_pd (mcif2cdp_rd_rsp_pd ) //|> w
,.client32mcif_rd_axid (4'd3 )

,.client42mcif_rd_cdt_lat_fifo_pop (dma_dr_pdp_lat_fifo_pop) //|<w
,.client42mcif_rd_req_valid (pdp2mcif_rd_req_valid) //|< w
,.client42mcif_rd_req_ready (pdp2mcif_rd_req_ready) //|> w
,.client42mcif_rd_req_pd (pdp2mcif_rd_req_pd ) //|< w
,.client42mcif_lat_fifo_depth (8'd61 ) //|< w
,.mcif2client4_rd_rsp_valid (mcif2pdp_rd_rsp_valid) //|> w
,.mcif2client4_rd_rsp_ready (mcif2pdp_rd_rsp_ready) //|< w
,.mcif2client4_rd_rsp_pd (mcif2pdp_rd_rsp_pd ) //|> w
,.client42mcif_rd_axid (4'd2 )

,.client52mcif_rd_cdt_lat_fifo_pop (dma_dr_rbk_lat_fifo_pop) //|<w
,.client52mcif_rd_req_valid (rbk2mcif_rd_req_valid) //|< w
,.client52mcif_rd_req_ready (rbk2mcif_rd_req_ready) //|> w
,.client52mcif_rd_req_pd (rbk2mcif_rd_req_pd ) //|< w
,.client52mcif_lat_fifo_depth (8'd80 ) //|< w
,.mcif2client5_rd_rsp_valid (mcif2rbk_rd_rsp_valid) //|> w
,.mcif2client5_rd_rsp_ready (mcif2rbk_rd_rsp_ready) //|< w
,.mcif2client5_rd_rsp_pd (mcif2rbk_rd_rsp_pd ) //|> w
,.client52mcif_rd_axid (4'd4 )

,.client62mcif_rd_cdt_lat_fifo_pop (dma_dr_sdp_lat_fifo_pop) //|<w
,.client62mcif_rd_req_valid (sdp2mcif_rd_req_valid) //|< w
,.client62mcif_rd_req_ready (sdp2mcif_rd_req_ready) //|> w
,.client62mcif_rd_req_pd (sdp2mcif_rd_req_pd ) //|< w
,.client62mcif_lat_fifo_depth (8'd80 ) //|< w
,.mcif2client6_rd_rsp_valid (mcif2sdp_rd_rsp_valid) //|> w
,.mcif2client6_rd_rsp_ready (mcif2sdp_rd_rsp_ready) //|< w
,.mcif2client6_rd_rsp_pd (mcif2sdp_rd_rsp_pd ) //|> w
,.client62mcif_rd_axid (4'd1 )

,.client72mcif_rd_cdt_lat_fifo_pop (dma_dr_sdp_b_lat_fifo_pop) //|<w
,.client72mcif_rd_req_valid (sdp_b2mcif_rd_req_valid) //|< w
,.client72mcif_rd_req_ready (sdp_b2mcif_rd_req_ready) //|> w
,.client72mcif_rd_req_pd (sdp_b2mcif_rd_req_pd ) //|< w
,.client72mcif_lat_fifo_depth (8'd160 ) //|< w
,.mcif2client7_rd_rsp_valid (mcif2sdp_b_rd_rsp_valid) //|> w
,.mcif2client7_rd_rsp_ready (mcif2sdp_b_rd_rsp_ready) //|< w
,.mcif2client7_rd_rsp_pd (mcif2sdp_b_rd_rsp_pd ) //|> w
,.client72mcif_rd_axid (4'd5 )

,.client82mcif_rd_cdt_lat_fifo_pop (dma_dr_sdp_e_lat_fifo_pop) //|<w
,.client82mcif_rd_req_valid (sdp_e2mcif_rd_req_valid) //|< w
,.client82mcif_rd_req_ready (sdp_e2mcif_rd_req_ready) //|> w
,.client82mcif_rd_req_pd (sdp_e2mcif_rd_req_pd ) //|< w
,.client82mcif_lat_fifo_depth (8'd80 ) //|< w
,.mcif2client8_rd_rsp_valid (mcif2sdp_e_rd_rsp_valid) //|> w
,.mcif2client8_rd_rsp_ready (mcif2sdp_e_rd_rsp_ready) //|< w
,.mcif2client8_rd_rsp_pd (mcif2sdp_e_rd_rsp_pd ) //|> w
,.client82mcif_rd_axid (4'd7 )

,.client92mcif_rd_cdt_lat_fifo_pop (dma_dr_sdp_n_lat_fifo_pop) //|<w
,.client92mcif_rd_req_valid (sdp_n2mcif_rd_req_valid) //|< w
,.client92mcif_rd_req_ready (sdp_n2mcif_rd_req_ready) //|> w
,.client92mcif_rd_req_pd (sdp_n2mcif_rd_req_pd ) //|< w
,.client92mcif_lat_fifo_depth (8'd160 ) //|< w
,.mcif2client9_rd_rsp_valid (mcif2sdp_n_rd_rsp_valid) //|> w
,.mcif2client9_rd_rsp_ready (mcif2sdp_n_rd_rsp_ready) //|< w
,.mcif2client9_rd_rsp_pd (mcif2sdp_n_rd_rsp_pd ) //|> w
,.client92mcif_rd_axid (4'd6 )

,.client02mcif_wr_req_valid (bdma2mcif_wr_req_valid) //|< w
,.client02mcif_wr_req_ready (bdma2mcif_wr_req_ready) //|> w
,.client02mcif_wr_req_pd (bdma2mcif_wr_req_pd ) //|< w
,.mcif2client0_wr_rsp_complete (mcif2bdma_wr_rsp_complete) //|> w
,.client02mcif_wr_axid (4'd0 )

,.client12mcif_wr_req_valid (sdp2mcif_wr_req_valid) //|< w
,.client12mcif_wr_req_ready (sdp2mcif_wr_req_ready) //|> w
,.client12mcif_wr_req_pd (sdp2mcif_wr_req_pd ) //|< w
,.mcif2client1_wr_rsp_complete (mcif2sdp_wr_rsp_complete) //|> w
,.client12mcif_wr_axid (4'd1 )

,.client22mcif_wr_req_valid (pdp2mcif_wr_req_valid) //|< w
,.client22mcif_wr_req_ready (pdp2mcif_wr_req_ready) //|> w
,.client22mcif_wr_req_pd (pdp2mcif_wr_req_pd ) //|< w
,.mcif2client2_wr_rsp_complete (mcif2pdp_wr_rsp_complete) //|> w
,.client22mcif_wr_axid (4'd2 )

,.client32mcif_wr_req_valid (cdp2mcif_wr_req_valid) //|< w
,.client32mcif_wr_req_ready (cdp2mcif_wr_req_ready) //|> w
,.client32mcif_wr_req_pd (cdp2mcif_wr_req_pd ) //|< w
,.mcif2client3_wr_rsp_complete (mcif2cdp_wr_rsp_complete) //|> w
,.client32mcif_wr_axid (4'd3 )

,.client42mcif_wr_req_valid (rbk2mcif_wr_req_valid) //|< w
,.client42mcif_wr_req_ready (rbk2mcif_wr_req_ready) //|> w
,.client42mcif_wr_req_pd (rbk2mcif_wr_req_pd ) //|< w
,.mcif2client4_wr_rsp_complete (mcif2rbk_wr_rsp_complete) //|> w
,.client42mcif_wr_axid (4'd4 )

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.csb2mcif_req_pvld (csb2mcif_req_pvld) //|< w
  ,.csb2mcif_req_prdy (csb2mcif_req_prdy) //|> w
  ,.csb2mcif_req_pd (csb2mcif_req_pd[62:0]) //|< w
  ,.mcif2csb_resp_valid (mcif2csb_resp_valid) //|> w
  ,.mcif2csb_resp_pd (mcif2csb_resp_pd[33:0]) //|> w
  ,.mcif2noc_axi_ar_arvalid (mcif2noc_axi_ar_arvalid) //|> o
  ,.mcif2noc_axi_ar_arready (mcif2noc_axi_ar_arready) //|< i
  ,.mcif2noc_axi_ar_arid (mcif2noc_axi_ar_arid[7:0]) //|> o
  ,.mcif2noc_axi_ar_arlen (mcif2noc_axi_ar_arlen[3:0]) //|> o
  ,.mcif2noc_axi_ar_araddr (mcif2noc_axi_ar_araddr ) //|> o
  ,.mcif2noc_axi_aw_awvalid (mcif2noc_axi_aw_awvalid) //|> o
  ,.mcif2noc_axi_aw_awready (mcif2noc_axi_aw_awready) //|< i
  ,.mcif2noc_axi_aw_awid (mcif2noc_axi_aw_awid[7:0]) //|> o
  ,.mcif2noc_axi_aw_awlen (mcif2noc_axi_aw_awlen[3:0]) //|> o
  ,.mcif2noc_axi_aw_awaddr (mcif2noc_axi_aw_awaddr ) //|> o
  ,.mcif2noc_axi_w_wvalid (mcif2noc_axi_w_wvalid) //|> o
  ,.mcif2noc_axi_w_wready (mcif2noc_axi_w_wready) //|< i
  ,.mcif2noc_axi_w_wdata (mcif2noc_axi_w_wdata ) //|> o
  ,.mcif2noc_axi_w_wstrb (mcif2noc_axi_w_wstrb ) //|> o
  ,.mcif2noc_axi_w_wlast (mcif2noc_axi_w_wlast) //|> o
  ,.noc2mcif_axi_b_bvalid (noc2mcif_axi_b_bvalid) //|< i
  ,.noc2mcif_axi_b_bready (noc2mcif_axi_b_bready) //|> o
  ,.noc2mcif_axi_b_bid (noc2mcif_axi_b_bid[7:0]) //|< i
  ,.noc2mcif_axi_r_rvalid (noc2mcif_axi_r_rvalid) //|< i
  ,.noc2mcif_axi_r_rready (noc2mcif_axi_r_rready) //|> o
  ,.noc2mcif_axi_r_rid (noc2mcif_axi_r_rid[7:0]) //|< i
  ,.noc2mcif_axi_r_rlast (noc2mcif_axi_r_rlast) //|< i
  ,.noc2mcif_axi_r_rdata (noc2mcif_axi_r_rdata ) //|< i
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: AXI Interface to CVSRAM //
////////////////////////////////////////////////////////////////////////
//
//
//
NV_NVDLA_NOCIF_sram u_NV_NVDLA_cvif (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< o
//:my $i;
//:my $nindex=0;
//: my @dma_index = (1, 1, 1,1, 1,1, 1, 1, 1, 1,0,0,0,0,0,0);
//: my @dma_name = ("bdma","cdma_dat","cdma_wt","cdp","pdp","rbk","sdp","sdp_b","sdp_e","sdp_n");
//: my @client_id = (0, 8, 9, 3, 2, 4, 1, 5, 7, 6,0,0,0,0,0,0,0);
//: my @client_id = (0,8,9,3,2,4,1,5,7,6,0,0,0,0,0,0,0);
//: my @lat_fifo_depth = (245,0,0,61,61,80,80,160,80,160,0,0,0,0,0,0);
//: for ($i=0;$i<16;$i++) {
//: if ($dma_index[$i]) {
//: print qq(
//: ,.client${nindex}2cvif_rd_cdt_lat_fifo_pop (dma_sr_$dma_name[$i]_lat_fifo_pop) //|< w
//: ,.client${nindex}2cvif_rd_req_valid ($dma_name[$i]2cvif_rd_req_valid) //|< w
//: ,.client${nindex}2cvif_rd_req_ready ($dma_name[$i]2cvif_rd_req_ready) //|> w
//: ,.client${nindex}2cvif_rd_req_pd ($dma_name[$i]2cvif_rd_req_pd ) //|< w
//: ,.client${nindex}2cvif_lat_fifo_depth (8'd$lat_fifo_depth[$i] ) //|< w
//: ,.cvif2client${nindex}_rd_rsp_valid (cvif2$dma_name[$i]_rd_rsp_valid) //|> w
//: ,.cvif2client${nindex}_rd_rsp_ready (cvif2$dma_name[$i]_rd_rsp_ready) //|< w
//: ,.cvif2client${nindex}_rd_rsp_pd (cvif2$dma_name[$i]_rd_rsp_pd ) //|> w
//: ,.client${nindex}2cvif_rd_axid (4'd$client_id[$i] )
//:);
//:$nindex = $nindex + 1;
//:}
//:}
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.client02cvif_rd_cdt_lat_fifo_pop (dma_sr_bdma_lat_fifo_pop) //|< w
,.client02cvif_rd_req_valid (bdma2cvif_rd_req_valid) //|< w
,.client02cvif_rd_req_ready (bdma2cvif_rd_req_ready) //|> w
,.client02cvif_rd_req_pd (bdma2cvif_rd_req_pd ) //|< w
,.client02cvif_lat_fifo_depth (8'd245 ) //|< w
,.cvif2client0_rd_rsp_valid (cvif2bdma_rd_rsp_valid) //|> w
,.cvif2client0_rd_rsp_ready (cvif2bdma_rd_rsp_ready) //|< w
,.cvif2client0_rd_rsp_pd (cvif2bdma_rd_rsp_pd ) //|> w
,.client02cvif_rd_axid (4'd0 )

,.client12cvif_rd_cdt_lat_fifo_pop (dma_sr_cdma_dat_lat_fifo_pop) //|< w
,.client12cvif_rd_req_valid (cdma_dat2cvif_rd_req_valid) //|< w
,.client12cvif_rd_req_ready (cdma_dat2cvif_rd_req_ready) //|> w
,.client12cvif_rd_req_pd (cdma_dat2cvif_rd_req_pd ) //|< w
,.client12cvif_lat_fifo_depth (8'd0 ) //|< w
,.cvif2client1_rd_rsp_valid (cvif2cdma_dat_rd_rsp_valid) //|> w
,.cvif2client1_rd_rsp_ready (cvif2cdma_dat_rd_rsp_ready) //|< w
,.cvif2client1_rd_rsp_pd (cvif2cdma_dat_rd_rsp_pd ) //|> w
,.client12cvif_rd_axid (4'd8 )

,.client22cvif_rd_cdt_lat_fifo_pop (dma_sr_cdma_wt_lat_fifo_pop) //|< w
,.client22cvif_rd_req_valid (cdma_wt2cvif_rd_req_valid) //|< w
,.client22cvif_rd_req_ready (cdma_wt2cvif_rd_req_ready) //|> w
,.client22cvif_rd_req_pd (cdma_wt2cvif_rd_req_pd ) //|< w
,.client22cvif_lat_fifo_depth (8'd0 ) //|< w
,.cvif2client2_rd_rsp_valid (cvif2cdma_wt_rd_rsp_valid) //|> w
,.cvif2client2_rd_rsp_ready (cvif2cdma_wt_rd_rsp_ready) //|< w
,.cvif2client2_rd_rsp_pd (cvif2cdma_wt_rd_rsp_pd ) //|> w
,.client22cvif_rd_axid (4'd9 )

,.client32cvif_rd_cdt_lat_fifo_pop (dma_sr_cdp_lat_fifo_pop) //|< w
,.client32cvif_rd_req_valid (cdp2cvif_rd_req_valid) //|< w
,.client32cvif_rd_req_ready (cdp2cvif_rd_req_ready) //|> w
,.client32cvif_rd_req_pd (cdp2cvif_rd_req_pd ) //|< w
,.client32cvif_lat_fifo_depth (8'd61 ) //|< w
,.cvif2client3_rd_rsp_valid (cvif2cdp_rd_rsp_valid) //|> w
,.cvif2client3_rd_rsp_ready (cvif2cdp_rd_rsp_ready) //|< w
,.cvif2client3_rd_rsp_pd (cvif2cdp_rd_rsp_pd ) //|> w
,.client32cvif_rd_axid (4'd3 )

,.client42cvif_rd_cdt_lat_fifo_pop (dma_sr_pdp_lat_fifo_pop) //|< w
,.client42cvif_rd_req_valid (pdp2cvif_rd_req_valid) //|< w
,.client42cvif_rd_req_ready (pdp2cvif_rd_req_ready) //|> w
,.client42cvif_rd_req_pd (pdp2cvif_rd_req_pd ) //|< w
,.client42cvif_lat_fifo_depth (8'd61 ) //|< w
,.cvif2client4_rd_rsp_valid (cvif2pdp_rd_rsp_valid) //|> w
,.cvif2client4_rd_rsp_ready (cvif2pdp_rd_rsp_ready) //|< w
,.cvif2client4_rd_rsp_pd (cvif2pdp_rd_rsp_pd ) //|> w
,.client42cvif_rd_axid (4'd2 )

,.client52cvif_rd_cdt_lat_fifo_pop (dma_sr_rbk_lat_fifo_pop) //|< w
,.client52cvif_rd_req_valid (rbk2cvif_rd_req_valid) //|< w
,.client52cvif_rd_req_ready (rbk2cvif_rd_req_ready) //|> w
,.client52cvif_rd_req_pd (rbk2cvif_rd_req_pd ) //|< w
,.client52cvif_lat_fifo_depth (8'd80 ) //|< w
,.cvif2client5_rd_rsp_valid (cvif2rbk_rd_rsp_valid) //|> w
,.cvif2client5_rd_rsp_ready (cvif2rbk_rd_rsp_ready) //|< w
,.cvif2client5_rd_rsp_pd (cvif2rbk_rd_rsp_pd ) //|> w
,.client52cvif_rd_axid (4'd4 )

,.client62cvif_rd_cdt_lat_fifo_pop (dma_sr_sdp_lat_fifo_pop) //|< w
,.client62cvif_rd_req_valid (sdp2cvif_rd_req_valid) //|< w
,.client62cvif_rd_req_ready (sdp2cvif_rd_req_ready) //|> w
,.client62cvif_rd_req_pd (sdp2cvif_rd_req_pd ) //|< w
,.client62cvif_lat_fifo_depth (8'd80 ) //|< w
,.cvif2client6_rd_rsp_valid (cvif2sdp_rd_rsp_valid) //|> w
,.cvif2client6_rd_rsp_ready (cvif2sdp_rd_rsp_ready) //|< w
,.cvif2client6_rd_rsp_pd (cvif2sdp_rd_rsp_pd ) //|> w
,.client62cvif_rd_axid (4'd1 )

,.client72cvif_rd_cdt_lat_fifo_pop (dma_sr_sdp_b_lat_fifo_pop) //|< w
,.client72cvif_rd_req_valid (sdp_b2cvif_rd_req_valid) //|< w
,.client72cvif_rd_req_ready (sdp_b2cvif_rd_req_ready) //|> w
,.client72cvif_rd_req_pd (sdp_b2cvif_rd_req_pd ) //|< w
,.client72cvif_lat_fifo_depth (8'd160 ) //|< w
,.cvif2client7_rd_rsp_valid (cvif2sdp_b_rd_rsp_valid) //|> w
,.cvif2client7_rd_rsp_ready (cvif2sdp_b_rd_rsp_ready) //|< w
,.cvif2client7_rd_rsp_pd (cvif2sdp_b_rd_rsp_pd ) //|> w
,.client72cvif_rd_axid (4'd5 )

,.client82cvif_rd_cdt_lat_fifo_pop (dma_sr_sdp_e_lat_fifo_pop) //|< w
,.client82cvif_rd_req_valid (sdp_e2cvif_rd_req_valid) //|< w
,.client82cvif_rd_req_ready (sdp_e2cvif_rd_req_ready) //|> w
,.client82cvif_rd_req_pd (sdp_e2cvif_rd_req_pd ) //|< w
,.client82cvif_lat_fifo_depth (8'd80 ) //|< w
,.cvif2client8_rd_rsp_valid (cvif2sdp_e_rd_rsp_valid) //|> w
,.cvif2client8_rd_rsp_ready (cvif2sdp_e_rd_rsp_ready) //|< w
,.cvif2client8_rd_rsp_pd (cvif2sdp_e_rd_rsp_pd ) //|> w
,.client82cvif_rd_axid (4'd7 )

,.client92cvif_rd_cdt_lat_fifo_pop (dma_sr_sdp_n_lat_fifo_pop) //|< w
,.client92cvif_rd_req_valid (sdp_n2cvif_rd_req_valid) //|< w
,.client92cvif_rd_req_ready (sdp_n2cvif_rd_req_ready) //|> w
,.client92cvif_rd_req_pd (sdp_n2cvif_rd_req_pd ) //|< w
,.client92cvif_lat_fifo_depth (8'd160 ) //|< w
,.cvif2client9_rd_rsp_valid (cvif2sdp_n_rd_rsp_valid) //|> w
,.cvif2client9_rd_rsp_ready (cvif2sdp_n_rd_rsp_ready) //|< w
,.cvif2client9_rd_rsp_pd (cvif2sdp_n_rd_rsp_pd ) //|> w
,.client92cvif_rd_axid (4'd6 )

//| eperl: generated_end (DO NOT EDIT ABOVE)
//
//:my $i;
//:my $nindex=0;
//: my @dma_index = (1, 1,1,1,1,0,0,0,0,0,0,0,0,0,0,0);
//: my @dma_name = ("bdma","sdp","pdp","cdp","rbk");
//: my @client_id = (0,1,2,3,4);
//: for ($i=0;$i<16;$i++) {
//: if ($dma_index[$i]) {
//: print qq(
//: ,.client${nindex}2cvif_wr_req_valid ($dma_name[$i]2cvif_wr_req_valid) //|< w
//: ,.client${nindex}2cvif_wr_req_ready ($dma_name[$i]2cvif_wr_req_ready) //|> w
//: ,.client${nindex}2cvif_wr_req_pd ($dma_name[$i]2cvif_wr_req_pd ) //|< w
//: ,.cvif2client${nindex}_wr_rsp_complete (cvif2$dma_name[$i]_wr_rsp_complete) //|> w
//: ,.client${nindex}2cvif_wr_axid (4'd$client_id[$i] )
//:);
//:$nindex = $nindex + 1;
//:}
//:}
//| eperl: generated_beg (DO NOT EDIT BELOW)

,.client02cvif_wr_req_valid (bdma2cvif_wr_req_valid) //|< w
,.client02cvif_wr_req_ready (bdma2cvif_wr_req_ready) //|> w
,.client02cvif_wr_req_pd (bdma2cvif_wr_req_pd ) //|< w
,.cvif2client0_wr_rsp_complete (cvif2bdma_wr_rsp_complete) //|> w
,.client02cvif_wr_axid (4'd0 )

,.client12cvif_wr_req_valid (sdp2cvif_wr_req_valid) //|< w
,.client12cvif_wr_req_ready (sdp2cvif_wr_req_ready) //|> w
,.client12cvif_wr_req_pd (sdp2cvif_wr_req_pd ) //|< w
,.cvif2client1_wr_rsp_complete (cvif2sdp_wr_rsp_complete) //|> w
,.client12cvif_wr_axid (4'd1 )

,.client22cvif_wr_req_valid (pdp2cvif_wr_req_valid) //|< w
,.client22cvif_wr_req_ready (pdp2cvif_wr_req_ready) //|> w
,.client22cvif_wr_req_pd (pdp2cvif_wr_req_pd ) //|< w
,.cvif2client2_wr_rsp_complete (cvif2pdp_wr_rsp_complete) //|> w
,.client22cvif_wr_axid (4'd2 )

,.client32cvif_wr_req_valid (cdp2cvif_wr_req_valid) //|< w
,.client32cvif_wr_req_ready (cdp2cvif_wr_req_ready) //|> w
,.client32cvif_wr_req_pd (cdp2cvif_wr_req_pd ) //|< w
,.cvif2client3_wr_rsp_complete (cvif2cdp_wr_rsp_complete) //|> w
,.client32cvif_wr_axid (4'd3 )

,.client42cvif_wr_req_valid (rbk2cvif_wr_req_valid) //|< w
,.client42cvif_wr_req_ready (rbk2cvif_wr_req_ready) //|> w
,.client42cvif_wr_req_pd (rbk2cvif_wr_req_pd ) //|< w
,.cvif2client4_wr_rsp_complete (cvif2rbk_wr_rsp_complete) //|> w
,.client42cvif_wr_axid (4'd4 )

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.csb2cvif_req_pvld (csb2cvif_req_pvld) //|< w
  ,.csb2cvif_req_prdy (csb2cvif_req_prdy) //|> w
  ,.csb2cvif_req_pd (csb2cvif_req_pd[62:0]) //|< w
  ,.cvif2csb_resp_valid (cvif2csb_resp_valid) //|> w
  ,.cvif2csb_resp_pd (cvif2csb_resp_pd[33:0]) //|> w
  ,.cvif2noc_axi_ar_arvalid (cvif2noc_axi_ar_arvalid) //|> o
  ,.cvif2noc_axi_ar_arready (cvif2noc_axi_ar_arready) //|< i
  ,.cvif2noc_axi_ar_arid (cvif2noc_axi_ar_arid[7:0]) //|> o
  ,.cvif2noc_axi_ar_arlen (cvif2noc_axi_ar_arlen[3:0]) //|> o
  ,.cvif2noc_axi_ar_araddr (cvif2noc_axi_ar_araddr ) //|> o
  ,.cvif2noc_axi_aw_awvalid (cvif2noc_axi_aw_awvalid) //|> o
  ,.cvif2noc_axi_aw_awready (cvif2noc_axi_aw_awready) //|< i
  ,.cvif2noc_axi_aw_awid (cvif2noc_axi_aw_awid[7:0]) //|> o
  ,.cvif2noc_axi_aw_awlen (cvif2noc_axi_aw_awlen[3:0]) //|> o
  ,.cvif2noc_axi_aw_awaddr (cvif2noc_axi_aw_awaddr ) //|> o
  ,.cvif2noc_axi_w_wvalid (cvif2noc_axi_w_wvalid) //|> o
  ,.cvif2noc_axi_w_wready (cvif2noc_axi_w_wready) //|< i
  ,.cvif2noc_axi_w_wdata (cvif2noc_axi_w_wdata ) //|> o
  ,.cvif2noc_axi_w_wstrb (cvif2noc_axi_w_wstrb ) //|> o
  ,.cvif2noc_axi_w_wlast (cvif2noc_axi_w_wlast) //|> o
  ,.noc2cvif_axi_b_bvalid (noc2cvif_axi_b_bvalid) //|< i
  ,.noc2cvif_axi_b_bready (noc2cvif_axi_b_bready) //|> o
  ,.noc2cvif_axi_b_bid (noc2cvif_axi_b_bid[7:0]) //|< i
  ,.noc2cvif_axi_r_rvalid (noc2cvif_axi_r_rvalid) //|< i
  ,.noc2cvif_axi_r_rready (noc2cvif_axi_r_rready) //|> o
  ,.noc2cvif_axi_r_rid (noc2cvif_axi_r_rid[7:0]) //|< i
  ,.noc2cvif_axi_r_rlast (noc2cvif_axi_r_rlast) //|< i
  ,.noc2cvif_axi_r_rdata (noc2cvif_axi_r_rdata) //|< i
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  );
//&Connect s/sdp2(mc|cv)if_rd_(req|cdt)/sdp2${1}if_rd_${2}_dst/;
//&Connect s/(mc|cv)if2sdp_rd_(rsp)/${1}if2sdp_rd_${2}_src/;
//&Connect s/sdp_b2(mc|cv)if_rd_(req|cdt)/sdp_b2${1}if_rd_${2}_dst/;
//&Connect s/(mc|cv)if2sdp_b_rd_(rsp)/${1}if2sdp_b_rd_${2}_src/;
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: Bridge DMA //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_bdma u_NV_NVDLA_bdma (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< o
  ,.bdma2csb_resp_valid (bdma2csb_resp_valid) //|> w
  ,.bdma2csb_resp_pd (bdma2csb_resp_pd[33:0]) //|> w
  ,.bdma2cvif_rd_cdt_lat_fifo_pop (bdma2cvif_rd_cdt_lat_fifo_pop) //|> w
  ,.bdma2cvif_rd_req_valid (bdma2cvif_rd_req_valid) //|> w
  ,.bdma2cvif_rd_req_ready (bdma2cvif_rd_req_ready) //|< w
  ,.bdma2cvif_rd_req_pd (bdma2cvif_rd_req_pd ) //|> w
  ,.bdma2cvif_wr_req_valid (bdma2cvif_wr_req_valid) //|> w
  ,.bdma2cvif_wr_req_ready (bdma2cvif_wr_req_ready) //|< w
  ,.bdma2cvif_wr_req_pd (bdma2cvif_wr_req_pd ) //|> w
  ,.bdma2glb_done_intr_pd (bdma2glb_done_intr_pd[1:0]) //|> w
  ,.bdma2mcif_rd_cdt_lat_fifo_pop (bdma2mcif_rd_cdt_lat_fifo_pop) //|> w
  ,.bdma2mcif_rd_req_valid (bdma2mcif_rd_req_valid) //|> w
  ,.bdma2mcif_rd_req_ready (bdma2mcif_rd_req_ready) //|< w
  ,.bdma2mcif_rd_req_pd (bdma2mcif_rd_req_pd ) //|> w
  ,.bdma2mcif_wr_req_valid (bdma2mcif_wr_req_valid) //|> w
  ,.bdma2mcif_wr_req_ready (bdma2mcif_wr_req_ready) //|< w
  ,.bdma2mcif_wr_req_pd (bdma2mcif_wr_req_pd ) //|> w
  ,.csb2bdma_req_pvld (csb2bdma_req_pvld) //|< w
  ,.csb2bdma_req_prdy (csb2bdma_req_prdy) //|> w
  ,.csb2bdma_req_pd (csb2bdma_req_pd[62:0]) //|< w
  ,.cvif2bdma_rd_rsp_valid (cvif2bdma_rd_rsp_valid) //|< w
  ,.cvif2bdma_rd_rsp_ready (cvif2bdma_rd_rsp_ready) //|> w
  ,.cvif2bdma_rd_rsp_pd (cvif2bdma_rd_rsp_pd ) //|< w
  ,.cvif2bdma_wr_rsp_complete (cvif2bdma_wr_rsp_complete) //|< w
  ,.mcif2bdma_rd_rsp_valid (mcif2bdma_rd_rsp_valid) //|< w
  ,.mcif2bdma_rd_rsp_ready (mcif2bdma_rd_rsp_ready) //|> w
  ,.mcif2bdma_rd_rsp_pd (mcif2bdma_rd_rsp_pd ) //|< w
  ,.mcif2bdma_wr_rsp_complete (mcif2bdma_wr_rsp_complete) //|< w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  ,.dla_clk_ovr_on_sync (dla_clk_ovr_on_sync) //|< w
  ,.global_clk_ovr_on_sync (global_clk_ovr_on_sync) //|< w
  ,.tmc2slcg_disable_clock_gating (tmc2slcg_disable_clock_gating) //|< i
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: Rubik engine //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_rubik u_NV_NVDLA_rubik (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< o
  ,.csb2rbk_req_pvld (csb2rbk_req_pvld) //|< w
  ,.csb2rbk_req_prdy (csb2rbk_req_prdy) //|> w
  ,.csb2rbk_req_pd (csb2rbk_req_pd[62:0]) //|< w
  ,.rbk2csb_resp_valid (rbk2csb_resp_valid) //|> w
  ,.rbk2csb_resp_pd (rbk2csb_resp_pd[33:0]) //|> w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  ,.rbk2mcif_rd_req_valid (rbk2mcif_rd_req_valid) //|> w
  ,.rbk2mcif_rd_req_ready (rbk2mcif_rd_req_ready) //|< w
  ,.rbk2mcif_rd_req_pd (rbk2mcif_rd_req_pd ) //|> w
  ,.rbk2cvif_rd_req_valid (rbk2cvif_rd_req_valid) //|> w
  ,.rbk2cvif_rd_req_ready (rbk2cvif_rd_req_ready) //|< w
  ,.rbk2cvif_rd_req_pd (rbk2cvif_rd_req_pd ) //|> w
  ,.mcif2rbk_rd_rsp_valid (mcif2rbk_rd_rsp_valid) //|< w
  ,.mcif2rbk_rd_rsp_ready (mcif2rbk_rd_rsp_ready) //|> w
  ,.mcif2rbk_rd_rsp_pd (mcif2rbk_rd_rsp_pd ) //|< w
  ,.cvif2rbk_rd_rsp_valid (cvif2rbk_rd_rsp_valid) //|< w
  ,.cvif2rbk_rd_rsp_ready (cvif2rbk_rd_rsp_ready) //|> w
  ,.cvif2rbk_rd_rsp_pd (cvif2rbk_rd_rsp_pd ) //|< w
  ,.rbk2mcif_wr_req_valid (rbk2mcif_wr_req_valid) //|> w
  ,.rbk2mcif_wr_req_ready (rbk2mcif_wr_req_ready) //|< w
  ,.rbk2mcif_wr_req_pd (rbk2mcif_wr_req_pd ) //|> w
  ,.mcif2rbk_wr_rsp_complete (mcif2rbk_wr_rsp_complete) //|< w
  ,.rbk2cvif_wr_req_valid (rbk2cvif_wr_req_valid) //|> w
  ,.rbk2cvif_wr_req_ready (rbk2cvif_wr_req_ready) //|< w
  ,.rbk2cvif_wr_req_pd (rbk2cvif_wr_req_pd ) //|> w
  ,.cvif2rbk_wr_rsp_complete (cvif2rbk_wr_rsp_complete) //|< w
  ,.rbk2cvif_rd_cdt_lat_fifo_pop (rbk2cvif_rd_cdt_lat_fifo_pop) //|> w
  ,.rbk2mcif_rd_cdt_lat_fifo_pop (rbk2mcif_rd_cdt_lat_fifo_pop) //|> w
  ,.rubik2glb_done_intr_pd (rubik2glb_done_intr_pd[1:0]) //|> w
  ,.dla_clk_ovr_on_sync (dla_clk_ovr_on_sync) //|< w
  ,.global_clk_ovr_on_sync (global_clk_ovr_on_sync) //|< w
  ,.tmc2slcg_disable_clock_gating (tmc2slcg_disable_clock_gating) //|< i
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: Cross-Channel Data Processor //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_cdp u_NV_NVDLA_cdp (
   .dla_clk_ovr_on_sync (dla_clk_ovr_on_sync) //|< w
  ,.global_clk_ovr_on_sync (global_clk_ovr_on_sync) //|< w
  ,.tmc2slcg_disable_clock_gating (tmc2slcg_disable_clock_gating) //|< i
  ,.nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< o
  ,.cdp2csb_resp_valid (cdp2csb_resp_valid) //|> w
  ,.cdp2csb_resp_pd (cdp2csb_resp_pd[33:0]) //|> w
  ,.cdp2cvif_rd_cdt_lat_fifo_pop (cdp2cvif_rd_cdt_lat_fifo_pop) //|> w
  ,.cdp2cvif_rd_req_valid (cdp2cvif_rd_req_valid) //|> w
  ,.cdp2cvif_rd_req_ready (cdp2cvif_rd_req_ready) //|< w
  ,.cdp2cvif_rd_req_pd (cdp2cvif_rd_req_pd ) //|> w
  ,.cdp2cvif_wr_req_valid (cdp2cvif_wr_req_valid) //|> w
  ,.cdp2cvif_wr_req_ready (cdp2cvif_wr_req_ready) //|< w
  ,.cdp2cvif_wr_req_pd (cdp2cvif_wr_req_pd ) //|> w
  ,.cdp2glb_done_intr_pd (cdp2glb_done_intr_pd[1:0]) //|> w
  ,.cdp2mcif_rd_cdt_lat_fifo_pop (cdp2mcif_rd_cdt_lat_fifo_pop) //|> w
  ,.cdp2mcif_rd_req_valid (cdp2mcif_rd_req_valid) //|> w
  ,.cdp2mcif_rd_req_ready (cdp2mcif_rd_req_ready) //|< w
  ,.cdp2mcif_rd_req_pd (cdp2mcif_rd_req_pd ) //|> w
  ,.cdp2mcif_wr_req_valid (cdp2mcif_wr_req_valid) //|> w
  ,.cdp2mcif_wr_req_ready (cdp2mcif_wr_req_ready) //|< w
  ,.cdp2mcif_wr_req_pd (cdp2mcif_wr_req_pd ) //|> w
  ,.cdp_rdma2csb_resp_valid (cdp_rdma2csb_resp_valid) //|> w
  ,.cdp_rdma2csb_resp_pd (cdp_rdma2csb_resp_pd[33:0]) //|> w
  ,.csb2cdp_rdma_req_pvld (csb2cdp_rdma_req_pvld) //|< w
  ,.csb2cdp_rdma_req_prdy (csb2cdp_rdma_req_prdy) //|> w
  ,.csb2cdp_rdma_req_pd (csb2cdp_rdma_req_pd[62:0]) //|< w
  ,.csb2cdp_req_pvld (csb2cdp_req_pvld) //|< w
  ,.csb2cdp_req_prdy (csb2cdp_req_prdy) //|> w
  ,.csb2cdp_req_pd (csb2cdp_req_pd[62:0]) //|< w
  ,.cvif2cdp_rd_rsp_valid (cvif2cdp_rd_rsp_valid) //|< w
  ,.cvif2cdp_rd_rsp_ready (cvif2cdp_rd_rsp_ready) //|> w
  ,.cvif2cdp_rd_rsp_pd (cvif2cdp_rd_rsp_pd ) //|< w
  ,.cvif2cdp_wr_rsp_complete (cvif2cdp_wr_rsp_complete) //|< w
  ,.mcif2cdp_rd_rsp_valid (mcif2cdp_rd_rsp_valid) //|< w
  ,.mcif2cdp_rd_rsp_ready (mcif2cdp_rd_rsp_ready) //|> w
  ,.mcif2cdp_rd_rsp_pd (mcif2cdp_rd_rsp_pd ) //|< w
  ,.mcif2cdp_wr_rsp_complete (mcif2cdp_wr_rsp_complete) //|< w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: Planar Data Processor //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_pdp u_NV_NVDLA_pdp (
   .dla_clk_ovr_on_sync (dla_clk_ovr_on_sync) //|< w
  ,.global_clk_ovr_on_sync (global_clk_ovr_on_sync) //|< w
  ,.tmc2slcg_disable_clock_gating (tmc2slcg_disable_clock_gating) //|< i
  ,.nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< o
  ,.csb2pdp_rdma_req_pvld (csb2pdp_rdma_req_pvld) //|< w
  ,.csb2pdp_rdma_req_prdy (csb2pdp_rdma_req_prdy) //|> w
  ,.csb2pdp_rdma_req_pd (csb2pdp_rdma_req_pd[62:0]) //|< w
  ,.csb2pdp_req_pvld (csb2pdp_req_pvld) //|< w
  ,.csb2pdp_req_prdy (csb2pdp_req_prdy) //|> w
  ,.csb2pdp_req_pd (csb2pdp_req_pd[62:0]) //|< w
  ,.cvif2pdp_rd_rsp_valid (cvif2pdp_rd_rsp_valid) //|< w
  ,.cvif2pdp_rd_rsp_ready (cvif2pdp_rd_rsp_ready) //|> w
  ,.cvif2pdp_rd_rsp_pd (cvif2pdp_rd_rsp_pd ) //|< w
  ,.cvif2pdp_wr_rsp_complete (cvif2pdp_wr_rsp_complete) //|< w
  ,.mcif2pdp_rd_rsp_valid (mcif2pdp_rd_rsp_valid) //|< w
  ,.mcif2pdp_rd_rsp_ready (mcif2pdp_rd_rsp_ready) //|> w
  ,.mcif2pdp_rd_rsp_pd (mcif2pdp_rd_rsp_pd ) //|< w
  ,.mcif2pdp_wr_rsp_complete (mcif2pdp_wr_rsp_complete) //|< w
  ,.pdp2csb_resp_valid (pdp2csb_resp_valid) //|> w
  ,.pdp2csb_resp_pd (pdp2csb_resp_pd[33:0]) //|> w
  ,.pdp2cvif_rd_cdt_lat_fifo_pop (pdp2cvif_rd_cdt_lat_fifo_pop) //|> w
  ,.pdp2cvif_rd_req_valid (pdp2cvif_rd_req_valid) //|> w
  ,.pdp2cvif_rd_req_ready (pdp2cvif_rd_req_ready) //|< w
  ,.pdp2cvif_rd_req_pd (pdp2cvif_rd_req_pd ) //|> w
  ,.pdp2cvif_wr_req_valid (pdp2cvif_wr_req_valid) //|> w
  ,.pdp2cvif_wr_req_ready (pdp2cvif_wr_req_ready) //|< w
  ,.pdp2cvif_wr_req_pd (pdp2cvif_wr_req_pd ) //|> w
  ,.pdp2glb_done_intr_pd (pdp2glb_done_intr_pd[1:0]) //|> w
  ,.pdp2mcif_rd_cdt_lat_fifo_pop (pdp2mcif_rd_cdt_lat_fifo_pop) //|> w
  ,.pdp2mcif_rd_req_valid (pdp2mcif_rd_req_valid) //|> w
  ,.pdp2mcif_rd_req_ready (pdp2mcif_rd_req_ready) //|< w
  ,.pdp2mcif_rd_req_pd (pdp2mcif_rd_req_pd ) //|> w
  ,.pdp2mcif_wr_req_valid (pdp2mcif_wr_req_valid) //|> w
  ,.pdp2mcif_wr_req_ready (pdp2mcif_wr_req_ready) //|< w
  ,.pdp2mcif_wr_req_pd (pdp2mcif_wr_req_pd ) //|> w
  ,.pdp_rdma2csb_resp_valid (pdp_rdma2csb_resp_valid) //|> w
  ,.pdp_rdma2csb_resp_pd (pdp_rdma2csb_resp_pd[33:0]) //|> w
  ,.pwrbus_ram_pd (pwrbus_ram_pd[31:0]) //|< i
  ,.sdp2pdp_valid (sdp2pdp_valid) //|< i
  ,.sdp2pdp_ready (sdp2pdp_ready) //|> o
  ,.sdp2pdp_pd (sdp2pdp_pd ) //|< i
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: Global Unit //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_glb u_NV_NVDLA_glb (
   .csb2glb_req_pvld (csb2glb_req_pvld) //|< w
  ,.csb2glb_req_prdy (csb2glb_req_prdy) //|> w
  ,.csb2glb_req_pd (csb2glb_req_pd[62:0]) //|< w
  ,.glb2csb_resp_valid (glb2csb_resp_valid) //|> w
  ,.glb2csb_resp_pd (glb2csb_resp_pd[33:0]) //|> w
  ,.core_intr (core_intr) //|> o
  ,.sdp2glb_done_intr_pd (sdp2glb_done_intr_pd[1:0]) //|< i
  ,.cdp2glb_done_intr_pd (cdp2glb_done_intr_pd[1:0]) //|< w
  ,.pdp2glb_done_intr_pd (pdp2glb_done_intr_pd[1:0]) //|< w
  ,.bdma2glb_done_intr_pd (bdma2glb_done_intr_pd[1:0]) //|< w
  ,.rubik2glb_done_intr_pd (rubik2glb_done_intr_pd[1:0]) //|< w
  ,.cdma_wt2glb_done_intr_pd (cdma_wt2glb_done_intr_pd[1:0]) //|< i
  ,.cdma_dat2glb_done_intr_pd (cdma_dat2glb_done_intr_pd[1:0]) //|< i
  ,.cacc2glb_done_intr_pd (cacc2glb_done_intr_dst_pd[1:0]) //|< i
  ,.nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_falcon_clk (nvdla_falcon_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< o
  ,.nvdla_falcon_rstn (nvdla_falcon_rstn) //|< w
  ,.test_mode (test_mode) //|< i
  ,.direct_reset_ (direct_reset_) //|< i
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: Retiming path csc->cmac_a //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_RT_csc2cmac_a u_NV_NVDLA_RT_csc2cmac_a (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< o
  ,.sc2mac_wt_src_pvld (sc2mac_wt_a_src_pvld) //|< i
  ,.sc2mac_wt_src_mask (sc2mac_wt_a_src_mask[64 -1:0]) //|< i
//: my $bb=8;
//: for(my $i=0; $i<64; $i++){
//: print ",.sc2mac_wt_src_data${i}            (sc2mac_wt_a_src_data${i}[${bb}-1:0])  \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
,.sc2mac_wt_src_data0            (sc2mac_wt_a_src_data0[8-1:0])  
,.sc2mac_wt_src_data1            (sc2mac_wt_a_src_data1[8-1:0])  
,.sc2mac_wt_src_data2            (sc2mac_wt_a_src_data2[8-1:0])  
,.sc2mac_wt_src_data3            (sc2mac_wt_a_src_data3[8-1:0])  
,.sc2mac_wt_src_data4            (sc2mac_wt_a_src_data4[8-1:0])  
,.sc2mac_wt_src_data5            (sc2mac_wt_a_src_data5[8-1:0])  
,.sc2mac_wt_src_data6            (sc2mac_wt_a_src_data6[8-1:0])  
,.sc2mac_wt_src_data7            (sc2mac_wt_a_src_data7[8-1:0])  
,.sc2mac_wt_src_data8            (sc2mac_wt_a_src_data8[8-1:0])  
,.sc2mac_wt_src_data9            (sc2mac_wt_a_src_data9[8-1:0])  
,.sc2mac_wt_src_data10            (sc2mac_wt_a_src_data10[8-1:0])  
,.sc2mac_wt_src_data11            (sc2mac_wt_a_src_data11[8-1:0])  
,.sc2mac_wt_src_data12            (sc2mac_wt_a_src_data12[8-1:0])  
,.sc2mac_wt_src_data13            (sc2mac_wt_a_src_data13[8-1:0])  
,.sc2mac_wt_src_data14            (sc2mac_wt_a_src_data14[8-1:0])  
,.sc2mac_wt_src_data15            (sc2mac_wt_a_src_data15[8-1:0])  
,.sc2mac_wt_src_data16            (sc2mac_wt_a_src_data16[8-1:0])  
,.sc2mac_wt_src_data17            (sc2mac_wt_a_src_data17[8-1:0])  
,.sc2mac_wt_src_data18            (sc2mac_wt_a_src_data18[8-1:0])  
,.sc2mac_wt_src_data19            (sc2mac_wt_a_src_data19[8-1:0])  
,.sc2mac_wt_src_data20            (sc2mac_wt_a_src_data20[8-1:0])  
,.sc2mac_wt_src_data21            (sc2mac_wt_a_src_data21[8-1:0])  
,.sc2mac_wt_src_data22            (sc2mac_wt_a_src_data22[8-1:0])  
,.sc2mac_wt_src_data23            (sc2mac_wt_a_src_data23[8-1:0])  
,.sc2mac_wt_src_data24            (sc2mac_wt_a_src_data24[8-1:0])  
,.sc2mac_wt_src_data25            (sc2mac_wt_a_src_data25[8-1:0])  
,.sc2mac_wt_src_data26            (sc2mac_wt_a_src_data26[8-1:0])  
,.sc2mac_wt_src_data27            (sc2mac_wt_a_src_data27[8-1:0])  
,.sc2mac_wt_src_data28            (sc2mac_wt_a_src_data28[8-1:0])  
,.sc2mac_wt_src_data29            (sc2mac_wt_a_src_data29[8-1:0])  
,.sc2mac_wt_src_data30            (sc2mac_wt_a_src_data30[8-1:0])  
,.sc2mac_wt_src_data31            (sc2mac_wt_a_src_data31[8-1:0])  
,.sc2mac_wt_src_data32            (sc2mac_wt_a_src_data32[8-1:0])  
,.sc2mac_wt_src_data33            (sc2mac_wt_a_src_data33[8-1:0])  
,.sc2mac_wt_src_data34            (sc2mac_wt_a_src_data34[8-1:0])  
,.sc2mac_wt_src_data35            (sc2mac_wt_a_src_data35[8-1:0])  
,.sc2mac_wt_src_data36            (sc2mac_wt_a_src_data36[8-1:0])  
,.sc2mac_wt_src_data37            (sc2mac_wt_a_src_data37[8-1:0])  
,.sc2mac_wt_src_data38            (sc2mac_wt_a_src_data38[8-1:0])  
,.sc2mac_wt_src_data39            (sc2mac_wt_a_src_data39[8-1:0])  
,.sc2mac_wt_src_data40            (sc2mac_wt_a_src_data40[8-1:0])  
,.sc2mac_wt_src_data41            (sc2mac_wt_a_src_data41[8-1:0])  
,.sc2mac_wt_src_data42            (sc2mac_wt_a_src_data42[8-1:0])  
,.sc2mac_wt_src_data43            (sc2mac_wt_a_src_data43[8-1:0])  
,.sc2mac_wt_src_data44            (sc2mac_wt_a_src_data44[8-1:0])  
,.sc2mac_wt_src_data45            (sc2mac_wt_a_src_data45[8-1:0])  
,.sc2mac_wt_src_data46            (sc2mac_wt_a_src_data46[8-1:0])  
,.sc2mac_wt_src_data47            (sc2mac_wt_a_src_data47[8-1:0])  
,.sc2mac_wt_src_data48            (sc2mac_wt_a_src_data48[8-1:0])  
,.sc2mac_wt_src_data49            (sc2mac_wt_a_src_data49[8-1:0])  
,.sc2mac_wt_src_data50            (sc2mac_wt_a_src_data50[8-1:0])  
,.sc2mac_wt_src_data51            (sc2mac_wt_a_src_data51[8-1:0])  
,.sc2mac_wt_src_data52            (sc2mac_wt_a_src_data52[8-1:0])  
,.sc2mac_wt_src_data53            (sc2mac_wt_a_src_data53[8-1:0])  
,.sc2mac_wt_src_data54            (sc2mac_wt_a_src_data54[8-1:0])  
,.sc2mac_wt_src_data55            (sc2mac_wt_a_src_data55[8-1:0])  
,.sc2mac_wt_src_data56            (sc2mac_wt_a_src_data56[8-1:0])  
,.sc2mac_wt_src_data57            (sc2mac_wt_a_src_data57[8-1:0])  
,.sc2mac_wt_src_data58            (sc2mac_wt_a_src_data58[8-1:0])  
,.sc2mac_wt_src_data59            (sc2mac_wt_a_src_data59[8-1:0])  
,.sc2mac_wt_src_data60            (sc2mac_wt_a_src_data60[8-1:0])  
,.sc2mac_wt_src_data61            (sc2mac_wt_a_src_data61[8-1:0])  
,.sc2mac_wt_src_data62            (sc2mac_wt_a_src_data62[8-1:0])  
,.sc2mac_wt_src_data63            (sc2mac_wt_a_src_data63[8-1:0])  

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_wt_src_sel (sc2mac_wt_a_src_sel[32/2 -1:0]) //|< i
  ,.sc2mac_dat_src_pvld (sc2mac_dat_a_src_pvld) //|< i
  ,.sc2mac_dat_src_mask (sc2mac_dat_a_src_mask[64 -1:0]) //|< i
//: my $bb=8;
//: for(my $i=0; $i<64; $i++){
//: print ",.sc2mac_dat_src_data${i}            (sc2mac_dat_a_src_data${i}[${bb}-1:0])  \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
,.sc2mac_dat_src_data0            (sc2mac_dat_a_src_data0[8-1:0])  
,.sc2mac_dat_src_data1            (sc2mac_dat_a_src_data1[8-1:0])  
,.sc2mac_dat_src_data2            (sc2mac_dat_a_src_data2[8-1:0])  
,.sc2mac_dat_src_data3            (sc2mac_dat_a_src_data3[8-1:0])  
,.sc2mac_dat_src_data4            (sc2mac_dat_a_src_data4[8-1:0])  
,.sc2mac_dat_src_data5            (sc2mac_dat_a_src_data5[8-1:0])  
,.sc2mac_dat_src_data6            (sc2mac_dat_a_src_data6[8-1:0])  
,.sc2mac_dat_src_data7            (sc2mac_dat_a_src_data7[8-1:0])  
,.sc2mac_dat_src_data8            (sc2mac_dat_a_src_data8[8-1:0])  
,.sc2mac_dat_src_data9            (sc2mac_dat_a_src_data9[8-1:0])  
,.sc2mac_dat_src_data10            (sc2mac_dat_a_src_data10[8-1:0])  
,.sc2mac_dat_src_data11            (sc2mac_dat_a_src_data11[8-1:0])  
,.sc2mac_dat_src_data12            (sc2mac_dat_a_src_data12[8-1:0])  
,.sc2mac_dat_src_data13            (sc2mac_dat_a_src_data13[8-1:0])  
,.sc2mac_dat_src_data14            (sc2mac_dat_a_src_data14[8-1:0])  
,.sc2mac_dat_src_data15            (sc2mac_dat_a_src_data15[8-1:0])  
,.sc2mac_dat_src_data16            (sc2mac_dat_a_src_data16[8-1:0])  
,.sc2mac_dat_src_data17            (sc2mac_dat_a_src_data17[8-1:0])  
,.sc2mac_dat_src_data18            (sc2mac_dat_a_src_data18[8-1:0])  
,.sc2mac_dat_src_data19            (sc2mac_dat_a_src_data19[8-1:0])  
,.sc2mac_dat_src_data20            (sc2mac_dat_a_src_data20[8-1:0])  
,.sc2mac_dat_src_data21            (sc2mac_dat_a_src_data21[8-1:0])  
,.sc2mac_dat_src_data22            (sc2mac_dat_a_src_data22[8-1:0])  
,.sc2mac_dat_src_data23            (sc2mac_dat_a_src_data23[8-1:0])  
,.sc2mac_dat_src_data24            (sc2mac_dat_a_src_data24[8-1:0])  
,.sc2mac_dat_src_data25            (sc2mac_dat_a_src_data25[8-1:0])  
,.sc2mac_dat_src_data26            (sc2mac_dat_a_src_data26[8-1:0])  
,.sc2mac_dat_src_data27            (sc2mac_dat_a_src_data27[8-1:0])  
,.sc2mac_dat_src_data28            (sc2mac_dat_a_src_data28[8-1:0])  
,.sc2mac_dat_src_data29            (sc2mac_dat_a_src_data29[8-1:0])  
,.sc2mac_dat_src_data30            (sc2mac_dat_a_src_data30[8-1:0])  
,.sc2mac_dat_src_data31            (sc2mac_dat_a_src_data31[8-1:0])  
,.sc2mac_dat_src_data32            (sc2mac_dat_a_src_data32[8-1:0])  
,.sc2mac_dat_src_data33            (sc2mac_dat_a_src_data33[8-1:0])  
,.sc2mac_dat_src_data34            (sc2mac_dat_a_src_data34[8-1:0])  
,.sc2mac_dat_src_data35            (sc2mac_dat_a_src_data35[8-1:0])  
,.sc2mac_dat_src_data36            (sc2mac_dat_a_src_data36[8-1:0])  
,.sc2mac_dat_src_data37            (sc2mac_dat_a_src_data37[8-1:0])  
,.sc2mac_dat_src_data38            (sc2mac_dat_a_src_data38[8-1:0])  
,.sc2mac_dat_src_data39            (sc2mac_dat_a_src_data39[8-1:0])  
,.sc2mac_dat_src_data40            (sc2mac_dat_a_src_data40[8-1:0])  
,.sc2mac_dat_src_data41            (sc2mac_dat_a_src_data41[8-1:0])  
,.sc2mac_dat_src_data42            (sc2mac_dat_a_src_data42[8-1:0])  
,.sc2mac_dat_src_data43            (sc2mac_dat_a_src_data43[8-1:0])  
,.sc2mac_dat_src_data44            (sc2mac_dat_a_src_data44[8-1:0])  
,.sc2mac_dat_src_data45            (sc2mac_dat_a_src_data45[8-1:0])  
,.sc2mac_dat_src_data46            (sc2mac_dat_a_src_data46[8-1:0])  
,.sc2mac_dat_src_data47            (sc2mac_dat_a_src_data47[8-1:0])  
,.sc2mac_dat_src_data48            (sc2mac_dat_a_src_data48[8-1:0])  
,.sc2mac_dat_src_data49            (sc2mac_dat_a_src_data49[8-1:0])  
,.sc2mac_dat_src_data50            (sc2mac_dat_a_src_data50[8-1:0])  
,.sc2mac_dat_src_data51            (sc2mac_dat_a_src_data51[8-1:0])  
,.sc2mac_dat_src_data52            (sc2mac_dat_a_src_data52[8-1:0])  
,.sc2mac_dat_src_data53            (sc2mac_dat_a_src_data53[8-1:0])  
,.sc2mac_dat_src_data54            (sc2mac_dat_a_src_data54[8-1:0])  
,.sc2mac_dat_src_data55            (sc2mac_dat_a_src_data55[8-1:0])  
,.sc2mac_dat_src_data56            (sc2mac_dat_a_src_data56[8-1:0])  
,.sc2mac_dat_src_data57            (sc2mac_dat_a_src_data57[8-1:0])  
,.sc2mac_dat_src_data58            (sc2mac_dat_a_src_data58[8-1:0])  
,.sc2mac_dat_src_data59            (sc2mac_dat_a_src_data59[8-1:0])  
,.sc2mac_dat_src_data60            (sc2mac_dat_a_src_data60[8-1:0])  
,.sc2mac_dat_src_data61            (sc2mac_dat_a_src_data61[8-1:0])  
,.sc2mac_dat_src_data62            (sc2mac_dat_a_src_data62[8-1:0])  
,.sc2mac_dat_src_data63            (sc2mac_dat_a_src_data63[8-1:0])  

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_dat_src_pd (sc2mac_dat_a_src_pd[8:0]) //|< i
  ,.sc2mac_wt_dst_pvld (sc2mac_wt_a_dst_pvld) //|> o
  ,.sc2mac_wt_dst_mask (sc2mac_wt_a_dst_mask[64 -1:0]) //|> o
//: my $bb=8;
//: for(my $i=0; $i<64; $i++){
//: print ",.sc2mac_wt_dst_data${i}            (sc2mac_wt_a_dst_data${i}[${bb}-1:0])  \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
,.sc2mac_wt_dst_data0            (sc2mac_wt_a_dst_data0[8-1:0])  
,.sc2mac_wt_dst_data1            (sc2mac_wt_a_dst_data1[8-1:0])  
,.sc2mac_wt_dst_data2            (sc2mac_wt_a_dst_data2[8-1:0])  
,.sc2mac_wt_dst_data3            (sc2mac_wt_a_dst_data3[8-1:0])  
,.sc2mac_wt_dst_data4            (sc2mac_wt_a_dst_data4[8-1:0])  
,.sc2mac_wt_dst_data5            (sc2mac_wt_a_dst_data5[8-1:0])  
,.sc2mac_wt_dst_data6            (sc2mac_wt_a_dst_data6[8-1:0])  
,.sc2mac_wt_dst_data7            (sc2mac_wt_a_dst_data7[8-1:0])  
,.sc2mac_wt_dst_data8            (sc2mac_wt_a_dst_data8[8-1:0])  
,.sc2mac_wt_dst_data9            (sc2mac_wt_a_dst_data9[8-1:0])  
,.sc2mac_wt_dst_data10            (sc2mac_wt_a_dst_data10[8-1:0])  
,.sc2mac_wt_dst_data11            (sc2mac_wt_a_dst_data11[8-1:0])  
,.sc2mac_wt_dst_data12            (sc2mac_wt_a_dst_data12[8-1:0])  
,.sc2mac_wt_dst_data13            (sc2mac_wt_a_dst_data13[8-1:0])  
,.sc2mac_wt_dst_data14            (sc2mac_wt_a_dst_data14[8-1:0])  
,.sc2mac_wt_dst_data15            (sc2mac_wt_a_dst_data15[8-1:0])  
,.sc2mac_wt_dst_data16            (sc2mac_wt_a_dst_data16[8-1:0])  
,.sc2mac_wt_dst_data17            (sc2mac_wt_a_dst_data17[8-1:0])  
,.sc2mac_wt_dst_data18            (sc2mac_wt_a_dst_data18[8-1:0])  
,.sc2mac_wt_dst_data19            (sc2mac_wt_a_dst_data19[8-1:0])  
,.sc2mac_wt_dst_data20            (sc2mac_wt_a_dst_data20[8-1:0])  
,.sc2mac_wt_dst_data21            (sc2mac_wt_a_dst_data21[8-1:0])  
,.sc2mac_wt_dst_data22            (sc2mac_wt_a_dst_data22[8-1:0])  
,.sc2mac_wt_dst_data23            (sc2mac_wt_a_dst_data23[8-1:0])  
,.sc2mac_wt_dst_data24            (sc2mac_wt_a_dst_data24[8-1:0])  
,.sc2mac_wt_dst_data25            (sc2mac_wt_a_dst_data25[8-1:0])  
,.sc2mac_wt_dst_data26            (sc2mac_wt_a_dst_data26[8-1:0])  
,.sc2mac_wt_dst_data27            (sc2mac_wt_a_dst_data27[8-1:0])  
,.sc2mac_wt_dst_data28            (sc2mac_wt_a_dst_data28[8-1:0])  
,.sc2mac_wt_dst_data29            (sc2mac_wt_a_dst_data29[8-1:0])  
,.sc2mac_wt_dst_data30            (sc2mac_wt_a_dst_data30[8-1:0])  
,.sc2mac_wt_dst_data31            (sc2mac_wt_a_dst_data31[8-1:0])  
,.sc2mac_wt_dst_data32            (sc2mac_wt_a_dst_data32[8-1:0])  
,.sc2mac_wt_dst_data33            (sc2mac_wt_a_dst_data33[8-1:0])  
,.sc2mac_wt_dst_data34            (sc2mac_wt_a_dst_data34[8-1:0])  
,.sc2mac_wt_dst_data35            (sc2mac_wt_a_dst_data35[8-1:0])  
,.sc2mac_wt_dst_data36            (sc2mac_wt_a_dst_data36[8-1:0])  
,.sc2mac_wt_dst_data37            (sc2mac_wt_a_dst_data37[8-1:0])  
,.sc2mac_wt_dst_data38            (sc2mac_wt_a_dst_data38[8-1:0])  
,.sc2mac_wt_dst_data39            (sc2mac_wt_a_dst_data39[8-1:0])  
,.sc2mac_wt_dst_data40            (sc2mac_wt_a_dst_data40[8-1:0])  
,.sc2mac_wt_dst_data41            (sc2mac_wt_a_dst_data41[8-1:0])  
,.sc2mac_wt_dst_data42            (sc2mac_wt_a_dst_data42[8-1:0])  
,.sc2mac_wt_dst_data43            (sc2mac_wt_a_dst_data43[8-1:0])  
,.sc2mac_wt_dst_data44            (sc2mac_wt_a_dst_data44[8-1:0])  
,.sc2mac_wt_dst_data45            (sc2mac_wt_a_dst_data45[8-1:0])  
,.sc2mac_wt_dst_data46            (sc2mac_wt_a_dst_data46[8-1:0])  
,.sc2mac_wt_dst_data47            (sc2mac_wt_a_dst_data47[8-1:0])  
,.sc2mac_wt_dst_data48            (sc2mac_wt_a_dst_data48[8-1:0])  
,.sc2mac_wt_dst_data49            (sc2mac_wt_a_dst_data49[8-1:0])  
,.sc2mac_wt_dst_data50            (sc2mac_wt_a_dst_data50[8-1:0])  
,.sc2mac_wt_dst_data51            (sc2mac_wt_a_dst_data51[8-1:0])  
,.sc2mac_wt_dst_data52            (sc2mac_wt_a_dst_data52[8-1:0])  
,.sc2mac_wt_dst_data53            (sc2mac_wt_a_dst_data53[8-1:0])  
,.sc2mac_wt_dst_data54            (sc2mac_wt_a_dst_data54[8-1:0])  
,.sc2mac_wt_dst_data55            (sc2mac_wt_a_dst_data55[8-1:0])  
,.sc2mac_wt_dst_data56            (sc2mac_wt_a_dst_data56[8-1:0])  
,.sc2mac_wt_dst_data57            (sc2mac_wt_a_dst_data57[8-1:0])  
,.sc2mac_wt_dst_data58            (sc2mac_wt_a_dst_data58[8-1:0])  
,.sc2mac_wt_dst_data59            (sc2mac_wt_a_dst_data59[8-1:0])  
,.sc2mac_wt_dst_data60            (sc2mac_wt_a_dst_data60[8-1:0])  
,.sc2mac_wt_dst_data61            (sc2mac_wt_a_dst_data61[8-1:0])  
,.sc2mac_wt_dst_data62            (sc2mac_wt_a_dst_data62[8-1:0])  
,.sc2mac_wt_dst_data63            (sc2mac_wt_a_dst_data63[8-1:0])  

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_wt_dst_sel (sc2mac_wt_a_dst_sel[32/2 -1:0]) //|> o
  ,.sc2mac_dat_dst_pvld (sc2mac_dat_a_dst_pvld) //|> o
  ,.sc2mac_dat_dst_mask (sc2mac_dat_a_dst_mask[64 -1:0]) //|> o
//: my $bb=8;
//: for(my $i=0; $i<64; $i++){
//: print ",.sc2mac_dat_dst_data${i}            (sc2mac_dat_a_dst_data${i}[${bb}-1:0])  \n";
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
,.sc2mac_dat_dst_data0            (sc2mac_dat_a_dst_data0[8-1:0])  
,.sc2mac_dat_dst_data1            (sc2mac_dat_a_dst_data1[8-1:0])  
,.sc2mac_dat_dst_data2            (sc2mac_dat_a_dst_data2[8-1:0])  
,.sc2mac_dat_dst_data3            (sc2mac_dat_a_dst_data3[8-1:0])  
,.sc2mac_dat_dst_data4            (sc2mac_dat_a_dst_data4[8-1:0])  
,.sc2mac_dat_dst_data5            (sc2mac_dat_a_dst_data5[8-1:0])  
,.sc2mac_dat_dst_data6            (sc2mac_dat_a_dst_data6[8-1:0])  
,.sc2mac_dat_dst_data7            (sc2mac_dat_a_dst_data7[8-1:0])  
,.sc2mac_dat_dst_data8            (sc2mac_dat_a_dst_data8[8-1:0])  
,.sc2mac_dat_dst_data9            (sc2mac_dat_a_dst_data9[8-1:0])  
,.sc2mac_dat_dst_data10            (sc2mac_dat_a_dst_data10[8-1:0])  
,.sc2mac_dat_dst_data11            (sc2mac_dat_a_dst_data11[8-1:0])  
,.sc2mac_dat_dst_data12            (sc2mac_dat_a_dst_data12[8-1:0])  
,.sc2mac_dat_dst_data13            (sc2mac_dat_a_dst_data13[8-1:0])  
,.sc2mac_dat_dst_data14            (sc2mac_dat_a_dst_data14[8-1:0])  
,.sc2mac_dat_dst_data15            (sc2mac_dat_a_dst_data15[8-1:0])  
,.sc2mac_dat_dst_data16            (sc2mac_dat_a_dst_data16[8-1:0])  
,.sc2mac_dat_dst_data17            (sc2mac_dat_a_dst_data17[8-1:0])  
,.sc2mac_dat_dst_data18            (sc2mac_dat_a_dst_data18[8-1:0])  
,.sc2mac_dat_dst_data19            (sc2mac_dat_a_dst_data19[8-1:0])  
,.sc2mac_dat_dst_data20            (sc2mac_dat_a_dst_data20[8-1:0])  
,.sc2mac_dat_dst_data21            (sc2mac_dat_a_dst_data21[8-1:0])  
,.sc2mac_dat_dst_data22            (sc2mac_dat_a_dst_data22[8-1:0])  
,.sc2mac_dat_dst_data23            (sc2mac_dat_a_dst_data23[8-1:0])  
,.sc2mac_dat_dst_data24            (sc2mac_dat_a_dst_data24[8-1:0])  
,.sc2mac_dat_dst_data25            (sc2mac_dat_a_dst_data25[8-1:0])  
,.sc2mac_dat_dst_data26            (sc2mac_dat_a_dst_data26[8-1:0])  
,.sc2mac_dat_dst_data27            (sc2mac_dat_a_dst_data27[8-1:0])  
,.sc2mac_dat_dst_data28            (sc2mac_dat_a_dst_data28[8-1:0])  
,.sc2mac_dat_dst_data29            (sc2mac_dat_a_dst_data29[8-1:0])  
,.sc2mac_dat_dst_data30            (sc2mac_dat_a_dst_data30[8-1:0])  
,.sc2mac_dat_dst_data31            (sc2mac_dat_a_dst_data31[8-1:0])  
,.sc2mac_dat_dst_data32            (sc2mac_dat_a_dst_data32[8-1:0])  
,.sc2mac_dat_dst_data33            (sc2mac_dat_a_dst_data33[8-1:0])  
,.sc2mac_dat_dst_data34            (sc2mac_dat_a_dst_data34[8-1:0])  
,.sc2mac_dat_dst_data35            (sc2mac_dat_a_dst_data35[8-1:0])  
,.sc2mac_dat_dst_data36            (sc2mac_dat_a_dst_data36[8-1:0])  
,.sc2mac_dat_dst_data37            (sc2mac_dat_a_dst_data37[8-1:0])  
,.sc2mac_dat_dst_data38            (sc2mac_dat_a_dst_data38[8-1:0])  
,.sc2mac_dat_dst_data39            (sc2mac_dat_a_dst_data39[8-1:0])  
,.sc2mac_dat_dst_data40            (sc2mac_dat_a_dst_data40[8-1:0])  
,.sc2mac_dat_dst_data41            (sc2mac_dat_a_dst_data41[8-1:0])  
,.sc2mac_dat_dst_data42            (sc2mac_dat_a_dst_data42[8-1:0])  
,.sc2mac_dat_dst_data43            (sc2mac_dat_a_dst_data43[8-1:0])  
,.sc2mac_dat_dst_data44            (sc2mac_dat_a_dst_data44[8-1:0])  
,.sc2mac_dat_dst_data45            (sc2mac_dat_a_dst_data45[8-1:0])  
,.sc2mac_dat_dst_data46            (sc2mac_dat_a_dst_data46[8-1:0])  
,.sc2mac_dat_dst_data47            (sc2mac_dat_a_dst_data47[8-1:0])  
,.sc2mac_dat_dst_data48            (sc2mac_dat_a_dst_data48[8-1:0])  
,.sc2mac_dat_dst_data49            (sc2mac_dat_a_dst_data49[8-1:0])  
,.sc2mac_dat_dst_data50            (sc2mac_dat_a_dst_data50[8-1:0])  
,.sc2mac_dat_dst_data51            (sc2mac_dat_a_dst_data51[8-1:0])  
,.sc2mac_dat_dst_data52            (sc2mac_dat_a_dst_data52[8-1:0])  
,.sc2mac_dat_dst_data53            (sc2mac_dat_a_dst_data53[8-1:0])  
,.sc2mac_dat_dst_data54            (sc2mac_dat_a_dst_data54[8-1:0])  
,.sc2mac_dat_dst_data55            (sc2mac_dat_a_dst_data55[8-1:0])  
,.sc2mac_dat_dst_data56            (sc2mac_dat_a_dst_data56[8-1:0])  
,.sc2mac_dat_dst_data57            (sc2mac_dat_a_dst_data57[8-1:0])  
,.sc2mac_dat_dst_data58            (sc2mac_dat_a_dst_data58[8-1:0])  
,.sc2mac_dat_dst_data59            (sc2mac_dat_a_dst_data59[8-1:0])  
,.sc2mac_dat_dst_data60            (sc2mac_dat_a_dst_data60[8-1:0])  
,.sc2mac_dat_dst_data61            (sc2mac_dat_a_dst_data61[8-1:0])  
,.sc2mac_dat_dst_data62            (sc2mac_dat_a_dst_data62[8-1:0])  
,.sc2mac_dat_dst_data63            (sc2mac_dat_a_dst_data63[8-1:0])  

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,.sc2mac_dat_dst_pd (sc2mac_dat_a_dst_pd[8:0]) //|> o
  );
////////////////////////////////////////////////////////////////////////
// NVDLA Partition O: Retiming path csb<->cmac_a //
////////////////////////////////////////////////////////////////////////
NV_NVDLA_RT_csb2cmac u_NV_NVDLA_RT_csb2cmac (
   .nvdla_core_clk (nvdla_core_clk) //|< i
  ,.nvdla_core_rstn (nvdla_core_rstn) //|< o
  ,.csb2cmac_req_src_pvld (csb2cmac_a_req_src_pvld) //|< w
  ,.csb2cmac_req_src_prdy (csb2cmac_a_req_src_prdy) //|> w
  ,.csb2cmac_req_src_pd (csb2cmac_a_req_src_pd[62:0]) //|< w
  ,.cmac2csb_resp_src_valid (cmac_a2csb_resp_src_valid) //|< i
  ,.cmac2csb_resp_src_pd (cmac_a2csb_resp_src_pd[33:0]) //|< i
  ,.csb2cmac_req_dst_pvld (csb2cmac_a_req_dst_pvld) //|> o
  ,.csb2cmac_req_dst_prdy (csb2cmac_a_req_dst_prdy) //|< i
  ,.csb2cmac_req_dst_pd (csb2cmac_a_req_dst_pd[62:0]) //|> o
  ,.cmac2csb_resp_dst_valid (cmac_a2csb_resp_dst_valid) //|> w
  ,.cmac2csb_resp_dst_pd (cmac_a2csb_resp_dst_pd[33:0]) //|> w
  );
////////////////////////////////////////////////////////////////////////
// Dangles/Contenders report //
////////////////////////////////////////////////////////////////////////
endmodule // NV_NVDLA_partition_o
