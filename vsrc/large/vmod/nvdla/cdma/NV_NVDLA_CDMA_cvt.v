// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CDMA_cvt.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CDMA_define.h
//#define CDMA_SBUF_SDATA_BITS            256
//DorisL-S----------------
//
//DorisL-E----------------
//--------------------------------------------------
module NV_NVDLA_CDMA_cvt (
   nvdla_core_clk
  ,nvdla_core_rstn
  ,dc2cvt_dat_wr_en
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: ,dc2cvt_dat_wr_sel
//: ,dc2cvt_dat_wr_addr
//: ,dc2cvt_dat_wr_data
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: ,dc2cvt_dat_wr_mask
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: ,dc2cvt_dat_wr_addr${i}
//: ,dc2cvt_dat_wr_data${i}
//: );
//: }
//: } else {
//: print qq(
//: ,dc2cvt_dat_wr_addr
//: ,dc2cvt_dat_wr_data
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,dc2cvt_dat_wr_addr
,dc2cvt_dat_wr_data

//| eperl: generated_end (DO NOT EDIT ABOVE)
  ,dc2cvt_dat_wr_info_pd
  ,wg2cvt_dat_wr_en
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: ,wg2cvt_dat_wr_sel
//: ,wg2cvt_dat_wr_addr
//: ,wg2cvt_dat_wr_data
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: ,wg2cvt_dat_wr_mask
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: ,wg2cvt_dat_wr_addr${i}
//: ,wg2cvt_dat_wr_data${i}
//: );
//: }
//: } else {
//: print qq(
//: ,wg2cvt_dat_wr_addr
//: ,wg2cvt_dat_wr_data
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,wg2cvt_dat_wr_addr
,wg2cvt_dat_wr_data

//| eperl: generated_end (DO NOT EDIT ABOVE)
// ,wg2cvt_dat_wr_addr
// ,wg2cvt_dat_wr_hsel
// ,wg2cvt_dat_wr_data
  ,wg2cvt_dat_wr_info_pd
  ,img2cvt_dat_wr_en
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: ,img2cvt_dat_wr_sel
//: ,img2cvt_dat_wr_addr
//: ,img2cvt_dat_wr_data
//: ,img2cvt_mn_wr_data
//: ,img2cvt_dat_wr_pad_mask
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: ,img2cvt_dat_wr_mask
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: ,img2cvt_dat_wr_addr${i}
//: ,img2cvt_dat_wr_data${i}
//: ,img2cvt_mn_wr_data${i}
//: ,img2cvt_dat_wr_pad_mask${i}
//: );
//: }
//: } else {
//: print qq(
//: ,img2cvt_dat_wr_addr
//: ,img2cvt_dat_wr_data
//: ,img2cvt_mn_wr_data
//: ,img2cvt_dat_wr_pad_mask
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,img2cvt_dat_wr_addr
,img2cvt_dat_wr_data
,img2cvt_mn_wr_data
,img2cvt_dat_wr_pad_mask

//| eperl: generated_end (DO NOT EDIT ABOVE)
// ,img2cvt_dat_wr_addr
// ,img2cvt_dat_wr_hsel
// ,img2cvt_dat_wr_data
// ,img2cvt_mn_wr_data
  ,img2cvt_dat_wr_info_pd
  ,cdma2buf_dat_wr_en
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: print qq(
//: ,cdma2buf_dat_wr_sel
//: ,cdma2buf_dat_wr_addr
//: ,cdma2buf_dat_wr_data
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: ,cdma2buf_dat_wr_mask
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: ,cdma2buf_dat_wr_addr${i}
//: ,cdma2buf_dat_wr_data${i}
//: );
//: }
//: } else {
//: print qq(
//: ,cdma2buf_dat_wr_addr
//: ,cdma2buf_dat_wr_data
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

,cdma2buf_dat_wr_addr
,cdma2buf_dat_wr_data

//| eperl: generated_end (DO NOT EDIT ABOVE)
// ,cdma2buf_dat_wr_addr
// ,cdma2buf_dat_wr_hsel
// ,cdma2buf_dat_wr_data
  ,nvdla_hls_clk
  ,slcg_hls_en
  ,nvdla_core_ng_clk
  ,reg2dp_op_en
  ,reg2dp_in_precision
  ,reg2dp_proc_precision
  ,reg2dp_cvt_en
  ,reg2dp_cvt_truncate
  ,reg2dp_cvt_offset
  ,reg2dp_cvt_scale
  ,reg2dp_nan_to_zero
  ,reg2dp_pad_value
  ,dp2reg_done
// ,img2cvt_dat_wr_pad_mask
  ,dp2reg_nan_data_num
  ,dp2reg_inf_data_num
  ,dp2reg_dat_flush_done
  );
///////////////////////////////////////////////////////////////////
input nvdla_core_clk;
input nvdla_core_rstn;
input dc2cvt_dat_wr_en;
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: input [${k}-1:0] dc2cvt_dat_wr_sel;
//: input [16:0] dc2cvt_dat_wr_addr;
//: input [${dmaif}-1:0] dc2cvt_dat_wr_data;
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: input [${k}-1:0] dc2cvt_dat_wr_mask;
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: input [16:0] dc2cvt_dat_wr_addr${i};
//: input [${dmaif}-1:0] dc2cvt_dat_wr_data${i};
//: );
//: }
//: } else {
//: print qq(
//: input [16:0] dc2cvt_dat_wr_addr;
//: input [${dmaif}-1:0] dc2cvt_dat_wr_data;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [16:0] dc2cvt_dat_wr_addr;
input [512-1:0] dc2cvt_dat_wr_data;

//| eperl: generated_end (DO NOT EDIT ABOVE)
input [11:0] dc2cvt_dat_wr_info_pd;
// input dc2cvt_dat_wr_en;
// input [11:0] dc2cvt_dat_wr_addr;
// input dc2cvt_dat_wr_hsel;
// input [512 -1:0] dc2cvt_dat_wr_data;
// input [11:0] dc2cvt_dat_wr_info_pd;
input wg2cvt_dat_wr_en;
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: input [${k}-1:0] wg2cvt_dat_wr_sel;
//: input [16:0] wg2cvt_dat_wr_addr;
//: input [${dmaif}-1:0] wg2cvt_dat_wr_data;
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: input [${k}-1:0] wg2cvt_dat_wr_mask;
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: input [16:0] wg2cvt_dat_wr_addr${i};
//: input [${dmaif}-1:0] wg2cvt_dat_wr_data${i};
//: );
//: }
//: } else {
//: print qq(
//: input [16:0] wg2cvt_dat_wr_addr;
//: input [${dmaif}-1:0] wg2cvt_dat_wr_data;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [16:0] wg2cvt_dat_wr_addr;
input [512-1:0] wg2cvt_dat_wr_data;

//| eperl: generated_end (DO NOT EDIT ABOVE)
// input [11:0] wg2cvt_dat_wr_addr;
// input wg2cvt_dat_wr_hsel;
// input [512 -1:0] wg2cvt_dat_wr_data;
input [11:0] wg2cvt_dat_wr_info_pd;
//////////////// img
input img2cvt_dat_wr_en;
//: my $dmaif=512;
//: my $Bnum = $dmaif / 8;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: input [${k}-1:0] img2cvt_dat_wr_sel;
//: input [16:0] img2cvt_dat_wr_addr;
//: input [${dmaif}-1:0] img2cvt_dat_wr_data;
//: input [${Bnum}*16-1:0] img2cvt_mn_wr_data;
//: input [$Bnum-1:0] img2cvt_dat_wr_pad_mask;
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: input [${k}-1:0] img2cvt_dat_wr_mask;
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: input [16:0] img2cvt_dat_wr_addr${i};
//: input [${dmaif}-1:0] img2cvt_dat_wr_data${i};
//: input [${Bnum}*16-1:0] img2cvt_mn_wr_data${i};
//: input [$Bnum-1:0] img2cvt_dat_wr_pad_mask${i};
//: );
//: }
//: } else {
//: print qq(
//: input [16:0] img2cvt_dat_wr_addr;
//: input [${dmaif}-1:0] img2cvt_dat_wr_data;
//: input [${Bnum}*16-1:0] img2cvt_mn_wr_data;
//: input [$Bnum-1:0] img2cvt_dat_wr_pad_mask;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

input [16:0] img2cvt_dat_wr_addr;
input [512-1:0] img2cvt_dat_wr_data;
input [64*16-1:0] img2cvt_mn_wr_data;
input [64-1:0] img2cvt_dat_wr_pad_mask;

//| eperl: generated_end (DO NOT EDIT ABOVE)
input [11:0] img2cvt_dat_wr_info_pd;
// input [11:0] img2cvt_dat_wr_addr;
// input img2cvt_dat_wr_hsel;
// //input [1023:0] img2cvt_dat_wr_data;
// input [512 -1:0] img2cvt_dat_wr_data;
// //input  [127:0] img2cvt_dat_wr_pad_mask;
// //input [1023:0] img2cvt_mn_wr_data;
// //: my $dmaif = NVDLA_CDMA_DMAIF_BW;
// //: my $Bnum = $dmaif / NVDLA_BPE;
// //: print qq(input  [$Bnum-1:0] img2cvt_dat_wr_pad_mask; );
// input [512 -1:0] img2cvt_mn_wr_data;
output cdma2buf_dat_wr_en;
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int($atmc/$dmaif);
//: print qq(
//: output [${k}-1:0] cdma2buf_dat_wr_sel;
//: output [16:0] cdma2buf_dat_wr_addr;
//: output [${dmaif}-1:0] cdma2buf_dat_wr_data;
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: output [${k}-1:0] cdma2buf_dat_wr_mask;
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: output [16:0] cdma2buf_dat_wr_addr${i};
//: output [${dmaif}-1:0] cdma2buf_dat_wr_data${i};
//: );
//: }
//: } else {
//: print qq(
//: output [16:0] cdma2buf_dat_wr_addr;
//: output [${dmaif}-1:0] cdma2buf_dat_wr_data;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

output [16:0] cdma2buf_dat_wr_addr;
output [512-1:0] cdma2buf_dat_wr_data;

//| eperl: generated_end (DO NOT EDIT ABOVE)
// output cdma2buf_dat_wr_en;
// output [11:0] cdma2buf_dat_wr_addr;
// output [1:0] cdma2buf_dat_wr_hsel;
// //output [1023:0] cdma2buf_dat_wr_data;
// output [512 -1:0] cdma2buf_dat_wr_data;
input nvdla_hls_clk;
output slcg_hls_en;
input nvdla_core_ng_clk;
input [0:0] reg2dp_op_en;
input [1:0] reg2dp_in_precision;
input [1:0] reg2dp_proc_precision;
input [0:0] reg2dp_cvt_en;
input [5:0] reg2dp_cvt_truncate;
input [15:0] reg2dp_cvt_offset;
input [15:0] reg2dp_cvt_scale;
input [0:0] reg2dp_nan_to_zero;
input [15:0] reg2dp_pad_value;
input dp2reg_done;
output [31:0] dp2reg_nan_data_num;
output [31:0] dp2reg_inf_data_num;
output dp2reg_dat_flush_done;
///////////////////////////////////////////////////////////////////
reg [5:0] cfg_cvt_en;
reg cfg_in_int8;
reg [1:0] cfg_in_precision;
reg [1:0] cfg_proc_precision;
reg [15:0] cfg_scale;
reg [5:0] cfg_truncate;
reg [15:0] cfg_offset;
reg cfg_out_int8;
reg [15:0] cfg_pad_value;
reg [16:0] cvt_out_addr_d1;
reg [16:0] cvt_out_addr_reg;
//: my $dmaif=512;
//: my $atmm=32;
//: my $bpe = 8;
//: my $Bnum = $dmaif / $bpe;
//: my $atmm_num= $Bnum / $atmm;
//: foreach my $k (0..$atmm_num -1) {
//: print qq(reg [${atmm}*${bpe}-1:0] cvt_out_data_p${k}_reg; \n);
//: print qq(wire [${atmm}*${bpe}-1:0] cvt_out_data_p${k}; \n);
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg [32*8-1:0] cvt_out_data_p0_reg; 
wire [32*8-1:0] cvt_out_data_p0; 
reg [32*8-1:0] cvt_out_data_p1_reg; 
wire [32*8-1:0] cvt_out_data_p1; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
reg [3:0] cvt_out_nz_mask_d1;
reg cvt_out_pad_vld_d1;
reg cvt_out_vld_d1;
reg cvt_out_vld_reg;
reg [512 -1:0] cvt_wr_data_d1;
reg cvt_wr_en_d1;
reg cvt_wr_mean_d1;
reg [512/8*16-1:0] cvt_wr_mean_data_d1;
reg [17:0] dat_cbuf_flush_idx;
wire [31:0] dp2reg_inf_data_num;
wire [31:0] dp2reg_nan_data_num;
reg is_data_expand;
reg is_data_normal;
reg is_input_fp16;
reg [0:0] is_input_int8;
reg op_en;
reg op_en_d0;
reg cvt_wr_uint_d1;
//: my $dmaif=512;
//: my $bpe = 8;
//: my $Bnum = $dmaif / $bpe;
//: foreach my $i (0..$Bnum -1) {
//: print qq(
//: reg [16:0] oprand_0_${i}_d0;
//: reg [15:0] oprand_1_${i}_d0;
//: wire [16:0] oprand_0_${i}_ori;
//: wire [15:0] oprand_1_${i}_ori;
//: wire [15:0] cellout_${i};
//: );
//: }
//: print qq(
//: wire [$Bnum-1:0] oprand_0_8b_sign;
//: wire [$Bnum-1:0] mon_cell_op0_ready;
//: wire [$Bnum-1:0] mon_cell_op1_ready;
//: wire [$Bnum-1:0] cvt_cell_en;
//: reg [$Bnum-1:0] cell_en_d0;
//: reg [$Bnum-1:0] cvt_cell_en_d1;
//: );
//| eperl: generated_beg (DO NOT EDIT BELOW)

reg [16:0] oprand_0_0_d0;
reg [15:0] oprand_1_0_d0;
wire [16:0] oprand_0_0_ori;
wire [15:0] oprand_1_0_ori;
wire [15:0] cellout_0;

reg [16:0] oprand_0_1_d0;
reg [15:0] oprand_1_1_d0;
wire [16:0] oprand_0_1_ori;
wire [15:0] oprand_1_1_ori;
wire [15:0] cellout_1;

reg [16:0] oprand_0_2_d0;
reg [15:0] oprand_1_2_d0;
wire [16:0] oprand_0_2_ori;
wire [15:0] oprand_1_2_ori;
wire [15:0] cellout_2;

reg [16:0] oprand_0_3_d0;
reg [15:0] oprand_1_3_d0;
wire [16:0] oprand_0_3_ori;
wire [15:0] oprand_1_3_ori;
wire [15:0] cellout_3;

reg [16:0] oprand_0_4_d0;
reg [15:0] oprand_1_4_d0;
wire [16:0] oprand_0_4_ori;
wire [15:0] oprand_1_4_ori;
wire [15:0] cellout_4;

reg [16:0] oprand_0_5_d0;
reg [15:0] oprand_1_5_d0;
wire [16:0] oprand_0_5_ori;
wire [15:0] oprand_1_5_ori;
wire [15:0] cellout_5;

reg [16:0] oprand_0_6_d0;
reg [15:0] oprand_1_6_d0;
wire [16:0] oprand_0_6_ori;
wire [15:0] oprand_1_6_ori;
wire [15:0] cellout_6;

reg [16:0] oprand_0_7_d0;
reg [15:0] oprand_1_7_d0;
wire [16:0] oprand_0_7_ori;
wire [15:0] oprand_1_7_ori;
wire [15:0] cellout_7;

reg [16:0] oprand_0_8_d0;
reg [15:0] oprand_1_8_d0;
wire [16:0] oprand_0_8_ori;
wire [15:0] oprand_1_8_ori;
wire [15:0] cellout_8;

reg [16:0] oprand_0_9_d0;
reg [15:0] oprand_1_9_d0;
wire [16:0] oprand_0_9_ori;
wire [15:0] oprand_1_9_ori;
wire [15:0] cellout_9;

reg [16:0] oprand_0_10_d0;
reg [15:0] oprand_1_10_d0;
wire [16:0] oprand_0_10_ori;
wire [15:0] oprand_1_10_ori;
wire [15:0] cellout_10;

reg [16:0] oprand_0_11_d0;
reg [15:0] oprand_1_11_d0;
wire [16:0] oprand_0_11_ori;
wire [15:0] oprand_1_11_ori;
wire [15:0] cellout_11;

reg [16:0] oprand_0_12_d0;
reg [15:0] oprand_1_12_d0;
wire [16:0] oprand_0_12_ori;
wire [15:0] oprand_1_12_ori;
wire [15:0] cellout_12;

reg [16:0] oprand_0_13_d0;
reg [15:0] oprand_1_13_d0;
wire [16:0] oprand_0_13_ori;
wire [15:0] oprand_1_13_ori;
wire [15:0] cellout_13;

reg [16:0] oprand_0_14_d0;
reg [15:0] oprand_1_14_d0;
wire [16:0] oprand_0_14_ori;
wire [15:0] oprand_1_14_ori;
wire [15:0] cellout_14;

reg [16:0] oprand_0_15_d0;
reg [15:0] oprand_1_15_d0;
wire [16:0] oprand_0_15_ori;
wire [15:0] oprand_1_15_ori;
wire [15:0] cellout_15;

reg [16:0] oprand_0_16_d0;
reg [15:0] oprand_1_16_d0;
wire [16:0] oprand_0_16_ori;
wire [15:0] oprand_1_16_ori;
wire [15:0] cellout_16;

reg [16:0] oprand_0_17_d0;
reg [15:0] oprand_1_17_d0;
wire [16:0] oprand_0_17_ori;
wire [15:0] oprand_1_17_ori;
wire [15:0] cellout_17;

reg [16:0] oprand_0_18_d0;
reg [15:0] oprand_1_18_d0;
wire [16:0] oprand_0_18_ori;
wire [15:0] oprand_1_18_ori;
wire [15:0] cellout_18;

reg [16:0] oprand_0_19_d0;
reg [15:0] oprand_1_19_d0;
wire [16:0] oprand_0_19_ori;
wire [15:0] oprand_1_19_ori;
wire [15:0] cellout_19;

reg [16:0] oprand_0_20_d0;
reg [15:0] oprand_1_20_d0;
wire [16:0] oprand_0_20_ori;
wire [15:0] oprand_1_20_ori;
wire [15:0] cellout_20;

reg [16:0] oprand_0_21_d0;
reg [15:0] oprand_1_21_d0;
wire [16:0] oprand_0_21_ori;
wire [15:0] oprand_1_21_ori;
wire [15:0] cellout_21;

reg [16:0] oprand_0_22_d0;
reg [15:0] oprand_1_22_d0;
wire [16:0] oprand_0_22_ori;
wire [15:0] oprand_1_22_ori;
wire [15:0] cellout_22;

reg [16:0] oprand_0_23_d0;
reg [15:0] oprand_1_23_d0;
wire [16:0] oprand_0_23_ori;
wire [15:0] oprand_1_23_ori;
wire [15:0] cellout_23;

reg [16:0] oprand_0_24_d0;
reg [15:0] oprand_1_24_d0;
wire [16:0] oprand_0_24_ori;
wire [15:0] oprand_1_24_ori;
wire [15:0] cellout_24;

reg [16:0] oprand_0_25_d0;
reg [15:0] oprand_1_25_d0;
wire [16:0] oprand_0_25_ori;
wire [15:0] oprand_1_25_ori;
wire [15:0] cellout_25;

reg [16:0] oprand_0_26_d0;
reg [15:0] oprand_1_26_d0;
wire [16:0] oprand_0_26_ori;
wire [15:0] oprand_1_26_ori;
wire [15:0] cellout_26;

reg [16:0] oprand_0_27_d0;
reg [15:0] oprand_1_27_d0;
wire [16:0] oprand_0_27_ori;
wire [15:0] oprand_1_27_ori;
wire [15:0] cellout_27;

reg [16:0] oprand_0_28_d0;
reg [15:0] oprand_1_28_d0;
wire [16:0] oprand_0_28_ori;
wire [15:0] oprand_1_28_ori;
wire [15:0] cellout_28;

reg [16:0] oprand_0_29_d0;
reg [15:0] oprand_1_29_d0;
wire [16:0] oprand_0_29_ori;
wire [15:0] oprand_1_29_ori;
wire [15:0] cellout_29;

reg [16:0] oprand_0_30_d0;
reg [15:0] oprand_1_30_d0;
wire [16:0] oprand_0_30_ori;
wire [15:0] oprand_1_30_ori;
wire [15:0] cellout_30;

reg [16:0] oprand_0_31_d0;
reg [15:0] oprand_1_31_d0;
wire [16:0] oprand_0_31_ori;
wire [15:0] oprand_1_31_ori;
wire [15:0] cellout_31;

reg [16:0] oprand_0_32_d0;
reg [15:0] oprand_1_32_d0;
wire [16:0] oprand_0_32_ori;
wire [15:0] oprand_1_32_ori;
wire [15:0] cellout_32;

reg [16:0] oprand_0_33_d0;
reg [15:0] oprand_1_33_d0;
wire [16:0] oprand_0_33_ori;
wire [15:0] oprand_1_33_ori;
wire [15:0] cellout_33;

reg [16:0] oprand_0_34_d0;
reg [15:0] oprand_1_34_d0;
wire [16:0] oprand_0_34_ori;
wire [15:0] oprand_1_34_ori;
wire [15:0] cellout_34;

reg [16:0] oprand_0_35_d0;
reg [15:0] oprand_1_35_d0;
wire [16:0] oprand_0_35_ori;
wire [15:0] oprand_1_35_ori;
wire [15:0] cellout_35;

reg [16:0] oprand_0_36_d0;
reg [15:0] oprand_1_36_d0;
wire [16:0] oprand_0_36_ori;
wire [15:0] oprand_1_36_ori;
wire [15:0] cellout_36;

reg [16:0] oprand_0_37_d0;
reg [15:0] oprand_1_37_d0;
wire [16:0] oprand_0_37_ori;
wire [15:0] oprand_1_37_ori;
wire [15:0] cellout_37;

reg [16:0] oprand_0_38_d0;
reg [15:0] oprand_1_38_d0;
wire [16:0] oprand_0_38_ori;
wire [15:0] oprand_1_38_ori;
wire [15:0] cellout_38;

reg [16:0] oprand_0_39_d0;
reg [15:0] oprand_1_39_d0;
wire [16:0] oprand_0_39_ori;
wire [15:0] oprand_1_39_ori;
wire [15:0] cellout_39;

reg [16:0] oprand_0_40_d0;
reg [15:0] oprand_1_40_d0;
wire [16:0] oprand_0_40_ori;
wire [15:0] oprand_1_40_ori;
wire [15:0] cellout_40;

reg [16:0] oprand_0_41_d0;
reg [15:0] oprand_1_41_d0;
wire [16:0] oprand_0_41_ori;
wire [15:0] oprand_1_41_ori;
wire [15:0] cellout_41;

reg [16:0] oprand_0_42_d0;
reg [15:0] oprand_1_42_d0;
wire [16:0] oprand_0_42_ori;
wire [15:0] oprand_1_42_ori;
wire [15:0] cellout_42;

reg [16:0] oprand_0_43_d0;
reg [15:0] oprand_1_43_d0;
wire [16:0] oprand_0_43_ori;
wire [15:0] oprand_1_43_ori;
wire [15:0] cellout_43;

reg [16:0] oprand_0_44_d0;
reg [15:0] oprand_1_44_d0;
wire [16:0] oprand_0_44_ori;
wire [15:0] oprand_1_44_ori;
wire [15:0] cellout_44;

reg [16:0] oprand_0_45_d0;
reg [15:0] oprand_1_45_d0;
wire [16:0] oprand_0_45_ori;
wire [15:0] oprand_1_45_ori;
wire [15:0] cellout_45;

reg [16:0] oprand_0_46_d0;
reg [15:0] oprand_1_46_d0;
wire [16:0] oprand_0_46_ori;
wire [15:0] oprand_1_46_ori;
wire [15:0] cellout_46;

reg [16:0] oprand_0_47_d0;
reg [15:0] oprand_1_47_d0;
wire [16:0] oprand_0_47_ori;
wire [15:0] oprand_1_47_ori;
wire [15:0] cellout_47;

reg [16:0] oprand_0_48_d0;
reg [15:0] oprand_1_48_d0;
wire [16:0] oprand_0_48_ori;
wire [15:0] oprand_1_48_ori;
wire [15:0] cellout_48;

reg [16:0] oprand_0_49_d0;
reg [15:0] oprand_1_49_d0;
wire [16:0] oprand_0_49_ori;
wire [15:0] oprand_1_49_ori;
wire [15:0] cellout_49;

reg [16:0] oprand_0_50_d0;
reg [15:0] oprand_1_50_d0;
wire [16:0] oprand_0_50_ori;
wire [15:0] oprand_1_50_ori;
wire [15:0] cellout_50;

reg [16:0] oprand_0_51_d0;
reg [15:0] oprand_1_51_d0;
wire [16:0] oprand_0_51_ori;
wire [15:0] oprand_1_51_ori;
wire [15:0] cellout_51;

reg [16:0] oprand_0_52_d0;
reg [15:0] oprand_1_52_d0;
wire [16:0] oprand_0_52_ori;
wire [15:0] oprand_1_52_ori;
wire [15:0] cellout_52;

reg [16:0] oprand_0_53_d0;
reg [15:0] oprand_1_53_d0;
wire [16:0] oprand_0_53_ori;
wire [15:0] oprand_1_53_ori;
wire [15:0] cellout_53;

reg [16:0] oprand_0_54_d0;
reg [15:0] oprand_1_54_d0;
wire [16:0] oprand_0_54_ori;
wire [15:0] oprand_1_54_ori;
wire [15:0] cellout_54;

reg [16:0] oprand_0_55_d0;
reg [15:0] oprand_1_55_d0;
wire [16:0] oprand_0_55_ori;
wire [15:0] oprand_1_55_ori;
wire [15:0] cellout_55;

reg [16:0] oprand_0_56_d0;
reg [15:0] oprand_1_56_d0;
wire [16:0] oprand_0_56_ori;
wire [15:0] oprand_1_56_ori;
wire [15:0] cellout_56;

reg [16:0] oprand_0_57_d0;
reg [15:0] oprand_1_57_d0;
wire [16:0] oprand_0_57_ori;
wire [15:0] oprand_1_57_ori;
wire [15:0] cellout_57;

reg [16:0] oprand_0_58_d0;
reg [15:0] oprand_1_58_d0;
wire [16:0] oprand_0_58_ori;
wire [15:0] oprand_1_58_ori;
wire [15:0] cellout_58;

reg [16:0] oprand_0_59_d0;
reg [15:0] oprand_1_59_d0;
wire [16:0] oprand_0_59_ori;
wire [15:0] oprand_1_59_ori;
wire [15:0] cellout_59;

reg [16:0] oprand_0_60_d0;
reg [15:0] oprand_1_60_d0;
wire [16:0] oprand_0_60_ori;
wire [15:0] oprand_1_60_ori;
wire [15:0] cellout_60;

reg [16:0] oprand_0_61_d0;
reg [15:0] oprand_1_61_d0;
wire [16:0] oprand_0_61_ori;
wire [15:0] oprand_1_61_ori;
wire [15:0] cellout_61;

reg [16:0] oprand_0_62_d0;
reg [15:0] oprand_1_62_d0;
wire [16:0] oprand_0_62_ori;
wire [15:0] oprand_1_62_ori;
wire [15:0] cellout_62;

reg [16:0] oprand_0_63_d0;
reg [15:0] oprand_1_63_d0;
wire [16:0] oprand_0_63_ori;
wire [15:0] oprand_1_63_ori;
wire [15:0] cellout_63;

wire [64-1:0] oprand_0_8b_sign;
wire [64-1:0] mon_cell_op0_ready;
wire [64-1:0] mon_cell_op1_ready;
wire [64-1:0] cvt_cell_en;
reg [64-1:0] cell_en_d0;
reg [64-1:0] cvt_cell_en_d1;

//| eperl: generated_end (DO NOT EDIT ABOVE)
reg slcg_hls_en_d1;
reg slcg_hls_en_d2;
reg slcg_hls_en_d3;
wire [15:0] cfg_pad_value_w;
wire cfg_reg_en;
wire [512 -1:0] cvt_data_cell;
wire [16:0] cvt_out_addr;
wire [16:0] cvt_out_addr_bp;
wire [16:0] cvt_out_addr_reg_w;
wire [512 -1:0] cvt_out_data_masked;
wire [512 -1:0] cvt_out_data_mix;
wire [3:0] cvt_out_nz_mask_bp;
wire cvt_out_pad_vld_bp;
wire cvt_out_vld;
wire cvt_out_vld_bp;
wire cvt_out_vld_reg_w;
wire [16:0] cvt_wr_addr;
wire [512 -1:0] cvt_wr_data;
wire cvt_wr_en;
//: my $dmaif=512;
//: my $Bnum = $dmaif / 8;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: my $s = int($atmc/$dmaif);
//: print qq(
//: wire [${k}-1:0] cvt_wr_sel;
//: wire [${k}-1:0] cvt_out_sel;
//: reg [${k}-1:0] cvt_out_sel_d1;
//: wire [${k}-1:0] cvt_out_sel_bp;
//: reg [${s}-1:0] cvt_out_sel_reg;
//: wire [${k}-1:0] cvt_out_reg_en;
//: reg [${k}-1:0] cvt_out_reg_en_d1;
//: wire [${k}-1:0] cvt_out_reg_en_bp;
//: );
//: } else {
//: print qq(
//: wire cvt_out_reg_en;
//: reg cvt_out_reg_en_d1;
//: wire cvt_out_reg_en_bp;
//: );
//: }
//: print qq(
//: wire [${Bnum}-1:0] cvt_wr_pad_mask;
//: reg [${Bnum}-1:0] cvt_out_pad_mask_d1;
//: wire [${Bnum}-1:0] cvt_out_pad_mask_bp;
//: );
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire cvt_out_reg_en;
reg cvt_out_reg_en_d1;
wire cvt_out_reg_en_bp;

wire [64-1:0] cvt_wr_pad_mask;
reg [64-1:0] cvt_out_pad_mask_d1;
wire [64-1:0] cvt_out_pad_mask_bp;

//| eperl: generated_end (DO NOT EDIT ABOVE)
wire [11:0] cvt_wr_info_pd;
wire [3:0] cvt_wr_mask;
wire cvt_wr_mean;
wire [512/8*16-1:0] cvt_wr_mean_data;
wire [2:0] cvt_wr_sub_h;
wire cvt_wr_uint;
wire [17:0] dat_cbuf_flush_idx_w;
wire dat_cbuf_flush_vld_w;
wire [31:0] dat_half_mask;
wire [512 -1:0] dat_nan_mask;
wire is_data_expand_w;
wire is_data_normal_w;
wire is_input_fp16_w;
wire is_input_int8_w;
wire is_output_int8_w;
wire mon_dat_cbuf_flush_idx_w;
wire nan_carry;
wire nan_reg_en;
wire op_en_w;
wire slcg_hls_en_w;
///////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
// prepare input signals //
////////////////////////////////////////////////////////////////////////
assign op_en_w = ~dp2reg_done & reg2dp_op_en;
assign cfg_reg_en = op_en_w & ~op_en;
assign is_input_int8_w = 1'b1;
assign is_input_fp16_w = 1'b0;
assign is_output_int8_w = 1'b1;
assign is_data_expand_w = is_input_int8_w & ~is_output_int8_w;
assign is_data_normal_w = is_input_int8_w ~^ is_output_int8_w;
//assign nan_pass_w = ~reg2dp_nan_to_zero | ~is_input_fp16_w;
//assign cfg_pad_value_w = is_output_int8_w ? {2{reg2dp_pad_value[7:0]}} : reg2dp_pad_value;
assign cfg_pad_value_w = reg2dp_pad_value;
//: &eperl::flop("-nodeclare -rval \"1'b0\"                            -d \"op_en_w\"                -q op_en");
//: &eperl::flop("-nodeclare -rval \"{2{1'b0}}\"    -en \"cfg_reg_en\" -d \"reg2dp_in_precision\"    -q cfg_in_precision");
//: &eperl::flop("-nodeclare -rval \"{2{1'b0}}\"    -en \"cfg_reg_en\" -d \"reg2dp_proc_precision\"  -q cfg_proc_precision");
//: &eperl::flop("-nodeclare -rval \"{16{1'b0}}\"   -en \"cfg_reg_en\" -d \"reg2dp_cvt_scale\"       -q cfg_scale");
//: &eperl::flop("-nodeclare -rval \"{6{1'b0}}\"    -en \"cfg_reg_en\" -d \"reg2dp_cvt_truncate\"    -q cfg_truncate");
//: &eperl::flop("-nodeclare -rval \"{16{1'b0}}\"   -en \"cfg_reg_en\" -d \"reg2dp_cvt_offset\"      -q cfg_offset");
//: &eperl::flop("-nodeclare -rval \"{6{1'b0}}\"    -en \"cfg_reg_en\" -d \"{6{reg2dp_cvt_en}}\"     -q cfg_cvt_en");
//: &eperl::flop("-nodeclare -rval \"1'b0\"         -en \"cfg_reg_en\" -d \"is_input_int8_w\"        -q cfg_in_int8");
//: &eperl::flop("-nodeclare -rval \"1'b0\"         -en \"cfg_reg_en\" -d \"is_output_int8_w\"       -q cfg_out_int8");
//: &eperl::flop("-nodeclare -rval \"{16{1'b0}}\"   -en \"cfg_reg_en\" -d \"cfg_pad_value_w\"        -q cfg_pad_value");
//: &eperl::flop("-nodeclare -rval \"1'b0\"         -en \"cfg_reg_en\" -d \"is_input_int8_w\"        -q is_input_int8");
//: &eperl::flop("-nodeclare -rval \"1'b0\"         -en \"cfg_reg_en\" -d \"is_input_fp16_w\"        -q is_input_fp16");
//: &eperl::flop("-nodeclare -rval \"1'b0\"         -en \"cfg_reg_en\" -d \"is_data_expand_w\"       -q is_data_expand");
//: &eperl::flop("-nodeclare -rval \"1'b0\"         -en \"cfg_reg_en\" -d \"is_data_normal_w\"       -q is_data_normal");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       op_en <= 1'b0;
   end else begin
       op_en <= op_en_w;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cfg_in_precision <= {2{1'b0}};
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           cfg_in_precision <= reg2dp_in_precision;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           cfg_in_precision <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cfg_proc_precision <= {2{1'b0}};
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           cfg_proc_precision <= reg2dp_proc_precision;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           cfg_proc_precision <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cfg_scale <= {16{1'b0}};
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           cfg_scale <= reg2dp_cvt_scale;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           cfg_scale <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cfg_truncate <= {6{1'b0}};
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           cfg_truncate <= reg2dp_cvt_truncate;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           cfg_truncate <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cfg_offset <= {16{1'b0}};
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           cfg_offset <= reg2dp_cvt_offset;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           cfg_offset <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cfg_cvt_en <= {6{1'b0}};
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           cfg_cvt_en <= {6{reg2dp_cvt_en}};
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           cfg_cvt_en <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cfg_in_int8 <= 1'b0;
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           cfg_in_int8 <= is_input_int8_w;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           cfg_in_int8 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cfg_out_int8 <= 1'b0;
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           cfg_out_int8 <= is_output_int8_w;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           cfg_out_int8 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cfg_pad_value <= {16{1'b0}};
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           cfg_pad_value <= cfg_pad_value_w;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           cfg_pad_value <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       is_input_int8 <= 1'b0;
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           is_input_int8 <= is_input_int8_w;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           is_input_int8 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       is_input_fp16 <= 1'b0;
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           is_input_fp16 <= is_input_fp16_w;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           is_input_fp16 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       is_data_expand <= 1'b0;
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           is_data_expand <= is_data_expand_w;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           is_data_expand <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       is_data_normal <= 1'b0;
   end else begin
       if ((cfg_reg_en) == 1'b1) begin
           is_data_normal <= is_data_normal_w;
       // VCS coverage off
       end else if ((cfg_reg_en) == 1'b0) begin
       end else begin
           is_data_normal <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
// //: &eperl::flop("-nodeclare -rval \"1'b1\"         -en \"cfg_reg_en\" -d \"nan_pass_w\"             -q nan_pass");
////////////////////////////////////////////////////////////////////////
// SLCG control signal //
////////////////////////////////////////////////////////////////////////
assign slcg_hls_en_w = reg2dp_op_en & reg2dp_cvt_en;
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"slcg_hls_en_w\" -q slcg_hls_en_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"slcg_hls_en_d1\" -q slcg_hls_en_d2");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"   -d \"slcg_hls_en_d2\" -q slcg_hls_en_d3");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       slcg_hls_en_d1 <= 1'b0;
   end else begin
       slcg_hls_en_d1 <= slcg_hls_en_w;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       slcg_hls_en_d2 <= 1'b0;
   end else begin
       slcg_hls_en_d2 <= slcg_hls_en_d1;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       slcg_hls_en_d3 <= 1'b0;
   end else begin
       slcg_hls_en_d3 <= slcg_hls_en_d2;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign slcg_hls_en = slcg_hls_en_d3;
////////////////////////////////////////////////////////////////////////
// Input signals //
////////////////////////////////////////////////////////////////////////
assign cvt_wr_info_pd = ({12 {dc2cvt_dat_wr_en}} & dc2cvt_dat_wr_info_pd)
                      | ({12 {wg2cvt_dat_wr_en}} & wg2cvt_dat_wr_info_pd)
                      | ({12 {img2cvt_dat_wr_en}} & img2cvt_dat_wr_info_pd);
assign cvt_wr_mask[3:0] = cvt_wr_info_pd[3:0];
//assign cvt_wr_interleave = cvt_wr_info_pd[4];
//assign cvt_wr_ext64 = cvt_wr_info_pd[5];
//assign cvt_wr_ext128 = cvt_wr_info_pd[6];
assign cvt_wr_mean = cvt_wr_info_pd[7];
assign cvt_wr_uint = cvt_wr_info_pd[8];
assign cvt_wr_sub_h[2:0] = cvt_wr_info_pd[11:9];
assign cvt_wr_en = (dc2cvt_dat_wr_en | wg2cvt_dat_wr_en | img2cvt_dat_wr_en);
//: my $dmaif=512;
//: my $Bnum = $dmaif / 8;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: print qq(
//: assign cvt_wr_pad_mask = img2cvt_dat_wr_en ? img2cvt_dat_wr_pad_mask : ${Bnum}'d0;
//: assign cvt_wr_sel = dc2cvt_dat_wr_en ? dc2cvt_dat_wr_sel
//: : wg2cvt_dat_wr_en ? wg2cvt_dat_wr_sel
//: : img2cvt_dat_wr_en ? img2cvt_dat_wr_sel : 0;
//: assign cvt_wr_addr = ({17 {dc2cvt_dat_wr_en}} & dc2cvt_dat_wr_addr)
//: | ({17 {wg2cvt_dat_wr_en}} & wg2cvt_dat_wr_addr)
//: | ({17 {img2cvt_dat_wr_en}} & img2cvt_dat_wr_addr);
//: assign cvt_wr_data = ({512 {dc2cvt_dat_wr_en}} & dc2cvt_dat_wr_data)
//: | ({512 {wg2cvt_dat_wr_en}} & wg2cvt_dat_wr_data)
//: | ({512 {img2cvt_dat_wr_en}} & img2cvt_dat_wr_data);
//: assign cvt_wr_mean_data = img2cvt_mn_wr_data;
//: );
//: } elsif($dmaif > $atmc) {
//: my $k = int(log(int($dmaif/$atmc))/log(2));
//: print qq(
//: assign cvt_dat_wr_mask = (dc2cvt_dat_wr_en & dc2cvt_dat_wr_mask)
//: | (wg2cvt_dat_wr_en & wg2cvt_dat_wr_mask)
//: | (img2cvt_dat_wr_en & img2cvt_dat_wr_mask);
//: );
//: foreach my $i (0..$k-1) {
//: print qq(
//: assign cvt_wr_pad_mask${i} = img2cvt_dat_wr_en ? img2cvt_dat_wr_pad_mask${i} : ${Bnum}'d0;
//: assign cvt_wr_addr${i} = ({17 {dc2cvt_dat_wr_en}} & dc2cvt_dat_wr_addr${i})
//: | ({17 {wg2cvt_dat_wr_en}} & wg2cvt_dat_wr_addr${i})
//: | ({17 {img2cvt_dat_wr_en}} & img2cvt_dat_wr_addr${i});
//: assign cvt_wr_data${i} = ({512 {dc2cvt_dat_wr_en}} & dc2cvt_dat_wr_data${i})
//: | ({512 {wg2cvt_dat_wr_en}} & wg2cvt_dat_wr_data${i})
//: | ({512 {img2cvt_dat_wr_en}} & img2cvt_dat_wr_data${i});
//: assign cvt_wr_mean_data${i} = img2cvt_mn_wr_data${i};
//: );
//: }
//: } else {
//: print qq(
//: assign cvt_wr_pad_mask = img2cvt_dat_wr_en ? img2cvt_dat_wr_pad_mask : ${Bnum}'d0;
//: assign cvt_wr_addr = ({17 {dc2cvt_dat_wr_en}} & dc2cvt_dat_wr_addr)
//: | ({17 {wg2cvt_dat_wr_en}} & wg2cvt_dat_wr_addr)
//: | ({17 {img2cvt_dat_wr_en}} & img2cvt_dat_wr_addr);
//: assign cvt_wr_data = ({512 {dc2cvt_dat_wr_en}} & dc2cvt_dat_wr_data)
//: | ({512 {wg2cvt_dat_wr_en}} & wg2cvt_dat_wr_data)
//: | ({512 {img2cvt_dat_wr_en}} & img2cvt_dat_wr_data);
//: assign cvt_wr_mean_data = img2cvt_mn_wr_data;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign cvt_wr_pad_mask = img2cvt_dat_wr_en ? img2cvt_dat_wr_pad_mask : 64'd0;
assign cvt_wr_addr = ({17 {dc2cvt_dat_wr_en}} & dc2cvt_dat_wr_addr)
| ({17 {wg2cvt_dat_wr_en}} & wg2cvt_dat_wr_addr)
| ({17 {img2cvt_dat_wr_en}} & img2cvt_dat_wr_addr);
assign cvt_wr_data = ({512 {dc2cvt_dat_wr_en}} & dc2cvt_dat_wr_data)
| ({512 {wg2cvt_dat_wr_en}} & wg2cvt_dat_wr_data)
| ({512 {img2cvt_dat_wr_en}} & img2cvt_dat_wr_data);
assign cvt_wr_mean_data = img2cvt_mn_wr_data;

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////////////////////////////////////////////////////
// generator mux control signals //
////////////////////////////////////////////////////////////////////////
//: my $dmaif=512;
//: my $atmc=64*8;
//: if($dmaif < $atmc) {
//: print qq(
//: assign cvt_out_sel = cvt_wr_sel;
//: assign cvt_out_reg_en = cvt_wr_en ? cvt_out_sel : 0;
//: );
//: } else {
//: print qq(
//: //assign cvt_out_reg_en = cvt_wr_en;
//: assign cvt_out_reg_en = 1'b0;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

//assign cvt_out_reg_en = cvt_wr_en;
assign cvt_out_reg_en = 1'b0;

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign cvt_out_addr = cvt_wr_addr;
assign cvt_out_vld = cvt_wr_en;
//: my $dmaif=512;
//: my $atmm=32;
//: my $Bnum = $dmaif / 8;
//: my $atmm_num = $Bnum / $atmm;
//: if($atmm_num == 1) {
//: print qq(
//: assign cvt_cell_en = (cvt_wr_en & cfg_cvt_en[0]) ? {${atmm}{cvt_wr_mask[0]}} : ${Bnum}'b0;
//: );
//: } elsif($atmm_num == 2) {
//: print qq(
//: assign cvt_cell_en = (cvt_wr_en & cfg_cvt_en[0]) ? {{${atmm}{cvt_wr_mask[1]}},{${atmm}{cvt_wr_mask[0]}}} : ${Bnum}'b0;
//: );
//: } elsif($atmm_num == 4) {
//: print qq(
//: assign cvt_cell_en = (cvt_wr_en & cfg_cvt_en[0]) ? {{${atmm}{cvt_wr_mask[3]}},{${atmm}{cvt_wr_mask[2]}},{${atmm}{cvt_wr_mask[1]}},{${atmm}{cvt_wr_mask[0]}}} : ${Bnum}'b0;
//: );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign cvt_cell_en = (cvt_wr_en & cfg_cvt_en[0]) ? {{32{cvt_wr_mask[1]}},{32{cvt_wr_mask[0]}}} : 64'b0;

//| eperl: generated_end (DO NOT EDIT ABOVE)
//assign cvt_out_reg_en = cvt_wr_en ? {{4{cvt_out_sel[1]}}, {4{cvt_out_sel[0]}}} : 8'b0;
////////////////////////////////////////////////////////////////////////
// One pipeline stage for retiming //
////////////////////////////////////////////////////////////////////////
//: &eperl::flop("-nodeclare   -rval \"1'b0\"                                   -d \"cvt_wr_en\"             -q cvt_wr_en_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"        -en \"cvt_wr_en\"          -d \"cvt_wr_mean\"           -q cvt_wr_mean_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"        -en \"cvt_wr_en\"          -d \"cvt_wr_uint\"           -q cvt_wr_uint_d1");
//: &eperl::flop("-nodeclare  -norst                 -en \"cvt_wr_en & cvt_wr_mean\" -d \"cvt_wr_mean_data\" -q cvt_wr_mean_data_d1");
//: &eperl::flop("-nodeclare  -norst                 -en \"cvt_wr_en\"          -d \"cvt_wr_data\"           -q cvt_wr_data_d1");
//: my $dmaif=512;
//: my $bpe = 8;
//: my $Bnum = $dmaif / $bpe;
//: &eperl::flop("-nodeclare   -rval \"${Bnum}'b0\"           -en \"cvt_wr_en | cvt_wr_en_d1\" -d \"cvt_cell_en\"     -q cvt_cell_en_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"                                   -d \"cvt_out_vld\"           -q cvt_out_vld_d1");
//: &eperl::flop("-nodeclare   -rval \"1'b0\"                                   -d \"img2cvt_dat_wr_en\"     -q cvt_out_pad_vld_d1");
//: &eperl::flop("-nodeclare   -rval \"{17{1'b0}}\"  -en \"cvt_wr_en\"          -d \"cvt_out_addr\"          -q cvt_out_addr_d1");
//: &eperl::flop("-nodeclare   -rval \"{4{1'b0}}\"   -en \"cvt_wr_en\"          -d \"cvt_wr_mask\"           -q cvt_out_nz_mask_d1");
//: &eperl::flop("-nodeclare   -rval \"${Bnum}'b0\"           -en \"img2cvt_dat_wr_en\"  -d \"cvt_wr_pad_mask\"       -q cvt_out_pad_mask_d1");
//: my $atmc=64*8;
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: if($dmaif < $atmc) {
//: &eperl::flop("-nodeclare   -rval \"${k}'b0\"                                      -d \"cvt_out_reg_en\"        -q cvt_out_reg_en_d1");
//: &eperl::flop("-nodeclare   -rval \"{2{1'b0}}\"   -en \"cvt_wr_en\"          -d \"cvt_out_sel\"           -q cvt_out_sel_d1");
//: } else {
//: &eperl::flop("-nodeclare   -rval \"1'b0\"                                      -d \"cvt_out_reg_en\"        -q cvt_out_reg_en_d1");
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_wr_en_d1 <= 1'b0;
   end else begin
       cvt_wr_en_d1 <= cvt_wr_en;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_wr_mean_d1 <= 1'b0;
   end else begin
       if ((cvt_wr_en) == 1'b1) begin
           cvt_wr_mean_d1 <= cvt_wr_mean;
       // VCS coverage off
       end else if ((cvt_wr_en) == 1'b0) begin
       end else begin
           cvt_wr_mean_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_wr_uint_d1 <= 1'b0;
   end else begin
       if ((cvt_wr_en) == 1'b1) begin
           cvt_wr_uint_d1 <= cvt_wr_uint;
       // VCS coverage off
       end else if ((cvt_wr_en) == 1'b0) begin
       end else begin
           cvt_wr_uint_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_wr_en & cvt_wr_mean) == 1'b1) begin
           cvt_wr_mean_data_d1 <= cvt_wr_mean_data;
       // VCS coverage off
       end else if ((cvt_wr_en & cvt_wr_mean) == 1'b0) begin
       end else begin
           cvt_wr_mean_data_d1 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_wr_en) == 1'b1) begin
           cvt_wr_data_d1 <= cvt_wr_data;
       // VCS coverage off
       end else if ((cvt_wr_en) == 1'b0) begin
       end else begin
           cvt_wr_data_d1 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_cell_en_d1 <= 64'b0;
   end else begin
       if ((cvt_wr_en | cvt_wr_en_d1) == 1'b1) begin
           cvt_cell_en_d1 <= cvt_cell_en;
       // VCS coverage off
       end else if ((cvt_wr_en | cvt_wr_en_d1) == 1'b0) begin
       end else begin
           cvt_cell_en_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_vld_d1 <= 1'b0;
   end else begin
       cvt_out_vld_d1 <= cvt_out_vld;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_vld_d1 <= 1'b0;
   end else begin
       cvt_out_pad_vld_d1 <= img2cvt_dat_wr_en;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_addr_d1 <= {17{1'b0}};
   end else begin
       if ((cvt_wr_en) == 1'b1) begin
           cvt_out_addr_d1 <= cvt_out_addr;
       // VCS coverage off
       end else if ((cvt_wr_en) == 1'b0) begin
       end else begin
           cvt_out_addr_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_nz_mask_d1 <= {4{1'b0}};
   end else begin
       if ((cvt_wr_en) == 1'b1) begin
           cvt_out_nz_mask_d1 <= cvt_wr_mask;
       // VCS coverage off
       end else if ((cvt_wr_en) == 1'b0) begin
       end else begin
           cvt_out_nz_mask_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_mask_d1 <= 64'b0;
   end else begin
       if ((img2cvt_dat_wr_en) == 1'b1) begin
           cvt_out_pad_mask_d1 <= cvt_wr_pad_mask;
       // VCS coverage off
       end else if ((img2cvt_dat_wr_en) == 1'b0) begin
       end else begin
           cvt_out_pad_mask_d1 <= 'bx;
       // VCS coverage on
       end
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_reg_en_d1 <= 1'b0;
   end else begin
       cvt_out_reg_en_d1 <= cvt_out_reg_en;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////////////////////////////////////////////////////
// generate input signals for convertor cells //
////////////////////////////////////////////////////////////////////////
//: my $dmaif=512;
//: my $bpe = 8;
//: my $Bnum = $dmaif / $bpe;
//: foreach my $i(0..$Bnum-1) {
//: my $j = $i + 1;
//: print qq (
//: assign oprand_0_8b_sign[${i}] = (cvt_wr_data_d1[${j}*${bpe}-1] & ~cvt_wr_uint_d1);
//: assign oprand_0_${i}_ori = {{(17-${bpe}){oprand_0_8b_sign[${i}]}}, cvt_wr_data_d1[${j}*${bpe}-1:${i}*${bpe}]} ;
//: assign oprand_1_${i}_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[${j}*16-1:${i}*16] : cfg_offset[15:0];
//: );
//: &eperl::flop("-nodeclare -norst -en \"cvt_cell_en_d1[${i}]\" -d \"oprand_0_${i}_ori\" -q oprand_0_${i}_d0");
//: &eperl::flop("-nodeclare -norst -en \"cvt_cell_en_d1[${i}]\" -d \"oprand_1_${i}_ori\" -q oprand_1_${i}_d0");
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign oprand_0_8b_sign[0] = (cvt_wr_data_d1[1*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_0_ori = {{(17-8){oprand_0_8b_sign[0]}}, cvt_wr_data_d1[1*8-1:0*8]} ;
assign oprand_1_0_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[1*16-1:0*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[0]) == 1'b1) begin
           oprand_0_0_d0 <= oprand_0_0_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[0]) == 1'b0) begin
       end else begin
           oprand_0_0_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[0]) == 1'b1) begin
           oprand_1_0_d0 <= oprand_1_0_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[0]) == 1'b0) begin
       end else begin
           oprand_1_0_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[1] = (cvt_wr_data_d1[2*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_1_ori = {{(17-8){oprand_0_8b_sign[1]}}, cvt_wr_data_d1[2*8-1:1*8]} ;
assign oprand_1_1_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[2*16-1:1*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[1]) == 1'b1) begin
           oprand_0_1_d0 <= oprand_0_1_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[1]) == 1'b0) begin
       end else begin
           oprand_0_1_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[1]) == 1'b1) begin
           oprand_1_1_d0 <= oprand_1_1_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[1]) == 1'b0) begin
       end else begin
           oprand_1_1_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[2] = (cvt_wr_data_d1[3*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_2_ori = {{(17-8){oprand_0_8b_sign[2]}}, cvt_wr_data_d1[3*8-1:2*8]} ;
assign oprand_1_2_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[3*16-1:2*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[2]) == 1'b1) begin
           oprand_0_2_d0 <= oprand_0_2_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[2]) == 1'b0) begin
       end else begin
           oprand_0_2_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[2]) == 1'b1) begin
           oprand_1_2_d0 <= oprand_1_2_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[2]) == 1'b0) begin
       end else begin
           oprand_1_2_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[3] = (cvt_wr_data_d1[4*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_3_ori = {{(17-8){oprand_0_8b_sign[3]}}, cvt_wr_data_d1[4*8-1:3*8]} ;
assign oprand_1_3_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[4*16-1:3*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[3]) == 1'b1) begin
           oprand_0_3_d0 <= oprand_0_3_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[3]) == 1'b0) begin
       end else begin
           oprand_0_3_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[3]) == 1'b1) begin
           oprand_1_3_d0 <= oprand_1_3_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[3]) == 1'b0) begin
       end else begin
           oprand_1_3_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[4] = (cvt_wr_data_d1[5*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_4_ori = {{(17-8){oprand_0_8b_sign[4]}}, cvt_wr_data_d1[5*8-1:4*8]} ;
assign oprand_1_4_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[5*16-1:4*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[4]) == 1'b1) begin
           oprand_0_4_d0 <= oprand_0_4_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[4]) == 1'b0) begin
       end else begin
           oprand_0_4_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[4]) == 1'b1) begin
           oprand_1_4_d0 <= oprand_1_4_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[4]) == 1'b0) begin
       end else begin
           oprand_1_4_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[5] = (cvt_wr_data_d1[6*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_5_ori = {{(17-8){oprand_0_8b_sign[5]}}, cvt_wr_data_d1[6*8-1:5*8]} ;
assign oprand_1_5_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[6*16-1:5*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[5]) == 1'b1) begin
           oprand_0_5_d0 <= oprand_0_5_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[5]) == 1'b0) begin
       end else begin
           oprand_0_5_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[5]) == 1'b1) begin
           oprand_1_5_d0 <= oprand_1_5_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[5]) == 1'b0) begin
       end else begin
           oprand_1_5_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[6] = (cvt_wr_data_d1[7*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_6_ori = {{(17-8){oprand_0_8b_sign[6]}}, cvt_wr_data_d1[7*8-1:6*8]} ;
assign oprand_1_6_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[7*16-1:6*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[6]) == 1'b1) begin
           oprand_0_6_d0 <= oprand_0_6_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[6]) == 1'b0) begin
       end else begin
           oprand_0_6_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[6]) == 1'b1) begin
           oprand_1_6_d0 <= oprand_1_6_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[6]) == 1'b0) begin
       end else begin
           oprand_1_6_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[7] = (cvt_wr_data_d1[8*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_7_ori = {{(17-8){oprand_0_8b_sign[7]}}, cvt_wr_data_d1[8*8-1:7*8]} ;
assign oprand_1_7_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[8*16-1:7*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[7]) == 1'b1) begin
           oprand_0_7_d0 <= oprand_0_7_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[7]) == 1'b0) begin
       end else begin
           oprand_0_7_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[7]) == 1'b1) begin
           oprand_1_7_d0 <= oprand_1_7_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[7]) == 1'b0) begin
       end else begin
           oprand_1_7_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[8] = (cvt_wr_data_d1[9*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_8_ori = {{(17-8){oprand_0_8b_sign[8]}}, cvt_wr_data_d1[9*8-1:8*8]} ;
assign oprand_1_8_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[9*16-1:8*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[8]) == 1'b1) begin
           oprand_0_8_d0 <= oprand_0_8_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[8]) == 1'b0) begin
       end else begin
           oprand_0_8_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[8]) == 1'b1) begin
           oprand_1_8_d0 <= oprand_1_8_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[8]) == 1'b0) begin
       end else begin
           oprand_1_8_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[9] = (cvt_wr_data_d1[10*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_9_ori = {{(17-8){oprand_0_8b_sign[9]}}, cvt_wr_data_d1[10*8-1:9*8]} ;
assign oprand_1_9_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[10*16-1:9*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[9]) == 1'b1) begin
           oprand_0_9_d0 <= oprand_0_9_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[9]) == 1'b0) begin
       end else begin
           oprand_0_9_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[9]) == 1'b1) begin
           oprand_1_9_d0 <= oprand_1_9_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[9]) == 1'b0) begin
       end else begin
           oprand_1_9_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[10] = (cvt_wr_data_d1[11*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_10_ori = {{(17-8){oprand_0_8b_sign[10]}}, cvt_wr_data_d1[11*8-1:10*8]} ;
assign oprand_1_10_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[11*16-1:10*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[10]) == 1'b1) begin
           oprand_0_10_d0 <= oprand_0_10_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[10]) == 1'b0) begin
       end else begin
           oprand_0_10_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[10]) == 1'b1) begin
           oprand_1_10_d0 <= oprand_1_10_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[10]) == 1'b0) begin
       end else begin
           oprand_1_10_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[11] = (cvt_wr_data_d1[12*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_11_ori = {{(17-8){oprand_0_8b_sign[11]}}, cvt_wr_data_d1[12*8-1:11*8]} ;
assign oprand_1_11_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[12*16-1:11*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[11]) == 1'b1) begin
           oprand_0_11_d0 <= oprand_0_11_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[11]) == 1'b0) begin
       end else begin
           oprand_0_11_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[11]) == 1'b1) begin
           oprand_1_11_d0 <= oprand_1_11_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[11]) == 1'b0) begin
       end else begin
           oprand_1_11_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[12] = (cvt_wr_data_d1[13*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_12_ori = {{(17-8){oprand_0_8b_sign[12]}}, cvt_wr_data_d1[13*8-1:12*8]} ;
assign oprand_1_12_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[13*16-1:12*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[12]) == 1'b1) begin
           oprand_0_12_d0 <= oprand_0_12_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[12]) == 1'b0) begin
       end else begin
           oprand_0_12_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[12]) == 1'b1) begin
           oprand_1_12_d0 <= oprand_1_12_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[12]) == 1'b0) begin
       end else begin
           oprand_1_12_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[13] = (cvt_wr_data_d1[14*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_13_ori = {{(17-8){oprand_0_8b_sign[13]}}, cvt_wr_data_d1[14*8-1:13*8]} ;
assign oprand_1_13_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[14*16-1:13*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[13]) == 1'b1) begin
           oprand_0_13_d0 <= oprand_0_13_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[13]) == 1'b0) begin
       end else begin
           oprand_0_13_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[13]) == 1'b1) begin
           oprand_1_13_d0 <= oprand_1_13_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[13]) == 1'b0) begin
       end else begin
           oprand_1_13_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[14] = (cvt_wr_data_d1[15*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_14_ori = {{(17-8){oprand_0_8b_sign[14]}}, cvt_wr_data_d1[15*8-1:14*8]} ;
assign oprand_1_14_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[15*16-1:14*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[14]) == 1'b1) begin
           oprand_0_14_d0 <= oprand_0_14_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[14]) == 1'b0) begin
       end else begin
           oprand_0_14_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[14]) == 1'b1) begin
           oprand_1_14_d0 <= oprand_1_14_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[14]) == 1'b0) begin
       end else begin
           oprand_1_14_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[15] = (cvt_wr_data_d1[16*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_15_ori = {{(17-8){oprand_0_8b_sign[15]}}, cvt_wr_data_d1[16*8-1:15*8]} ;
assign oprand_1_15_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[16*16-1:15*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[15]) == 1'b1) begin
           oprand_0_15_d0 <= oprand_0_15_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[15]) == 1'b0) begin
       end else begin
           oprand_0_15_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[15]) == 1'b1) begin
           oprand_1_15_d0 <= oprand_1_15_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[15]) == 1'b0) begin
       end else begin
           oprand_1_15_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[16] = (cvt_wr_data_d1[17*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_16_ori = {{(17-8){oprand_0_8b_sign[16]}}, cvt_wr_data_d1[17*8-1:16*8]} ;
assign oprand_1_16_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[17*16-1:16*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[16]) == 1'b1) begin
           oprand_0_16_d0 <= oprand_0_16_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[16]) == 1'b0) begin
       end else begin
           oprand_0_16_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[16]) == 1'b1) begin
           oprand_1_16_d0 <= oprand_1_16_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[16]) == 1'b0) begin
       end else begin
           oprand_1_16_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[17] = (cvt_wr_data_d1[18*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_17_ori = {{(17-8){oprand_0_8b_sign[17]}}, cvt_wr_data_d1[18*8-1:17*8]} ;
assign oprand_1_17_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[18*16-1:17*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[17]) == 1'b1) begin
           oprand_0_17_d0 <= oprand_0_17_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[17]) == 1'b0) begin
       end else begin
           oprand_0_17_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[17]) == 1'b1) begin
           oprand_1_17_d0 <= oprand_1_17_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[17]) == 1'b0) begin
       end else begin
           oprand_1_17_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[18] = (cvt_wr_data_d1[19*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_18_ori = {{(17-8){oprand_0_8b_sign[18]}}, cvt_wr_data_d1[19*8-1:18*8]} ;
assign oprand_1_18_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[19*16-1:18*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[18]) == 1'b1) begin
           oprand_0_18_d0 <= oprand_0_18_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[18]) == 1'b0) begin
       end else begin
           oprand_0_18_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[18]) == 1'b1) begin
           oprand_1_18_d0 <= oprand_1_18_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[18]) == 1'b0) begin
       end else begin
           oprand_1_18_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[19] = (cvt_wr_data_d1[20*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_19_ori = {{(17-8){oprand_0_8b_sign[19]}}, cvt_wr_data_d1[20*8-1:19*8]} ;
assign oprand_1_19_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[20*16-1:19*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[19]) == 1'b1) begin
           oprand_0_19_d0 <= oprand_0_19_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[19]) == 1'b0) begin
       end else begin
           oprand_0_19_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[19]) == 1'b1) begin
           oprand_1_19_d0 <= oprand_1_19_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[19]) == 1'b0) begin
       end else begin
           oprand_1_19_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[20] = (cvt_wr_data_d1[21*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_20_ori = {{(17-8){oprand_0_8b_sign[20]}}, cvt_wr_data_d1[21*8-1:20*8]} ;
assign oprand_1_20_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[21*16-1:20*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[20]) == 1'b1) begin
           oprand_0_20_d0 <= oprand_0_20_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[20]) == 1'b0) begin
       end else begin
           oprand_0_20_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[20]) == 1'b1) begin
           oprand_1_20_d0 <= oprand_1_20_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[20]) == 1'b0) begin
       end else begin
           oprand_1_20_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[21] = (cvt_wr_data_d1[22*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_21_ori = {{(17-8){oprand_0_8b_sign[21]}}, cvt_wr_data_d1[22*8-1:21*8]} ;
assign oprand_1_21_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[22*16-1:21*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[21]) == 1'b1) begin
           oprand_0_21_d0 <= oprand_0_21_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[21]) == 1'b0) begin
       end else begin
           oprand_0_21_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[21]) == 1'b1) begin
           oprand_1_21_d0 <= oprand_1_21_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[21]) == 1'b0) begin
       end else begin
           oprand_1_21_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[22] = (cvt_wr_data_d1[23*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_22_ori = {{(17-8){oprand_0_8b_sign[22]}}, cvt_wr_data_d1[23*8-1:22*8]} ;
assign oprand_1_22_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[23*16-1:22*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[22]) == 1'b1) begin
           oprand_0_22_d0 <= oprand_0_22_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[22]) == 1'b0) begin
       end else begin
           oprand_0_22_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[22]) == 1'b1) begin
           oprand_1_22_d0 <= oprand_1_22_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[22]) == 1'b0) begin
       end else begin
           oprand_1_22_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[23] = (cvt_wr_data_d1[24*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_23_ori = {{(17-8){oprand_0_8b_sign[23]}}, cvt_wr_data_d1[24*8-1:23*8]} ;
assign oprand_1_23_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[24*16-1:23*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[23]) == 1'b1) begin
           oprand_0_23_d0 <= oprand_0_23_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[23]) == 1'b0) begin
       end else begin
           oprand_0_23_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[23]) == 1'b1) begin
           oprand_1_23_d0 <= oprand_1_23_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[23]) == 1'b0) begin
       end else begin
           oprand_1_23_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[24] = (cvt_wr_data_d1[25*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_24_ori = {{(17-8){oprand_0_8b_sign[24]}}, cvt_wr_data_d1[25*8-1:24*8]} ;
assign oprand_1_24_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[25*16-1:24*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[24]) == 1'b1) begin
           oprand_0_24_d0 <= oprand_0_24_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[24]) == 1'b0) begin
       end else begin
           oprand_0_24_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[24]) == 1'b1) begin
           oprand_1_24_d0 <= oprand_1_24_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[24]) == 1'b0) begin
       end else begin
           oprand_1_24_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[25] = (cvt_wr_data_d1[26*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_25_ori = {{(17-8){oprand_0_8b_sign[25]}}, cvt_wr_data_d1[26*8-1:25*8]} ;
assign oprand_1_25_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[26*16-1:25*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[25]) == 1'b1) begin
           oprand_0_25_d0 <= oprand_0_25_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[25]) == 1'b0) begin
       end else begin
           oprand_0_25_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[25]) == 1'b1) begin
           oprand_1_25_d0 <= oprand_1_25_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[25]) == 1'b0) begin
       end else begin
           oprand_1_25_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[26] = (cvt_wr_data_d1[27*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_26_ori = {{(17-8){oprand_0_8b_sign[26]}}, cvt_wr_data_d1[27*8-1:26*8]} ;
assign oprand_1_26_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[27*16-1:26*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[26]) == 1'b1) begin
           oprand_0_26_d0 <= oprand_0_26_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[26]) == 1'b0) begin
       end else begin
           oprand_0_26_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[26]) == 1'b1) begin
           oprand_1_26_d0 <= oprand_1_26_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[26]) == 1'b0) begin
       end else begin
           oprand_1_26_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[27] = (cvt_wr_data_d1[28*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_27_ori = {{(17-8){oprand_0_8b_sign[27]}}, cvt_wr_data_d1[28*8-1:27*8]} ;
assign oprand_1_27_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[28*16-1:27*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[27]) == 1'b1) begin
           oprand_0_27_d0 <= oprand_0_27_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[27]) == 1'b0) begin
       end else begin
           oprand_0_27_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[27]) == 1'b1) begin
           oprand_1_27_d0 <= oprand_1_27_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[27]) == 1'b0) begin
       end else begin
           oprand_1_27_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[28] = (cvt_wr_data_d1[29*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_28_ori = {{(17-8){oprand_0_8b_sign[28]}}, cvt_wr_data_d1[29*8-1:28*8]} ;
assign oprand_1_28_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[29*16-1:28*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[28]) == 1'b1) begin
           oprand_0_28_d0 <= oprand_0_28_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[28]) == 1'b0) begin
       end else begin
           oprand_0_28_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[28]) == 1'b1) begin
           oprand_1_28_d0 <= oprand_1_28_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[28]) == 1'b0) begin
       end else begin
           oprand_1_28_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[29] = (cvt_wr_data_d1[30*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_29_ori = {{(17-8){oprand_0_8b_sign[29]}}, cvt_wr_data_d1[30*8-1:29*8]} ;
assign oprand_1_29_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[30*16-1:29*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[29]) == 1'b1) begin
           oprand_0_29_d0 <= oprand_0_29_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[29]) == 1'b0) begin
       end else begin
           oprand_0_29_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[29]) == 1'b1) begin
           oprand_1_29_d0 <= oprand_1_29_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[29]) == 1'b0) begin
       end else begin
           oprand_1_29_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[30] = (cvt_wr_data_d1[31*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_30_ori = {{(17-8){oprand_0_8b_sign[30]}}, cvt_wr_data_d1[31*8-1:30*8]} ;
assign oprand_1_30_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[31*16-1:30*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[30]) == 1'b1) begin
           oprand_0_30_d0 <= oprand_0_30_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[30]) == 1'b0) begin
       end else begin
           oprand_0_30_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[30]) == 1'b1) begin
           oprand_1_30_d0 <= oprand_1_30_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[30]) == 1'b0) begin
       end else begin
           oprand_1_30_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[31] = (cvt_wr_data_d1[32*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_31_ori = {{(17-8){oprand_0_8b_sign[31]}}, cvt_wr_data_d1[32*8-1:31*8]} ;
assign oprand_1_31_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[32*16-1:31*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[31]) == 1'b1) begin
           oprand_0_31_d0 <= oprand_0_31_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[31]) == 1'b0) begin
       end else begin
           oprand_0_31_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[31]) == 1'b1) begin
           oprand_1_31_d0 <= oprand_1_31_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[31]) == 1'b0) begin
       end else begin
           oprand_1_31_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[32] = (cvt_wr_data_d1[33*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_32_ori = {{(17-8){oprand_0_8b_sign[32]}}, cvt_wr_data_d1[33*8-1:32*8]} ;
assign oprand_1_32_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[33*16-1:32*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[32]) == 1'b1) begin
           oprand_0_32_d0 <= oprand_0_32_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[32]) == 1'b0) begin
       end else begin
           oprand_0_32_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[32]) == 1'b1) begin
           oprand_1_32_d0 <= oprand_1_32_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[32]) == 1'b0) begin
       end else begin
           oprand_1_32_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[33] = (cvt_wr_data_d1[34*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_33_ori = {{(17-8){oprand_0_8b_sign[33]}}, cvt_wr_data_d1[34*8-1:33*8]} ;
assign oprand_1_33_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[34*16-1:33*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[33]) == 1'b1) begin
           oprand_0_33_d0 <= oprand_0_33_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[33]) == 1'b0) begin
       end else begin
           oprand_0_33_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[33]) == 1'b1) begin
           oprand_1_33_d0 <= oprand_1_33_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[33]) == 1'b0) begin
       end else begin
           oprand_1_33_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[34] = (cvt_wr_data_d1[35*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_34_ori = {{(17-8){oprand_0_8b_sign[34]}}, cvt_wr_data_d1[35*8-1:34*8]} ;
assign oprand_1_34_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[35*16-1:34*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[34]) == 1'b1) begin
           oprand_0_34_d0 <= oprand_0_34_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[34]) == 1'b0) begin
       end else begin
           oprand_0_34_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[34]) == 1'b1) begin
           oprand_1_34_d0 <= oprand_1_34_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[34]) == 1'b0) begin
       end else begin
           oprand_1_34_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[35] = (cvt_wr_data_d1[36*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_35_ori = {{(17-8){oprand_0_8b_sign[35]}}, cvt_wr_data_d1[36*8-1:35*8]} ;
assign oprand_1_35_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[36*16-1:35*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[35]) == 1'b1) begin
           oprand_0_35_d0 <= oprand_0_35_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[35]) == 1'b0) begin
       end else begin
           oprand_0_35_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[35]) == 1'b1) begin
           oprand_1_35_d0 <= oprand_1_35_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[35]) == 1'b0) begin
       end else begin
           oprand_1_35_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[36] = (cvt_wr_data_d1[37*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_36_ori = {{(17-8){oprand_0_8b_sign[36]}}, cvt_wr_data_d1[37*8-1:36*8]} ;
assign oprand_1_36_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[37*16-1:36*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[36]) == 1'b1) begin
           oprand_0_36_d0 <= oprand_0_36_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[36]) == 1'b0) begin
       end else begin
           oprand_0_36_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[36]) == 1'b1) begin
           oprand_1_36_d0 <= oprand_1_36_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[36]) == 1'b0) begin
       end else begin
           oprand_1_36_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[37] = (cvt_wr_data_d1[38*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_37_ori = {{(17-8){oprand_0_8b_sign[37]}}, cvt_wr_data_d1[38*8-1:37*8]} ;
assign oprand_1_37_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[38*16-1:37*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[37]) == 1'b1) begin
           oprand_0_37_d0 <= oprand_0_37_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[37]) == 1'b0) begin
       end else begin
           oprand_0_37_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[37]) == 1'b1) begin
           oprand_1_37_d0 <= oprand_1_37_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[37]) == 1'b0) begin
       end else begin
           oprand_1_37_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[38] = (cvt_wr_data_d1[39*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_38_ori = {{(17-8){oprand_0_8b_sign[38]}}, cvt_wr_data_d1[39*8-1:38*8]} ;
assign oprand_1_38_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[39*16-1:38*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[38]) == 1'b1) begin
           oprand_0_38_d0 <= oprand_0_38_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[38]) == 1'b0) begin
       end else begin
           oprand_0_38_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[38]) == 1'b1) begin
           oprand_1_38_d0 <= oprand_1_38_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[38]) == 1'b0) begin
       end else begin
           oprand_1_38_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[39] = (cvt_wr_data_d1[40*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_39_ori = {{(17-8){oprand_0_8b_sign[39]}}, cvt_wr_data_d1[40*8-1:39*8]} ;
assign oprand_1_39_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[40*16-1:39*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[39]) == 1'b1) begin
           oprand_0_39_d0 <= oprand_0_39_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[39]) == 1'b0) begin
       end else begin
           oprand_0_39_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[39]) == 1'b1) begin
           oprand_1_39_d0 <= oprand_1_39_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[39]) == 1'b0) begin
       end else begin
           oprand_1_39_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[40] = (cvt_wr_data_d1[41*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_40_ori = {{(17-8){oprand_0_8b_sign[40]}}, cvt_wr_data_d1[41*8-1:40*8]} ;
assign oprand_1_40_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[41*16-1:40*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[40]) == 1'b1) begin
           oprand_0_40_d0 <= oprand_0_40_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[40]) == 1'b0) begin
       end else begin
           oprand_0_40_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[40]) == 1'b1) begin
           oprand_1_40_d0 <= oprand_1_40_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[40]) == 1'b0) begin
       end else begin
           oprand_1_40_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[41] = (cvt_wr_data_d1[42*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_41_ori = {{(17-8){oprand_0_8b_sign[41]}}, cvt_wr_data_d1[42*8-1:41*8]} ;
assign oprand_1_41_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[42*16-1:41*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[41]) == 1'b1) begin
           oprand_0_41_d0 <= oprand_0_41_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[41]) == 1'b0) begin
       end else begin
           oprand_0_41_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[41]) == 1'b1) begin
           oprand_1_41_d0 <= oprand_1_41_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[41]) == 1'b0) begin
       end else begin
           oprand_1_41_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[42] = (cvt_wr_data_d1[43*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_42_ori = {{(17-8){oprand_0_8b_sign[42]}}, cvt_wr_data_d1[43*8-1:42*8]} ;
assign oprand_1_42_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[43*16-1:42*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[42]) == 1'b1) begin
           oprand_0_42_d0 <= oprand_0_42_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[42]) == 1'b0) begin
       end else begin
           oprand_0_42_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[42]) == 1'b1) begin
           oprand_1_42_d0 <= oprand_1_42_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[42]) == 1'b0) begin
       end else begin
           oprand_1_42_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[43] = (cvt_wr_data_d1[44*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_43_ori = {{(17-8){oprand_0_8b_sign[43]}}, cvt_wr_data_d1[44*8-1:43*8]} ;
assign oprand_1_43_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[44*16-1:43*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[43]) == 1'b1) begin
           oprand_0_43_d0 <= oprand_0_43_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[43]) == 1'b0) begin
       end else begin
           oprand_0_43_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[43]) == 1'b1) begin
           oprand_1_43_d0 <= oprand_1_43_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[43]) == 1'b0) begin
       end else begin
           oprand_1_43_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[44] = (cvt_wr_data_d1[45*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_44_ori = {{(17-8){oprand_0_8b_sign[44]}}, cvt_wr_data_d1[45*8-1:44*8]} ;
assign oprand_1_44_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[45*16-1:44*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[44]) == 1'b1) begin
           oprand_0_44_d0 <= oprand_0_44_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[44]) == 1'b0) begin
       end else begin
           oprand_0_44_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[44]) == 1'b1) begin
           oprand_1_44_d0 <= oprand_1_44_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[44]) == 1'b0) begin
       end else begin
           oprand_1_44_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[45] = (cvt_wr_data_d1[46*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_45_ori = {{(17-8){oprand_0_8b_sign[45]}}, cvt_wr_data_d1[46*8-1:45*8]} ;
assign oprand_1_45_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[46*16-1:45*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[45]) == 1'b1) begin
           oprand_0_45_d0 <= oprand_0_45_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[45]) == 1'b0) begin
       end else begin
           oprand_0_45_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[45]) == 1'b1) begin
           oprand_1_45_d0 <= oprand_1_45_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[45]) == 1'b0) begin
       end else begin
           oprand_1_45_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[46] = (cvt_wr_data_d1[47*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_46_ori = {{(17-8){oprand_0_8b_sign[46]}}, cvt_wr_data_d1[47*8-1:46*8]} ;
assign oprand_1_46_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[47*16-1:46*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[46]) == 1'b1) begin
           oprand_0_46_d0 <= oprand_0_46_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[46]) == 1'b0) begin
       end else begin
           oprand_0_46_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[46]) == 1'b1) begin
           oprand_1_46_d0 <= oprand_1_46_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[46]) == 1'b0) begin
       end else begin
           oprand_1_46_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[47] = (cvt_wr_data_d1[48*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_47_ori = {{(17-8){oprand_0_8b_sign[47]}}, cvt_wr_data_d1[48*8-1:47*8]} ;
assign oprand_1_47_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[48*16-1:47*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[47]) == 1'b1) begin
           oprand_0_47_d0 <= oprand_0_47_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[47]) == 1'b0) begin
       end else begin
           oprand_0_47_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[47]) == 1'b1) begin
           oprand_1_47_d0 <= oprand_1_47_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[47]) == 1'b0) begin
       end else begin
           oprand_1_47_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[48] = (cvt_wr_data_d1[49*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_48_ori = {{(17-8){oprand_0_8b_sign[48]}}, cvt_wr_data_d1[49*8-1:48*8]} ;
assign oprand_1_48_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[49*16-1:48*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[48]) == 1'b1) begin
           oprand_0_48_d0 <= oprand_0_48_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[48]) == 1'b0) begin
       end else begin
           oprand_0_48_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[48]) == 1'b1) begin
           oprand_1_48_d0 <= oprand_1_48_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[48]) == 1'b0) begin
       end else begin
           oprand_1_48_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[49] = (cvt_wr_data_d1[50*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_49_ori = {{(17-8){oprand_0_8b_sign[49]}}, cvt_wr_data_d1[50*8-1:49*8]} ;
assign oprand_1_49_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[50*16-1:49*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[49]) == 1'b1) begin
           oprand_0_49_d0 <= oprand_0_49_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[49]) == 1'b0) begin
       end else begin
           oprand_0_49_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[49]) == 1'b1) begin
           oprand_1_49_d0 <= oprand_1_49_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[49]) == 1'b0) begin
       end else begin
           oprand_1_49_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[50] = (cvt_wr_data_d1[51*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_50_ori = {{(17-8){oprand_0_8b_sign[50]}}, cvt_wr_data_d1[51*8-1:50*8]} ;
assign oprand_1_50_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[51*16-1:50*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[50]) == 1'b1) begin
           oprand_0_50_d0 <= oprand_0_50_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[50]) == 1'b0) begin
       end else begin
           oprand_0_50_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[50]) == 1'b1) begin
           oprand_1_50_d0 <= oprand_1_50_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[50]) == 1'b0) begin
       end else begin
           oprand_1_50_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[51] = (cvt_wr_data_d1[52*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_51_ori = {{(17-8){oprand_0_8b_sign[51]}}, cvt_wr_data_d1[52*8-1:51*8]} ;
assign oprand_1_51_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[52*16-1:51*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[51]) == 1'b1) begin
           oprand_0_51_d0 <= oprand_0_51_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[51]) == 1'b0) begin
       end else begin
           oprand_0_51_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[51]) == 1'b1) begin
           oprand_1_51_d0 <= oprand_1_51_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[51]) == 1'b0) begin
       end else begin
           oprand_1_51_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[52] = (cvt_wr_data_d1[53*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_52_ori = {{(17-8){oprand_0_8b_sign[52]}}, cvt_wr_data_d1[53*8-1:52*8]} ;
assign oprand_1_52_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[53*16-1:52*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[52]) == 1'b1) begin
           oprand_0_52_d0 <= oprand_0_52_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[52]) == 1'b0) begin
       end else begin
           oprand_0_52_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[52]) == 1'b1) begin
           oprand_1_52_d0 <= oprand_1_52_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[52]) == 1'b0) begin
       end else begin
           oprand_1_52_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[53] = (cvt_wr_data_d1[54*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_53_ori = {{(17-8){oprand_0_8b_sign[53]}}, cvt_wr_data_d1[54*8-1:53*8]} ;
assign oprand_1_53_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[54*16-1:53*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[53]) == 1'b1) begin
           oprand_0_53_d0 <= oprand_0_53_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[53]) == 1'b0) begin
       end else begin
           oprand_0_53_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[53]) == 1'b1) begin
           oprand_1_53_d0 <= oprand_1_53_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[53]) == 1'b0) begin
       end else begin
           oprand_1_53_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[54] = (cvt_wr_data_d1[55*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_54_ori = {{(17-8){oprand_0_8b_sign[54]}}, cvt_wr_data_d1[55*8-1:54*8]} ;
assign oprand_1_54_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[55*16-1:54*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[54]) == 1'b1) begin
           oprand_0_54_d0 <= oprand_0_54_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[54]) == 1'b0) begin
       end else begin
           oprand_0_54_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[54]) == 1'b1) begin
           oprand_1_54_d0 <= oprand_1_54_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[54]) == 1'b0) begin
       end else begin
           oprand_1_54_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[55] = (cvt_wr_data_d1[56*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_55_ori = {{(17-8){oprand_0_8b_sign[55]}}, cvt_wr_data_d1[56*8-1:55*8]} ;
assign oprand_1_55_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[56*16-1:55*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[55]) == 1'b1) begin
           oprand_0_55_d0 <= oprand_0_55_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[55]) == 1'b0) begin
       end else begin
           oprand_0_55_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[55]) == 1'b1) begin
           oprand_1_55_d0 <= oprand_1_55_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[55]) == 1'b0) begin
       end else begin
           oprand_1_55_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[56] = (cvt_wr_data_d1[57*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_56_ori = {{(17-8){oprand_0_8b_sign[56]}}, cvt_wr_data_d1[57*8-1:56*8]} ;
assign oprand_1_56_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[57*16-1:56*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[56]) == 1'b1) begin
           oprand_0_56_d0 <= oprand_0_56_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[56]) == 1'b0) begin
       end else begin
           oprand_0_56_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[56]) == 1'b1) begin
           oprand_1_56_d0 <= oprand_1_56_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[56]) == 1'b0) begin
       end else begin
           oprand_1_56_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[57] = (cvt_wr_data_d1[58*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_57_ori = {{(17-8){oprand_0_8b_sign[57]}}, cvt_wr_data_d1[58*8-1:57*8]} ;
assign oprand_1_57_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[58*16-1:57*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[57]) == 1'b1) begin
           oprand_0_57_d0 <= oprand_0_57_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[57]) == 1'b0) begin
       end else begin
           oprand_0_57_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[57]) == 1'b1) begin
           oprand_1_57_d0 <= oprand_1_57_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[57]) == 1'b0) begin
       end else begin
           oprand_1_57_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[58] = (cvt_wr_data_d1[59*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_58_ori = {{(17-8){oprand_0_8b_sign[58]}}, cvt_wr_data_d1[59*8-1:58*8]} ;
assign oprand_1_58_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[59*16-1:58*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[58]) == 1'b1) begin
           oprand_0_58_d0 <= oprand_0_58_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[58]) == 1'b0) begin
       end else begin
           oprand_0_58_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[58]) == 1'b1) begin
           oprand_1_58_d0 <= oprand_1_58_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[58]) == 1'b0) begin
       end else begin
           oprand_1_58_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[59] = (cvt_wr_data_d1[60*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_59_ori = {{(17-8){oprand_0_8b_sign[59]}}, cvt_wr_data_d1[60*8-1:59*8]} ;
assign oprand_1_59_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[60*16-1:59*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[59]) == 1'b1) begin
           oprand_0_59_d0 <= oprand_0_59_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[59]) == 1'b0) begin
       end else begin
           oprand_0_59_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[59]) == 1'b1) begin
           oprand_1_59_d0 <= oprand_1_59_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[59]) == 1'b0) begin
       end else begin
           oprand_1_59_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[60] = (cvt_wr_data_d1[61*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_60_ori = {{(17-8){oprand_0_8b_sign[60]}}, cvt_wr_data_d1[61*8-1:60*8]} ;
assign oprand_1_60_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[61*16-1:60*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[60]) == 1'b1) begin
           oprand_0_60_d0 <= oprand_0_60_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[60]) == 1'b0) begin
       end else begin
           oprand_0_60_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[60]) == 1'b1) begin
           oprand_1_60_d0 <= oprand_1_60_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[60]) == 1'b0) begin
       end else begin
           oprand_1_60_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[61] = (cvt_wr_data_d1[62*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_61_ori = {{(17-8){oprand_0_8b_sign[61]}}, cvt_wr_data_d1[62*8-1:61*8]} ;
assign oprand_1_61_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[62*16-1:61*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[61]) == 1'b1) begin
           oprand_0_61_d0 <= oprand_0_61_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[61]) == 1'b0) begin
       end else begin
           oprand_0_61_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[61]) == 1'b1) begin
           oprand_1_61_d0 <= oprand_1_61_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[61]) == 1'b0) begin
       end else begin
           oprand_1_61_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[62] = (cvt_wr_data_d1[63*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_62_ori = {{(17-8){oprand_0_8b_sign[62]}}, cvt_wr_data_d1[63*8-1:62*8]} ;
assign oprand_1_62_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[63*16-1:62*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[62]) == 1'b1) begin
           oprand_0_62_d0 <= oprand_0_62_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[62]) == 1'b0) begin
       end else begin
           oprand_0_62_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[62]) == 1'b1) begin
           oprand_1_62_d0 <= oprand_1_62_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[62]) == 1'b0) begin
       end else begin
           oprand_1_62_d0 <= 'bx;
       // VCS coverage on
       end
end

assign oprand_0_8b_sign[63] = (cvt_wr_data_d1[64*8-1] & ~cvt_wr_uint_d1);
assign oprand_0_63_ori = {{(17-8){oprand_0_8b_sign[63]}}, cvt_wr_data_d1[64*8-1:63*8]} ;
assign oprand_1_63_ori = cvt_wr_mean_d1 ? cvt_wr_mean_data_d1[64*16-1:63*16] : cfg_offset[15:0];
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[63]) == 1'b1) begin
           oprand_0_63_d0 <= oprand_0_63_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[63]) == 1'b0) begin
       end else begin
           oprand_0_63_d0 <= 'bx;
       // VCS coverage on
       end
end
always @(posedge nvdla_core_clk) begin
       if ((cvt_cell_en_d1[63]) == 1'b1) begin
           oprand_1_63_d0 <= oprand_1_63_ori;
       // VCS coverage off
       end else if ((cvt_cell_en_d1[63]) == 1'b0) begin
       end else begin
           oprand_1_63_d0 <= 'bx;
       // VCS coverage on
       end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////////////////////////////////////////////////////
//: my $dmaif=512;
//: my $bpe = 8;
//: my $Bnum = ($dmaif / $bpe);
//: &eperl::flop("-nodeclare -rval \"1'b0\"                               -d \"cvt_wr_en_d1\"   -q op_en_d0");
//: &eperl::flop("-nodeclare -rval \"${Bnum}'b0\"  -en \"cvt_wr_en_d1 | op_en_d0\"  -d \"cvt_cell_en_d1\" -q cell_en_d0 ");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       op_en_d0 <= 1'b0;
   end else begin
       op_en_d0 <= cvt_wr_en_d1;
   end
end
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cell_en_d0 <= 64'b0;
   end else begin
       if ((cvt_wr_en_d1 | op_en_d0) == 1'b1) begin
           cell_en_d0 <= cvt_cell_en_d1;
       // VCS coverage off
       end else if ((cvt_wr_en_d1 | op_en_d0) == 1'b0) begin
       end else begin
           cell_en_d0 <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////////////////////////////////////////////////////
// instance of convert cells //
////////////////////////////////////////////////////////////////////////
//: my $dmaif=512;
//: my $bpe = 8;
//: my $Bnum = $dmaif / $bpe;
//: foreach my $i (0..$Bnum-1) {
//: print qq (
//: NV_NVDLA_CDMA_CVT_cell u_cell_${i} (
//: .nvdla_core_clk (nvdla_hls_clk)
//: ,.nvdla_core_rstn (nvdla_core_rstn)
//: ,.chn_data_in_rsc_z (oprand_0_${i}_d0[16:0])
//: ,.chn_data_in_rsc_vz (cell_en_d0[${i}])
//: // spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
//: ,.chn_data_in_rsc_lz (mon_cell_op0_ready[${i}])
//: // spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
//: ,.chn_alu_in_rsc_z (oprand_1_${i}_d0[15:0])
//: ,.chn_alu_in_rsc_vz (cell_en_d0[${i}])
//: // spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
//: ,.chn_alu_in_rsc_lz (mon_cell_op1_ready[${i}])
//: // spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
//: ,.cfg_mul_in_rsc_z (cfg_scale[15:0])
//: ,.cfg_in_precision (cfg_in_precision[1:0])
//: ,.cfg_out_precision (cfg_proc_precision[1:0])
//: ,.cfg_truncate (cfg_truncate[5:0])
//: ,.chn_data_out_rsc_z (cellout_${i}[15:0])
//: ,.chn_data_out_rsc_vz (1'b1)
//: ,.chn_data_out_rsc_lz ( )
//: );\n);
//: }
//: print "\n";
//| eperl: generated_beg (DO NOT EDIT BELOW)

NV_NVDLA_CDMA_CVT_cell u_cell_0 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_0_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[0])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[0])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_0_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[0])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[0])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_0[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_1 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_1_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[1])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[1])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_1_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[1])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[1])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_1[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_2 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_2_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[2])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[2])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_2_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[2])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[2])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_2[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_3 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_3_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[3])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[3])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_3_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[3])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[3])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_3[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_4 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_4_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[4])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[4])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_4_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[4])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[4])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_4[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_5 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_5_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[5])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[5])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_5_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[5])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[5])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_5[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_6 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_6_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[6])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[6])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_6_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[6])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[6])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_6[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_7 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_7_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[7])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[7])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_7_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[7])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[7])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_7[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_8 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_8_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[8])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[8])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_8_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[8])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[8])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_8[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_9 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_9_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[9])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[9])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_9_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[9])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[9])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_9[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_10 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_10_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[10])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[10])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_10_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[10])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[10])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_10[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_11 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_11_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[11])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[11])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_11_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[11])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[11])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_11[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_12 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_12_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[12])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[12])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_12_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[12])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[12])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_12[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_13 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_13_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[13])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[13])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_13_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[13])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[13])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_13[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_14 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_14_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[14])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[14])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_14_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[14])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[14])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_14[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_15 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_15_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[15])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[15])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_15_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[15])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[15])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_15[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_16 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_16_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[16])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[16])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_16_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[16])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[16])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_16[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_17 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_17_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[17])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[17])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_17_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[17])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[17])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_17[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_18 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_18_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[18])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[18])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_18_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[18])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[18])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_18[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_19 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_19_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[19])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[19])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_19_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[19])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[19])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_19[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_20 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_20_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[20])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[20])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_20_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[20])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[20])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_20[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_21 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_21_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[21])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[21])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_21_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[21])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[21])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_21[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_22 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_22_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[22])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[22])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_22_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[22])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[22])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_22[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_23 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_23_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[23])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[23])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_23_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[23])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[23])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_23[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_24 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_24_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[24])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[24])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_24_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[24])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[24])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_24[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_25 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_25_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[25])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[25])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_25_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[25])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[25])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_25[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_26 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_26_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[26])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[26])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_26_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[26])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[26])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_26[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_27 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_27_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[27])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[27])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_27_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[27])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[27])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_27[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_28 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_28_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[28])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[28])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_28_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[28])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[28])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_28[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_29 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_29_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[29])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[29])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_29_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[29])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[29])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_29[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_30 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_30_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[30])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[30])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_30_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[30])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[30])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_30[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_31 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_31_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[31])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[31])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_31_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[31])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[31])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_31[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_32 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_32_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[32])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[32])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_32_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[32])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[32])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_32[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_33 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_33_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[33])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[33])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_33_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[33])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[33])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_33[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_34 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_34_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[34])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[34])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_34_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[34])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[34])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_34[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_35 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_35_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[35])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[35])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_35_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[35])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[35])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_35[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_36 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_36_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[36])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[36])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_36_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[36])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[36])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_36[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_37 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_37_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[37])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[37])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_37_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[37])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[37])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_37[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_38 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_38_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[38])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[38])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_38_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[38])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[38])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_38[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_39 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_39_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[39])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[39])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_39_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[39])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[39])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_39[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_40 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_40_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[40])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[40])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_40_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[40])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[40])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_40[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_41 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_41_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[41])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[41])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_41_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[41])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[41])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_41[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_42 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_42_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[42])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[42])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_42_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[42])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[42])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_42[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_43 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_43_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[43])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[43])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_43_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[43])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[43])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_43[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_44 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_44_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[44])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[44])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_44_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[44])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[44])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_44[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_45 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_45_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[45])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[45])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_45_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[45])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[45])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_45[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_46 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_46_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[46])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[46])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_46_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[46])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[46])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_46[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_47 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_47_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[47])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[47])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_47_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[47])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[47])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_47[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_48 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_48_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[48])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[48])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_48_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[48])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[48])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_48[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_49 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_49_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[49])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[49])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_49_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[49])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[49])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_49[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_50 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_50_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[50])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[50])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_50_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[50])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[50])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_50[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_51 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_51_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[51])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[51])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_51_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[51])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[51])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_51[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_52 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_52_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[52])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[52])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_52_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[52])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[52])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_52[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_53 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_53_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[53])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[53])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_53_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[53])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[53])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_53[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_54 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_54_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[54])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[54])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_54_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[54])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[54])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_54[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_55 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_55_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[55])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[55])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_55_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[55])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[55])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_55[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_56 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_56_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[56])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[56])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_56_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[56])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[56])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_56[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_57 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_57_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[57])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[57])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_57_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[57])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[57])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_57[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_58 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_58_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[58])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[58])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_58_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[58])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[58])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_58[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_59 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_59_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[59])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[59])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_59_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[59])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[59])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_59[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_60 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_60_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[60])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[60])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_60_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[60])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[60])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_60[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_61 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_61_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[61])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[61])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_61_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[61])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[61])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_61[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_62 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_62_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[62])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[62])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_62_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[62])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[62])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_62[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);

NV_NVDLA_CDMA_CVT_cell u_cell_63 (
.nvdla_core_clk (nvdla_hls_clk)
,.nvdla_core_rstn (nvdla_core_rstn)
,.chn_data_in_rsc_z (oprand_0_63_d0[16:0])
,.chn_data_in_rsc_vz (cell_en_d0[63])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_data_in_rsc_lz (mon_cell_op0_ready[63])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_z (oprand_1_63_d0[15:0])
,.chn_alu_in_rsc_vz (cell_en_d0[63])
// spyglass disable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.chn_alu_in_rsc_lz (mon_cell_op1_ready[63])
// spyglass enable_block UnloadedNet-ML UnloadedOutTerm-ML W528 W123 W287a
,.cfg_mul_in_rsc_z (cfg_scale[15:0])
,.cfg_in_precision (cfg_in_precision[1:0])
,.cfg_out_precision (cfg_proc_precision[1:0])
,.cfg_truncate (cfg_truncate[5:0])
,.chn_data_out_rsc_z (cellout_63[15:0])
,.chn_data_out_rsc_vz (1'b1)
,.chn_data_out_rsc_lz ( )
);


//| eperl: generated_end (DO NOT EDIT ABOVE)
assign cvt_data_cell = {
//: my $dmaif=512;
//: my $bpe = 8;
//: my $Bnum = $dmaif / $bpe;
//: if($Bnum > 1) {
//: foreach my $i(0..$Bnum-2){
//: my $j = $Bnum - $i -1;
//: print qq(cellout_${j}[${bpe}-1:0], );
//: }
//: }
//: print qq(cellout_0[${bpe}-1:0]}; \n);
//| eperl: generated_beg (DO NOT EDIT BELOW)
cellout_63[8-1:0], cellout_62[8-1:0], cellout_61[8-1:0], cellout_60[8-1:0], cellout_59[8-1:0], cellout_58[8-1:0], cellout_57[8-1:0], cellout_56[8-1:0], cellout_55[8-1:0], cellout_54[8-1:0], cellout_53[8-1:0], cellout_52[8-1:0], cellout_51[8-1:0], cellout_50[8-1:0], cellout_49[8-1:0], cellout_48[8-1:0], cellout_47[8-1:0], cellout_46[8-1:0], cellout_45[8-1:0], cellout_44[8-1:0], cellout_43[8-1:0], cellout_42[8-1:0], cellout_41[8-1:0], cellout_40[8-1:0], cellout_39[8-1:0], cellout_38[8-1:0], cellout_37[8-1:0], cellout_36[8-1:0], cellout_35[8-1:0], cellout_34[8-1:0], cellout_33[8-1:0], cellout_32[8-1:0], cellout_31[8-1:0], cellout_30[8-1:0], cellout_29[8-1:0], cellout_28[8-1:0], cellout_27[8-1:0], cellout_26[8-1:0], cellout_25[8-1:0], cellout_24[8-1:0], cellout_23[8-1:0], cellout_22[8-1:0], cellout_21[8-1:0], cellout_20[8-1:0], cellout_19[8-1:0], cellout_18[8-1:0], cellout_17[8-1:0], cellout_16[8-1:0], cellout_15[8-1:0], cellout_14[8-1:0], cellout_13[8-1:0], cellout_12[8-1:0], cellout_11[8-1:0], cellout_10[8-1:0], cellout_9[8-1:0], cellout_8[8-1:0], cellout_7[8-1:0], cellout_6[8-1:0], cellout_5[8-1:0], cellout_4[8-1:0], cellout_3[8-1:0], cellout_2[8-1:0], cellout_1[8-1:0], cellout_0[8-1:0]}; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////////////////////////////////////////////////////
// stage 2: pipeline to match latency of conver cells //
////////////////////////////////////////////////////////////////////////
//: my $dmaif=512;
//: my $Bnum = $dmaif / 8;
//: my $atmc=64*8;
//: my $k = int(log(int($atmc/$dmaif))/log(2));
//: for(my $i = 1; $i <= 3 +1; $i ++) {
//: my $j = $i + 1;
//: &eperl::flop("-wid 1   -rval \"1'b0\"        -d \"cvt_out_vld_d${i}\"     -q cvt_out_vld_d${j}");
//: &eperl::flop("-wid 1   -rval \"1'b0\"        -d \"cvt_out_pad_vld_d${i}\" -q cvt_out_pad_vld_d${j}");
//: if($dmaif < $atmc) {
//: &eperl::flop("-wid $k  -rval \"{${k}{1'b0}}\" -en \"cvt_out_vld_d${i}\"                  -d \"cvt_out_sel_d${i}\"      -q cvt_out_sel_d${j}");
//: &eperl::flop("-wid $k   -rval \"{${k}{1'b0}}\"   -en \"cvt_out_vld_d${i} | cvt_out_vld_d2\" -d \"cvt_out_reg_en_d${i}\"   -q cvt_out_reg_en_d${j}");
//: } else {
//: &eperl::flop("-wid $k   -rval \"1'b0\"   -en \"cvt_out_vld_d${i} | cvt_out_vld_d2\" -d \"cvt_out_reg_en_d${i}\"   -q cvt_out_reg_en_d${j}");
//: }
//: &eperl::flop("-wid 17  -rval \"{17{1'b0}}\"  -en \"cvt_out_vld_d${i}\"                  -d \"cvt_out_addr_d${i}\"     -q cvt_out_addr_d${j}");
//: &eperl::flop("-wid 4   -rval \"{4{1'b0}}\"   -en \"cvt_out_vld_d${i}\"                  -d \"cvt_out_nz_mask_d${i}\"  -q cvt_out_nz_mask_d${j}");
//: &eperl::flop("-wid $Bnum -rval \"{${Bnum}{1'b0}}\" -en \"cvt_out_pad_vld_d${i}\"        -d \"cvt_out_pad_mask_d${i}\" -q cvt_out_pad_mask_d${j}");
//: print "\n\n";
//: }
//: my $i = 3 +2;
//: if($dmaif < $atmc){
//: print qq(
//: assign cvt_out_sel_bp = cfg_cvt_en[1] ? cvt_out_sel_d${i} : cvt_out_sel_d1;
//: );
//: }
//: print qq(
//: assign cvt_out_vld_bp = cfg_cvt_en[1] ? cvt_out_vld_d${i} : cvt_out_vld_d1;
//: assign cvt_out_addr_bp = cfg_cvt_en[1] ? cvt_out_addr_d${i} : cvt_out_addr_d1;
//: assign cvt_out_nz_mask_bp = cfg_cvt_en[2] ? cvt_out_nz_mask_d${i} : cvt_out_nz_mask_d1;
//: assign cvt_out_pad_vld_bp = cfg_cvt_en[3] ? cvt_out_pad_vld_d${i} : cvt_out_pad_vld_d1;
//: assign cvt_out_pad_mask_bp = ~cvt_out_pad_vld_bp ? ${Bnum}'b0 : (cfg_cvt_en[3] ? cvt_out_pad_mask_d${i} : cvt_out_pad_mask_d1);
//: assign cvt_out_reg_en_bp = cfg_cvt_en[4] ? cvt_out_reg_en_d${i} : cvt_out_reg_en_d1;
//: );
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg  cvt_out_vld_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_vld_d2 <= 1'b0;
   end else begin
       cvt_out_vld_d2 <= cvt_out_vld_d1;
   end
end
reg  cvt_out_pad_vld_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_vld_d2 <= 1'b0;
   end else begin
       cvt_out_pad_vld_d2 <= cvt_out_pad_vld_d1;
   end
end
reg  cvt_out_reg_en_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_reg_en_d2 <= 1'b0;
   end else begin
       if ((cvt_out_vld_d1 | cvt_out_vld_d2) == 1'b1) begin
           cvt_out_reg_en_d2 <= cvt_out_reg_en_d1;
       // VCS coverage off
       end else if ((cvt_out_vld_d1 | cvt_out_vld_d2) == 1'b0) begin
       end else begin
           cvt_out_reg_en_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [16:0] cvt_out_addr_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_addr_d2 <= {17{1'b0}};
   end else begin
       if ((cvt_out_vld_d1) == 1'b1) begin
           cvt_out_addr_d2 <= cvt_out_addr_d1;
       // VCS coverage off
       end else if ((cvt_out_vld_d1) == 1'b0) begin
       end else begin
           cvt_out_addr_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [3:0] cvt_out_nz_mask_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_nz_mask_d2 <= {4{1'b0}};
   end else begin
       if ((cvt_out_vld_d1) == 1'b1) begin
           cvt_out_nz_mask_d2 <= cvt_out_nz_mask_d1;
       // VCS coverage off
       end else if ((cvt_out_vld_d1) == 1'b0) begin
       end else begin
           cvt_out_nz_mask_d2 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [63:0] cvt_out_pad_mask_d2;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_mask_d2 <= {64{1'b0}};
   end else begin
       if ((cvt_out_pad_vld_d1) == 1'b1) begin
           cvt_out_pad_mask_d2 <= cvt_out_pad_mask_d1;
       // VCS coverage off
       end else if ((cvt_out_pad_vld_d1) == 1'b0) begin
       end else begin
           cvt_out_pad_mask_d2 <= 'bx;
       // VCS coverage on
       end
   end
end


reg  cvt_out_vld_d3;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_vld_d3 <= 1'b0;
   end else begin
       cvt_out_vld_d3 <= cvt_out_vld_d2;
   end
end
reg  cvt_out_pad_vld_d3;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_vld_d3 <= 1'b0;
   end else begin
       cvt_out_pad_vld_d3 <= cvt_out_pad_vld_d2;
   end
end
reg  cvt_out_reg_en_d3;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_reg_en_d3 <= 1'b0;
   end else begin
       if ((cvt_out_vld_d2 | cvt_out_vld_d2) == 1'b1) begin
           cvt_out_reg_en_d3 <= cvt_out_reg_en_d2;
       // VCS coverage off
       end else if ((cvt_out_vld_d2 | cvt_out_vld_d2) == 1'b0) begin
       end else begin
           cvt_out_reg_en_d3 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [16:0] cvt_out_addr_d3;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_addr_d3 <= {17{1'b0}};
   end else begin
       if ((cvt_out_vld_d2) == 1'b1) begin
           cvt_out_addr_d3 <= cvt_out_addr_d2;
       // VCS coverage off
       end else if ((cvt_out_vld_d2) == 1'b0) begin
       end else begin
           cvt_out_addr_d3 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [3:0] cvt_out_nz_mask_d3;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_nz_mask_d3 <= {4{1'b0}};
   end else begin
       if ((cvt_out_vld_d2) == 1'b1) begin
           cvt_out_nz_mask_d3 <= cvt_out_nz_mask_d2;
       // VCS coverage off
       end else if ((cvt_out_vld_d2) == 1'b0) begin
       end else begin
           cvt_out_nz_mask_d3 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [63:0] cvt_out_pad_mask_d3;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_mask_d3 <= {64{1'b0}};
   end else begin
       if ((cvt_out_pad_vld_d2) == 1'b1) begin
           cvt_out_pad_mask_d3 <= cvt_out_pad_mask_d2;
       // VCS coverage off
       end else if ((cvt_out_pad_vld_d2) == 1'b0) begin
       end else begin
           cvt_out_pad_mask_d3 <= 'bx;
       // VCS coverage on
       end
   end
end


reg  cvt_out_vld_d4;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_vld_d4 <= 1'b0;
   end else begin
       cvt_out_vld_d4 <= cvt_out_vld_d3;
   end
end
reg  cvt_out_pad_vld_d4;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_vld_d4 <= 1'b0;
   end else begin
       cvt_out_pad_vld_d4 <= cvt_out_pad_vld_d3;
   end
end
reg  cvt_out_reg_en_d4;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_reg_en_d4 <= 1'b0;
   end else begin
       if ((cvt_out_vld_d3 | cvt_out_vld_d2) == 1'b1) begin
           cvt_out_reg_en_d4 <= cvt_out_reg_en_d3;
       // VCS coverage off
       end else if ((cvt_out_vld_d3 | cvt_out_vld_d2) == 1'b0) begin
       end else begin
           cvt_out_reg_en_d4 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [16:0] cvt_out_addr_d4;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_addr_d4 <= {17{1'b0}};
   end else begin
       if ((cvt_out_vld_d3) == 1'b1) begin
           cvt_out_addr_d4 <= cvt_out_addr_d3;
       // VCS coverage off
       end else if ((cvt_out_vld_d3) == 1'b0) begin
       end else begin
           cvt_out_addr_d4 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [3:0] cvt_out_nz_mask_d4;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_nz_mask_d4 <= {4{1'b0}};
   end else begin
       if ((cvt_out_vld_d3) == 1'b1) begin
           cvt_out_nz_mask_d4 <= cvt_out_nz_mask_d3;
       // VCS coverage off
       end else if ((cvt_out_vld_d3) == 1'b0) begin
       end else begin
           cvt_out_nz_mask_d4 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [63:0] cvt_out_pad_mask_d4;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_mask_d4 <= {64{1'b0}};
   end else begin
       if ((cvt_out_pad_vld_d3) == 1'b1) begin
           cvt_out_pad_mask_d4 <= cvt_out_pad_mask_d3;
       // VCS coverage off
       end else if ((cvt_out_pad_vld_d3) == 1'b0) begin
       end else begin
           cvt_out_pad_mask_d4 <= 'bx;
       // VCS coverage on
       end
   end
end


reg  cvt_out_vld_d5;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_vld_d5 <= 1'b0;
   end else begin
       cvt_out_vld_d5 <= cvt_out_vld_d4;
   end
end
reg  cvt_out_pad_vld_d5;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_vld_d5 <= 1'b0;
   end else begin
       cvt_out_pad_vld_d5 <= cvt_out_pad_vld_d4;
   end
end
reg  cvt_out_reg_en_d5;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_reg_en_d5 <= 1'b0;
   end else begin
       if ((cvt_out_vld_d4 | cvt_out_vld_d2) == 1'b1) begin
           cvt_out_reg_en_d5 <= cvt_out_reg_en_d4;
       // VCS coverage off
       end else if ((cvt_out_vld_d4 | cvt_out_vld_d2) == 1'b0) begin
       end else begin
           cvt_out_reg_en_d5 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [16:0] cvt_out_addr_d5;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_addr_d5 <= {17{1'b0}};
   end else begin
       if ((cvt_out_vld_d4) == 1'b1) begin
           cvt_out_addr_d5 <= cvt_out_addr_d4;
       // VCS coverage off
       end else if ((cvt_out_vld_d4) == 1'b0) begin
       end else begin
           cvt_out_addr_d5 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [3:0] cvt_out_nz_mask_d5;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_nz_mask_d5 <= {4{1'b0}};
   end else begin
       if ((cvt_out_vld_d4) == 1'b1) begin
           cvt_out_nz_mask_d5 <= cvt_out_nz_mask_d4;
       // VCS coverage off
       end else if ((cvt_out_vld_d4) == 1'b0) begin
       end else begin
           cvt_out_nz_mask_d5 <= 'bx;
       // VCS coverage on
       end
   end
end
reg [63:0] cvt_out_pad_mask_d5;
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_pad_mask_d5 <= {64{1'b0}};
   end else begin
       if ((cvt_out_pad_vld_d4) == 1'b1) begin
           cvt_out_pad_mask_d5 <= cvt_out_pad_mask_d4;
       // VCS coverage off
       end else if ((cvt_out_pad_vld_d4) == 1'b0) begin
       end else begin
           cvt_out_pad_mask_d5 <= 'bx;
       // VCS coverage on
       end
   end
end



assign cvt_out_vld_bp = cfg_cvt_en[1] ? cvt_out_vld_d5 : cvt_out_vld_d1;
assign cvt_out_addr_bp = cfg_cvt_en[1] ? cvt_out_addr_d5 : cvt_out_addr_d1;
assign cvt_out_nz_mask_bp = cfg_cvt_en[2] ? cvt_out_nz_mask_d5 : cvt_out_nz_mask_d1;
assign cvt_out_pad_vld_bp = cfg_cvt_en[3] ? cvt_out_pad_vld_d5 : cvt_out_pad_vld_d1;
assign cvt_out_pad_mask_bp = ~cvt_out_pad_vld_bp ? 64'b0 : (cfg_cvt_en[3] ? cvt_out_pad_mask_d5 : cvt_out_pad_mask_d1);
assign cvt_out_reg_en_bp = cfg_cvt_en[4] ? cvt_out_reg_en_d5 : cvt_out_reg_en_d1;

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////////////////////////////////////////////////////
// stage 3: final pipeline stage //
////////////////////////////////////////////////////////////////////////
assign cvt_out_data_mix = cfg_cvt_en[5] ? cvt_data_cell : cvt_wr_data_d1;
//: my $dmaif=512;
//: my $atmm=32;
//: my $bpe = 8;
//: my $atmmbw= $atmm * $bpe;
//: my $Bnum = $dmaif / $bpe;
//: my $atmm_num= $Bnum / $atmm;
//: for(my $i = 0; $i < $Bnum; $i ++) {
//: my $b0 = $i * $bpe;
//: my $b1 = ($i + 1) * $bpe - 1;
//: print "assign cvt_out_data_masked[${b1}:${b0}] = cvt_out_pad_mask_bp[${i}] ? cfg_pad_value[${bpe}-1:0] : cvt_out_data_mix[${b1}:${b0}]; \n";
//: }
//: foreach my $k (0..$atmm_num -1) {
//: print qq(assign cvt_out_data_p${k} = cvt_out_nz_mask_bp[${k}] ? cvt_out_data_masked[(${k}+1)*${atmmbw}-1:${k}*${atmmbw}] : 0; \n);
//: ##&eperl::flop("-nodeclare   -rval \"${atmmbw}'b0\"  -en \"cvt_out_reg_en_bp == ${k}\" -d \"cvt_out_data_p${k}\" -q cvt_out_data_p${k}_reg");
//: &eperl::flop("-nodeclare   -rval \"${atmmbw}'b0\"   -d \"cvt_out_data_p${k}\" -q cvt_out_data_p${k}_reg");
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
assign cvt_out_data_masked[7:0] = cvt_out_pad_mask_bp[0] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[7:0]; 
assign cvt_out_data_masked[15:8] = cvt_out_pad_mask_bp[1] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[15:8]; 
assign cvt_out_data_masked[23:16] = cvt_out_pad_mask_bp[2] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[23:16]; 
assign cvt_out_data_masked[31:24] = cvt_out_pad_mask_bp[3] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[31:24]; 
assign cvt_out_data_masked[39:32] = cvt_out_pad_mask_bp[4] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[39:32]; 
assign cvt_out_data_masked[47:40] = cvt_out_pad_mask_bp[5] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[47:40]; 
assign cvt_out_data_masked[55:48] = cvt_out_pad_mask_bp[6] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[55:48]; 
assign cvt_out_data_masked[63:56] = cvt_out_pad_mask_bp[7] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[63:56]; 
assign cvt_out_data_masked[71:64] = cvt_out_pad_mask_bp[8] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[71:64]; 
assign cvt_out_data_masked[79:72] = cvt_out_pad_mask_bp[9] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[79:72]; 
assign cvt_out_data_masked[87:80] = cvt_out_pad_mask_bp[10] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[87:80]; 
assign cvt_out_data_masked[95:88] = cvt_out_pad_mask_bp[11] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[95:88]; 
assign cvt_out_data_masked[103:96] = cvt_out_pad_mask_bp[12] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[103:96]; 
assign cvt_out_data_masked[111:104] = cvt_out_pad_mask_bp[13] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[111:104]; 
assign cvt_out_data_masked[119:112] = cvt_out_pad_mask_bp[14] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[119:112]; 
assign cvt_out_data_masked[127:120] = cvt_out_pad_mask_bp[15] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[127:120]; 
assign cvt_out_data_masked[135:128] = cvt_out_pad_mask_bp[16] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[135:128]; 
assign cvt_out_data_masked[143:136] = cvt_out_pad_mask_bp[17] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[143:136]; 
assign cvt_out_data_masked[151:144] = cvt_out_pad_mask_bp[18] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[151:144]; 
assign cvt_out_data_masked[159:152] = cvt_out_pad_mask_bp[19] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[159:152]; 
assign cvt_out_data_masked[167:160] = cvt_out_pad_mask_bp[20] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[167:160]; 
assign cvt_out_data_masked[175:168] = cvt_out_pad_mask_bp[21] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[175:168]; 
assign cvt_out_data_masked[183:176] = cvt_out_pad_mask_bp[22] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[183:176]; 
assign cvt_out_data_masked[191:184] = cvt_out_pad_mask_bp[23] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[191:184]; 
assign cvt_out_data_masked[199:192] = cvt_out_pad_mask_bp[24] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[199:192]; 
assign cvt_out_data_masked[207:200] = cvt_out_pad_mask_bp[25] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[207:200]; 
assign cvt_out_data_masked[215:208] = cvt_out_pad_mask_bp[26] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[215:208]; 
assign cvt_out_data_masked[223:216] = cvt_out_pad_mask_bp[27] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[223:216]; 
assign cvt_out_data_masked[231:224] = cvt_out_pad_mask_bp[28] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[231:224]; 
assign cvt_out_data_masked[239:232] = cvt_out_pad_mask_bp[29] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[239:232]; 
assign cvt_out_data_masked[247:240] = cvt_out_pad_mask_bp[30] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[247:240]; 
assign cvt_out_data_masked[255:248] = cvt_out_pad_mask_bp[31] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[255:248]; 
assign cvt_out_data_masked[263:256] = cvt_out_pad_mask_bp[32] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[263:256]; 
assign cvt_out_data_masked[271:264] = cvt_out_pad_mask_bp[33] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[271:264]; 
assign cvt_out_data_masked[279:272] = cvt_out_pad_mask_bp[34] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[279:272]; 
assign cvt_out_data_masked[287:280] = cvt_out_pad_mask_bp[35] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[287:280]; 
assign cvt_out_data_masked[295:288] = cvt_out_pad_mask_bp[36] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[295:288]; 
assign cvt_out_data_masked[303:296] = cvt_out_pad_mask_bp[37] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[303:296]; 
assign cvt_out_data_masked[311:304] = cvt_out_pad_mask_bp[38] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[311:304]; 
assign cvt_out_data_masked[319:312] = cvt_out_pad_mask_bp[39] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[319:312]; 
assign cvt_out_data_masked[327:320] = cvt_out_pad_mask_bp[40] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[327:320]; 
assign cvt_out_data_masked[335:328] = cvt_out_pad_mask_bp[41] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[335:328]; 
assign cvt_out_data_masked[343:336] = cvt_out_pad_mask_bp[42] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[343:336]; 
assign cvt_out_data_masked[351:344] = cvt_out_pad_mask_bp[43] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[351:344]; 
assign cvt_out_data_masked[359:352] = cvt_out_pad_mask_bp[44] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[359:352]; 
assign cvt_out_data_masked[367:360] = cvt_out_pad_mask_bp[45] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[367:360]; 
assign cvt_out_data_masked[375:368] = cvt_out_pad_mask_bp[46] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[375:368]; 
assign cvt_out_data_masked[383:376] = cvt_out_pad_mask_bp[47] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[383:376]; 
assign cvt_out_data_masked[391:384] = cvt_out_pad_mask_bp[48] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[391:384]; 
assign cvt_out_data_masked[399:392] = cvt_out_pad_mask_bp[49] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[399:392]; 
assign cvt_out_data_masked[407:400] = cvt_out_pad_mask_bp[50] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[407:400]; 
assign cvt_out_data_masked[415:408] = cvt_out_pad_mask_bp[51] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[415:408]; 
assign cvt_out_data_masked[423:416] = cvt_out_pad_mask_bp[52] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[423:416]; 
assign cvt_out_data_masked[431:424] = cvt_out_pad_mask_bp[53] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[431:424]; 
assign cvt_out_data_masked[439:432] = cvt_out_pad_mask_bp[54] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[439:432]; 
assign cvt_out_data_masked[447:440] = cvt_out_pad_mask_bp[55] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[447:440]; 
assign cvt_out_data_masked[455:448] = cvt_out_pad_mask_bp[56] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[455:448]; 
assign cvt_out_data_masked[463:456] = cvt_out_pad_mask_bp[57] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[463:456]; 
assign cvt_out_data_masked[471:464] = cvt_out_pad_mask_bp[58] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[471:464]; 
assign cvt_out_data_masked[479:472] = cvt_out_pad_mask_bp[59] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[479:472]; 
assign cvt_out_data_masked[487:480] = cvt_out_pad_mask_bp[60] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[487:480]; 
assign cvt_out_data_masked[495:488] = cvt_out_pad_mask_bp[61] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[495:488]; 
assign cvt_out_data_masked[503:496] = cvt_out_pad_mask_bp[62] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[503:496]; 
assign cvt_out_data_masked[511:504] = cvt_out_pad_mask_bp[63] ? cfg_pad_value[8-1:0] : cvt_out_data_mix[511:504]; 
assign cvt_out_data_p0 = cvt_out_nz_mask_bp[0] ? cvt_out_data_masked[(0+1)*256-1:0*256] : 0; 
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_data_p0_reg <= 256'b0;
   end else begin
       cvt_out_data_p0_reg <= cvt_out_data_p0;
   end
end
assign cvt_out_data_p1 = cvt_out_nz_mask_bp[1] ? cvt_out_data_masked[(1+1)*256-1:1*256] : 0; 
always @(posedge nvdla_core_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_data_p1_reg <= 256'b0;
   end else begin
       cvt_out_data_p1_reg <= cvt_out_data_p1;
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign cvt_out_vld_reg_w = cvt_out_vld_bp | dat_cbuf_flush_vld_w;
//: my $dmaif=512/8;
//: my $atmc=64;
//: if ( $dmaif < $atmc ) {
//: my $k = int( log( int($atmc/$dmaif) ) / log(2) );
//: print "assign cvt_out_addr_reg_w = dat_cbuf_flush_vld_w ? dat_cbuf_flush_idx[17:${k}] : cvt_out_addr_bp; \n";
//: } else {
//: print "assign cvt_out_addr_reg_w = dat_cbuf_flush_vld_w ? dat_cbuf_flush_idx[16:0] : cvt_out_addr_bp; \n";
//: }
//: my $dmaif=512;
//: my $bpe = 8;
//: my $Bnum = $dmaif / $bpe;
//: my $atmc=64;
//: if($Bnum < $atmc) {
//: my $dmaif_num = $atmc / $Bnum;
//: my $k = int(log($dmaif_num)/log(2));
//: print qq(wire [$dmaif_num-1:0] cvt_out_sel_reg_w; \n);
//: if($dmaif_num == 2) {
//: print qq(assign cvt_out_sel_reg_w = dat_cbuf_flush_vld_w ? {dat_cbuf_flush_idx[0], ~dat_cbuf_flush_idx[0]} : {cvt_out_sel_bp[0],~cvt_out_sel_bp[0]}; \n);
//: } elsif($dmaif_num == 4) {
//: print qq(
//: assign cvt_out_sel_reg_w = dat_cbuf_flush_vld_w ? {dat_cbuf_flush_idx[1:0]==2'b11, dat_cbuf_flush_idx[1:0]==2'b10,
//: dat_cbuf_flush_idx[1:0]==2'b01, dat_cbuf_flush_idx[1:0]==2'b00} :
//: {cvt_out_sel_bp[1:0]==2'b11,cvt_out_sel_bp[1:0]==2'b10,
//: cvt_out_sel_bp[1:0]==2'b01,cvt_out_sel_bp[1:0]==2'b00};
//: );
//: }
//:
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"${dmaif_num}'b0\"  -en \"cvt_out_vld_reg_w\" -d \"cvt_out_sel_reg_w\" -q cvt_out_sel_reg");
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
assign cvt_out_addr_reg_w = dat_cbuf_flush_vld_w ? dat_cbuf_flush_idx[16:0] : cvt_out_addr_bp; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
//================ Non-SLCG clock domain ================//
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"1'b0\"   -d \"cvt_out_vld_reg_w\" -q cvt_out_vld_reg");
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{17{1'b0}}\"  -en \"cvt_out_vld_reg_w\" -d \"cvt_out_addr_reg_w\" -q cvt_out_addr_reg");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_ng_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_vld_reg <= 1'b0;
   end else begin
       cvt_out_vld_reg <= cvt_out_vld_reg_w;
   end
end
always @(posedge nvdla_core_ng_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       cvt_out_addr_reg <= {17{1'b0}};
   end else begin
       if ((cvt_out_vld_reg_w) == 1'b1) begin
           cvt_out_addr_reg <= cvt_out_addr_reg_w;
       // VCS coverage off
       end else if ((cvt_out_vld_reg_w) == 1'b0) begin
       end else begin
           cvt_out_addr_reg <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
////////////////////////////////////////////////////////////////////////
// Data buffer flush logic //
////////////////////////////////////////////////////////////////////////
assign {mon_dat_cbuf_flush_idx_w,
        dat_cbuf_flush_idx_w} = dat_cbuf_flush_idx + 1'b1;
//: my $bank_entry = 16 * 512;
//: my $bank_entry_bw = int( log( $bank_entry)/log(2) );
//: my $dmaif=512;
//: my $atmc=64*8;
//: my $k;
//: if($dmaif < $atmc) {
//: $k = int(log(int($atmc/$dmaif))/log(2));
//: } else {
//: $k = 0;
//: }
//: print qq(
//: assign dat_cbuf_flush_vld_w = ~dat_cbuf_flush_idx[${bank_entry_bw}+$k-1];//max value = half bank entry * 2^$k
//: assign dp2reg_dat_flush_done = dat_cbuf_flush_idx[${bank_entry_bw}+$k-1];
//: );
//| eperl: generated_beg (DO NOT EDIT BELOW)

assign dat_cbuf_flush_vld_w = ~dat_cbuf_flush_idx[13+0-1];//max value = half bank entry * 2^0
assign dp2reg_dat_flush_done = dat_cbuf_flush_idx[13+0-1];

//| eperl: generated_end (DO NOT EDIT ABOVE)
//assign dat_cbuf_flush_vld_w = ~dat_cbuf_flush_idx[17];
//assign dp2reg_dat_flush_done = dat_cbuf_flush_idx[17];
//: &eperl::flop("-nodeclare -clk nvdla_core_ng_clk  -rval \"{18{1'b0}}\"  -en \"dat_cbuf_flush_vld_w\" -d \"dat_cbuf_flush_idx_w\" -q dat_cbuf_flush_idx");
//| eperl: generated_beg (DO NOT EDIT BELOW)
always @(posedge nvdla_core_ng_clk or negedge nvdla_core_rstn) begin
   if (!nvdla_core_rstn) begin
       dat_cbuf_flush_idx <= {18{1'b0}};
   end else begin
       if ((dat_cbuf_flush_vld_w) == 1'b1) begin
           dat_cbuf_flush_idx <= dat_cbuf_flush_idx_w;
       // VCS coverage off
       end else if ((dat_cbuf_flush_vld_w) == 1'b0) begin
       end else begin
           dat_cbuf_flush_idx <= 'bx;
       // VCS coverage on
       end
   end
end

//| eperl: generated_end (DO NOT EDIT ABOVE)
//================ Non-SLCG clock domain end ================//
////////////////////////////////////////////////////////////////////////
// output ports //
////////////////////////////////////////////////////////////////////////
assign cdma2buf_dat_wr_en = cvt_out_vld_reg;
assign cdma2buf_dat_wr_addr = cvt_out_addr_reg;
//: my $dmaif=512;
//: my $bpe = 8;
//: my $Bnum = $dmaif / $bpe;
//: my $atmc=64;
//: if($Bnum < $atmc) {
//: print qq(assign cdma2buf_dat_wr_sel = cvt_out_sel_reg; \n );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

//| eperl: generated_end (DO NOT EDIT ABOVE)
assign cdma2buf_dat_wr_data = {
//: my $dmaif=512;
//: my $atmm=32;
//: my $bpe = 8;
//: my $Bnum = $dmaif / $bpe;
//: my $atmm_num= $Bnum / $atmm;
//: if($atmm_num > 1){
//: foreach my $i(0..$atmm_num -2) {
//: my $j = $atmm_num - $i -1;
//: print "cvt_out_data_p${j}_reg, ";
//: }
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)
cvt_out_data_p1_reg, 
//| eperl: generated_end (DO NOT EDIT ABOVE)
 cvt_out_data_p0_reg};
assign dat_nan_mask = {512{1'b1}};
assign dp2reg_nan_data_num = 32'b0;
assign dp2reg_inf_data_num = 32'b0;
////////////////////////////////////////////////////////////////////////
// Assertion //
////////////////////////////////////////////////////////////////////////
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
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_1x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_2x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_3x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_4x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_5x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_6x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_7x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_8x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_9x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_10x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_11x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_12x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_13x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_14x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_15x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cfg_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_47x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_48x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_49x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en | cvt_wr_en_d1))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_50x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_51x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_52x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_53x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_55x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_56x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(img2cvt_dat_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_57x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_58x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_59x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_wr_en_d1 | op_en_d0))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_62x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d1))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_63x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d1))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_65x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d1))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_66x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_pad_vld_d1))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_67x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d1 | cvt_out_vld_d2))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_68x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d1))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_69x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d2))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_70x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d2))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_72x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d2))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_73x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_pad_vld_d2))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_74x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d2 | cvt_out_vld_d3))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_75x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d2))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_76x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d3))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_77x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d3))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_79x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d3))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_80x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_pad_vld_d3))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_81x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d3 | cvt_out_vld_d4))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_82x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d3))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_83x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d4))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_84x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d4))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_86x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d4))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_87x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_pad_vld_d4))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_88x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d4 | cvt_out_vld_d5))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_89x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_d4))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_90x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_reg_en_bp[0]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_91x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_reg_en_bp[1]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_92x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_reg_en_bp[2]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_93x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_reg_en_bp[3]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_94x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_reg_en_bp[4]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_95x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_reg_en_bp[5]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_96x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_reg_en_bp[6]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_97x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_reg_en_bp[7]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_98x (nvdla_core_ng_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_reg_w))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_99x (nvdla_core_ng_clk, `ASSERT_RESET, 1'd1, (^(cvt_out_vld_reg_w))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_101x (nvdla_core_ng_clk, `ASSERT_RESET, 1'd1, (^(dat_cbuf_flush_vld_w))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_102x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(nan_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_no_x #(0,1,0,"No X's allowed on control signals") zzz_assert_no_x_103x (nvdla_core_clk, `ASSERT_RESET, 1'd1, (^(inf_reg_en))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_zero_one_hot #(0,3,0,"Error! CVT input conflict!") zzz_assert_zero_one_hot_16x (nvdla_core_clk, `ASSERT_RESET, {dc2cvt_dat_wr_en, wg2cvt_dat_wr_en, img2cvt_dat_wr_en}); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Wg set two high masks") zzz_assert_never_19x (nvdla_core_clk, `ASSERT_RESET, (wg2cvt_dat_wr_en & (|cvt_wr_mask[3:2]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Wg set mean flag") zzz_assert_never_22x (nvdla_core_clk, `ASSERT_RESET, (wg2cvt_dat_wr_en & cvt_wr_mean)); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Wg set uint flag") zzz_assert_never_24x (nvdla_core_clk, `ASSERT_RESET, (wg2cvt_dat_wr_en & cvt_wr_uint)); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Wg set sub h flag") zzz_assert_never_26x (nvdla_core_clk, `ASSERT_RESET, (wg2cvt_dat_wr_en & (|cvt_wr_sub_h))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Disable when input data") zzz_assert_never_17x (nvdla_core_clk, `ASSERT_RESET, (~op_en & cvt_wr_en)); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Dc set two high masks") zzz_assert_never_18x (nvdla_core_clk, `ASSERT_RESET, (dc2cvt_dat_wr_en & (|cvt_wr_mask[3:2]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Img set two hight masks when int8 input") zzz_assert_never_20x (nvdla_core_clk, `ASSERT_RESET, (img2cvt_dat_wr_en & (|cvt_wr_mask[3:2]) & is_input_int8[0])); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Dc set mean flag") zzz_assert_never_21x (nvdla_core_clk, `ASSERT_RESET, (dc2cvt_dat_wr_en & cvt_wr_mean)); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Dc set uint flag") zzz_assert_never_23x (nvdla_core_clk, `ASSERT_RESET, (dc2cvt_dat_wr_en & cvt_wr_uint)); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Dc set sub h flag") zzz_assert_never_25x (nvdla_core_clk, `ASSERT_RESET, (dc2cvt_dat_wr_en & (|cvt_wr_sub_h))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Input data mask error!") zzz_assert_never_27x (nvdla_core_clk, `ASSERT_RESET, (cvt_wr_en & (cvt_wr_mask != 4'h1) & (cvt_wr_mask != 4'h3) & (cvt_wr_mask != 4'hf))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Input data high mask set when input int8!") zzz_assert_never_28x (nvdla_core_clk, `ASSERT_RESET, (cvt_wr_mask[3] & cfg_in_int8)); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Expand when 16bit input!") zzz_assert_never_32x (nvdla_core_clk, `ASSERT_RESET, (cvt_wr_en & ~cfg_in_int8 & is_data_expand)); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Expand out of range when sel set!") zzz_assert_never_37x (nvdla_core_clk, `ASSERT_RESET, (cvt_wr_en & cvt_wr_sel & is_data_expand & cvt_wr_mask[1])); // spyglass disable W504 SelfDeterminedExpr-ML 
//nv_assert_never #(0,0,"Error! Half mask without output!") zzz_assert_never_38x (nvdla_core_clk, `ASSERT_RESET, (cvt_wr_en & ~cvt_wr_ext64 & ~cvt_wr_ext128 & ~cvt_wr_mask[1])); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! Half mask without output!") zzz_assert_never_38x (nvdla_core_clk, `ASSERT_RESET, (cvt_wr_en & ~cvt_wr_mask[1])); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! cvt mode is not enable when format change!") zzz_assert_never_40x (nvdla_core_clk, `ASSERT_RESET, (cvt_wr_en & ~cfg_cvt_en[0] & (cfg_in_precision[1:0] != cfg_proc_precision[1:0]))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! invalid precision transform!") zzz_assert_never_41x (nvdla_core_clk, `ASSERT_RESET, (cvt_wr_en & (cfg_in_precision[1:0] == 2'h2 ) & (cfg_proc_precision[1:0] != 2'h2 ))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! cell op0 is not ready when input valid!") zzz_assert_never_60x (nvdla_core_clk, `ASSERT_RESET, ((|(cell_en_d0 & ~mon_cell_op0_ready)))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! cell op1 is not ready when input valid!") zzz_assert_never_61x (nvdla_core_clk, `ASSERT_RESET, ((|(cell_en_d0 & ~mon_cell_op1_ready)))); // spyglass disable W504 SelfDeterminedExpr-ML 
  nv_assert_never #(0,0,"Error! CVT and flush write hazard!") zzz_assert_never_100x (nvdla_core_ng_clk, `ASSERT_RESET, (cvt_out_vld_bp & dat_cbuf_flush_vld_w)); // spyglass disable W504 SelfDeterminedExpr-ML 
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
endmodule // NV_NVDLA_CDMA_cvt
