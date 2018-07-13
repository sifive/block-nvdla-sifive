// ================================================================
// NVDLA Open Source Project
//
// Copyright(c) 2016 - 2017 NVIDIA Corporation. Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC_CORE_mac.v
// ================================================================
// NVDLA Open Source Project
// 
// Copyright(c) 2016 - 2017 NVIDIA Corporation.  Licensed under the
// NVDLA Open Hardware License; Check "LICENSE" which comes with 
// this distribution for more information.
// ================================================================
// File Name: NV_NVDLA_CMAC.h
module NV_NVDLA_CMAC_CORE_mac (
   nvdla_core_clk //|< i
  ,nvdla_wg_clk //|< i
  ,nvdla_core_rstn //|< i
  ,cfg_is_wg //|< i
  ,cfg_reg_en //|< i
  ,dat_actv_data //|< i
  ,dat_actv_nz //|< i
  ,dat_actv_pvld //|< i
  ,wt_actv_data //|< i
  ,wt_actv_nz //|< i
  ,wt_actv_pvld //|< i
  ,mac_out_data //|> o
  ,mac_out_pvld //|> o
  );
input nvdla_core_clk;
input nvdla_wg_clk;
input nvdla_core_rstn;
input cfg_is_wg;
input cfg_reg_en;
input [32*8 -1:0] dat_actv_data;
input [32 -1:0] dat_actv_nz;
input [32 -1:0] dat_actv_pvld;
input [32*8 -1:0] wt_actv_data;
input [32 -1:0] wt_actv_nz;
input [32 -1:0] wt_actv_pvld;
output [21 -1:0] mac_out_data;
output mac_out_pvld;
////////////////// unpack data&nz //////////////
//: for(my $i=0; $i<32; $i++){
//: my $bpe = 8;
//: my $data_msb = ($i+1) * $bpe - 1;
//: my $data_lsb = $i * $bpe;
//: print qq(
//: wire [${bpe}-1:0] wt_actv_data${i} = wt_actv_data[${data_msb}:${data_lsb}];
//: wire [${bpe}-1:0] dat_actv_data${i} = dat_actv_data[${data_msb}:${data_lsb}];
//: wire wt_actv_nz${i} = wt_actv_nz[${i}];
//: wire dat_actv_nz${i} = dat_actv_nz[${i}];
//: )
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [8-1:0] wt_actv_data0 = wt_actv_data[7:0];
wire [8-1:0] dat_actv_data0 = dat_actv_data[7:0];
wire wt_actv_nz0 = wt_actv_nz[0];
wire dat_actv_nz0 = dat_actv_nz[0];

wire [8-1:0] wt_actv_data1 = wt_actv_data[15:8];
wire [8-1:0] dat_actv_data1 = dat_actv_data[15:8];
wire wt_actv_nz1 = wt_actv_nz[1];
wire dat_actv_nz1 = dat_actv_nz[1];

wire [8-1:0] wt_actv_data2 = wt_actv_data[23:16];
wire [8-1:0] dat_actv_data2 = dat_actv_data[23:16];
wire wt_actv_nz2 = wt_actv_nz[2];
wire dat_actv_nz2 = dat_actv_nz[2];

wire [8-1:0] wt_actv_data3 = wt_actv_data[31:24];
wire [8-1:0] dat_actv_data3 = dat_actv_data[31:24];
wire wt_actv_nz3 = wt_actv_nz[3];
wire dat_actv_nz3 = dat_actv_nz[3];

wire [8-1:0] wt_actv_data4 = wt_actv_data[39:32];
wire [8-1:0] dat_actv_data4 = dat_actv_data[39:32];
wire wt_actv_nz4 = wt_actv_nz[4];
wire dat_actv_nz4 = dat_actv_nz[4];

wire [8-1:0] wt_actv_data5 = wt_actv_data[47:40];
wire [8-1:0] dat_actv_data5 = dat_actv_data[47:40];
wire wt_actv_nz5 = wt_actv_nz[5];
wire dat_actv_nz5 = dat_actv_nz[5];

wire [8-1:0] wt_actv_data6 = wt_actv_data[55:48];
wire [8-1:0] dat_actv_data6 = dat_actv_data[55:48];
wire wt_actv_nz6 = wt_actv_nz[6];
wire dat_actv_nz6 = dat_actv_nz[6];

wire [8-1:0] wt_actv_data7 = wt_actv_data[63:56];
wire [8-1:0] dat_actv_data7 = dat_actv_data[63:56];
wire wt_actv_nz7 = wt_actv_nz[7];
wire dat_actv_nz7 = dat_actv_nz[7];

wire [8-1:0] wt_actv_data8 = wt_actv_data[71:64];
wire [8-1:0] dat_actv_data8 = dat_actv_data[71:64];
wire wt_actv_nz8 = wt_actv_nz[8];
wire dat_actv_nz8 = dat_actv_nz[8];

wire [8-1:0] wt_actv_data9 = wt_actv_data[79:72];
wire [8-1:0] dat_actv_data9 = dat_actv_data[79:72];
wire wt_actv_nz9 = wt_actv_nz[9];
wire dat_actv_nz9 = dat_actv_nz[9];

wire [8-1:0] wt_actv_data10 = wt_actv_data[87:80];
wire [8-1:0] dat_actv_data10 = dat_actv_data[87:80];
wire wt_actv_nz10 = wt_actv_nz[10];
wire dat_actv_nz10 = dat_actv_nz[10];

wire [8-1:0] wt_actv_data11 = wt_actv_data[95:88];
wire [8-1:0] dat_actv_data11 = dat_actv_data[95:88];
wire wt_actv_nz11 = wt_actv_nz[11];
wire dat_actv_nz11 = dat_actv_nz[11];

wire [8-1:0] wt_actv_data12 = wt_actv_data[103:96];
wire [8-1:0] dat_actv_data12 = dat_actv_data[103:96];
wire wt_actv_nz12 = wt_actv_nz[12];
wire dat_actv_nz12 = dat_actv_nz[12];

wire [8-1:0] wt_actv_data13 = wt_actv_data[111:104];
wire [8-1:0] dat_actv_data13 = dat_actv_data[111:104];
wire wt_actv_nz13 = wt_actv_nz[13];
wire dat_actv_nz13 = dat_actv_nz[13];

wire [8-1:0] wt_actv_data14 = wt_actv_data[119:112];
wire [8-1:0] dat_actv_data14 = dat_actv_data[119:112];
wire wt_actv_nz14 = wt_actv_nz[14];
wire dat_actv_nz14 = dat_actv_nz[14];

wire [8-1:0] wt_actv_data15 = wt_actv_data[127:120];
wire [8-1:0] dat_actv_data15 = dat_actv_data[127:120];
wire wt_actv_nz15 = wt_actv_nz[15];
wire dat_actv_nz15 = dat_actv_nz[15];

wire [8-1:0] wt_actv_data16 = wt_actv_data[135:128];
wire [8-1:0] dat_actv_data16 = dat_actv_data[135:128];
wire wt_actv_nz16 = wt_actv_nz[16];
wire dat_actv_nz16 = dat_actv_nz[16];

wire [8-1:0] wt_actv_data17 = wt_actv_data[143:136];
wire [8-1:0] dat_actv_data17 = dat_actv_data[143:136];
wire wt_actv_nz17 = wt_actv_nz[17];
wire dat_actv_nz17 = dat_actv_nz[17];

wire [8-1:0] wt_actv_data18 = wt_actv_data[151:144];
wire [8-1:0] dat_actv_data18 = dat_actv_data[151:144];
wire wt_actv_nz18 = wt_actv_nz[18];
wire dat_actv_nz18 = dat_actv_nz[18];

wire [8-1:0] wt_actv_data19 = wt_actv_data[159:152];
wire [8-1:0] dat_actv_data19 = dat_actv_data[159:152];
wire wt_actv_nz19 = wt_actv_nz[19];
wire dat_actv_nz19 = dat_actv_nz[19];

wire [8-1:0] wt_actv_data20 = wt_actv_data[167:160];
wire [8-1:0] dat_actv_data20 = dat_actv_data[167:160];
wire wt_actv_nz20 = wt_actv_nz[20];
wire dat_actv_nz20 = dat_actv_nz[20];

wire [8-1:0] wt_actv_data21 = wt_actv_data[175:168];
wire [8-1:0] dat_actv_data21 = dat_actv_data[175:168];
wire wt_actv_nz21 = wt_actv_nz[21];
wire dat_actv_nz21 = dat_actv_nz[21];

wire [8-1:0] wt_actv_data22 = wt_actv_data[183:176];
wire [8-1:0] dat_actv_data22 = dat_actv_data[183:176];
wire wt_actv_nz22 = wt_actv_nz[22];
wire dat_actv_nz22 = dat_actv_nz[22];

wire [8-1:0] wt_actv_data23 = wt_actv_data[191:184];
wire [8-1:0] dat_actv_data23 = dat_actv_data[191:184];
wire wt_actv_nz23 = wt_actv_nz[23];
wire dat_actv_nz23 = dat_actv_nz[23];

wire [8-1:0] wt_actv_data24 = wt_actv_data[199:192];
wire [8-1:0] dat_actv_data24 = dat_actv_data[199:192];
wire wt_actv_nz24 = wt_actv_nz[24];
wire dat_actv_nz24 = dat_actv_nz[24];

wire [8-1:0] wt_actv_data25 = wt_actv_data[207:200];
wire [8-1:0] dat_actv_data25 = dat_actv_data[207:200];
wire wt_actv_nz25 = wt_actv_nz[25];
wire dat_actv_nz25 = dat_actv_nz[25];

wire [8-1:0] wt_actv_data26 = wt_actv_data[215:208];
wire [8-1:0] dat_actv_data26 = dat_actv_data[215:208];
wire wt_actv_nz26 = wt_actv_nz[26];
wire dat_actv_nz26 = dat_actv_nz[26];

wire [8-1:0] wt_actv_data27 = wt_actv_data[223:216];
wire [8-1:0] dat_actv_data27 = dat_actv_data[223:216];
wire wt_actv_nz27 = wt_actv_nz[27];
wire dat_actv_nz27 = dat_actv_nz[27];

wire [8-1:0] wt_actv_data28 = wt_actv_data[231:224];
wire [8-1:0] dat_actv_data28 = dat_actv_data[231:224];
wire wt_actv_nz28 = wt_actv_nz[28];
wire dat_actv_nz28 = dat_actv_nz[28];

wire [8-1:0] wt_actv_data29 = wt_actv_data[239:232];
wire [8-1:0] dat_actv_data29 = dat_actv_data[239:232];
wire wt_actv_nz29 = wt_actv_nz[29];
wire dat_actv_nz29 = dat_actv_nz[29];

wire [8-1:0] wt_actv_data30 = wt_actv_data[247:240];
wire [8-1:0] dat_actv_data30 = dat_actv_data[247:240];
wire wt_actv_nz30 = wt_actv_nz[30];
wire dat_actv_nz30 = dat_actv_nz[30];

wire [8-1:0] wt_actv_data31 = wt_actv_data[255:248];
wire [8-1:0] dat_actv_data31 = dat_actv_data[255:248];
wire wt_actv_nz31 = wt_actv_nz[31];
wire dat_actv_nz31 = dat_actv_nz[31];

//| eperl: generated_end (DO NOT EDIT ABOVE)
`ifdef DESIGNWARE_NOEXIST
wire signed [21 -1:0] sum_out;
wire [32 -1:0] op_out_pvld;
//: my $mul_result_width = 18;
//: my $bpe = 8;
//: my $rwidth = 21;
//: my $result_width = $rwidth * 32 * 2;
//: for (my $i=0; $i < 32; ++$i) {
//: print "assign op_out_pvld[${i}] = wt_actv_pvld[${i}] & dat_actv_pvld[${i}] & wt_actv_nz${i} & dat_actv_nz${i};\n";
//: print "wire signed [${mul_result_width}-1:0] mout_$i = (\$signed(wt_actv_data${i}) * \$signed(dat_actv_data${i})) & \$signed({${mul_result_width}{op_out_pvld[${i}]}});\n";
//: }
//:
//: print "assign sum_out = \n";
//: for (my $i=0; $i < 32; ++$i) {
//: print "    ";
//: print "+ " if ($i != 0);
//: print "mout_$i\n";
//: }
//: print "; \n";
//| eperl: generated_beg (DO NOT EDIT BELOW)
assign op_out_pvld[0] = wt_actv_pvld[0] & dat_actv_pvld[0] & wt_actv_nz0 & dat_actv_nz0;
wire signed [18-1:0] mout_0 = ($signed(wt_actv_data0) * $signed(dat_actv_data0)) & $signed({18{op_out_pvld[0]}});
assign op_out_pvld[1] = wt_actv_pvld[1] & dat_actv_pvld[1] & wt_actv_nz1 & dat_actv_nz1;
wire signed [18-1:0] mout_1 = ($signed(wt_actv_data1) * $signed(dat_actv_data1)) & $signed({18{op_out_pvld[1]}});
assign op_out_pvld[2] = wt_actv_pvld[2] & dat_actv_pvld[2] & wt_actv_nz2 & dat_actv_nz2;
wire signed [18-1:0] mout_2 = ($signed(wt_actv_data2) * $signed(dat_actv_data2)) & $signed({18{op_out_pvld[2]}});
assign op_out_pvld[3] = wt_actv_pvld[3] & dat_actv_pvld[3] & wt_actv_nz3 & dat_actv_nz3;
wire signed [18-1:0] mout_3 = ($signed(wt_actv_data3) * $signed(dat_actv_data3)) & $signed({18{op_out_pvld[3]}});
assign op_out_pvld[4] = wt_actv_pvld[4] & dat_actv_pvld[4] & wt_actv_nz4 & dat_actv_nz4;
wire signed [18-1:0] mout_4 = ($signed(wt_actv_data4) * $signed(dat_actv_data4)) & $signed({18{op_out_pvld[4]}});
assign op_out_pvld[5] = wt_actv_pvld[5] & dat_actv_pvld[5] & wt_actv_nz5 & dat_actv_nz5;
wire signed [18-1:0] mout_5 = ($signed(wt_actv_data5) * $signed(dat_actv_data5)) & $signed({18{op_out_pvld[5]}});
assign op_out_pvld[6] = wt_actv_pvld[6] & dat_actv_pvld[6] & wt_actv_nz6 & dat_actv_nz6;
wire signed [18-1:0] mout_6 = ($signed(wt_actv_data6) * $signed(dat_actv_data6)) & $signed({18{op_out_pvld[6]}});
assign op_out_pvld[7] = wt_actv_pvld[7] & dat_actv_pvld[7] & wt_actv_nz7 & dat_actv_nz7;
wire signed [18-1:0] mout_7 = ($signed(wt_actv_data7) * $signed(dat_actv_data7)) & $signed({18{op_out_pvld[7]}});
assign op_out_pvld[8] = wt_actv_pvld[8] & dat_actv_pvld[8] & wt_actv_nz8 & dat_actv_nz8;
wire signed [18-1:0] mout_8 = ($signed(wt_actv_data8) * $signed(dat_actv_data8)) & $signed({18{op_out_pvld[8]}});
assign op_out_pvld[9] = wt_actv_pvld[9] & dat_actv_pvld[9] & wt_actv_nz9 & dat_actv_nz9;
wire signed [18-1:0] mout_9 = ($signed(wt_actv_data9) * $signed(dat_actv_data9)) & $signed({18{op_out_pvld[9]}});
assign op_out_pvld[10] = wt_actv_pvld[10] & dat_actv_pvld[10] & wt_actv_nz10 & dat_actv_nz10;
wire signed [18-1:0] mout_10 = ($signed(wt_actv_data10) * $signed(dat_actv_data10)) & $signed({18{op_out_pvld[10]}});
assign op_out_pvld[11] = wt_actv_pvld[11] & dat_actv_pvld[11] & wt_actv_nz11 & dat_actv_nz11;
wire signed [18-1:0] mout_11 = ($signed(wt_actv_data11) * $signed(dat_actv_data11)) & $signed({18{op_out_pvld[11]}});
assign op_out_pvld[12] = wt_actv_pvld[12] & dat_actv_pvld[12] & wt_actv_nz12 & dat_actv_nz12;
wire signed [18-1:0] mout_12 = ($signed(wt_actv_data12) * $signed(dat_actv_data12)) & $signed({18{op_out_pvld[12]}});
assign op_out_pvld[13] = wt_actv_pvld[13] & dat_actv_pvld[13] & wt_actv_nz13 & dat_actv_nz13;
wire signed [18-1:0] mout_13 = ($signed(wt_actv_data13) * $signed(dat_actv_data13)) & $signed({18{op_out_pvld[13]}});
assign op_out_pvld[14] = wt_actv_pvld[14] & dat_actv_pvld[14] & wt_actv_nz14 & dat_actv_nz14;
wire signed [18-1:0] mout_14 = ($signed(wt_actv_data14) * $signed(dat_actv_data14)) & $signed({18{op_out_pvld[14]}});
assign op_out_pvld[15] = wt_actv_pvld[15] & dat_actv_pvld[15] & wt_actv_nz15 & dat_actv_nz15;
wire signed [18-1:0] mout_15 = ($signed(wt_actv_data15) * $signed(dat_actv_data15)) & $signed({18{op_out_pvld[15]}});
assign op_out_pvld[16] = wt_actv_pvld[16] & dat_actv_pvld[16] & wt_actv_nz16 & dat_actv_nz16;
wire signed [18-1:0] mout_16 = ($signed(wt_actv_data16) * $signed(dat_actv_data16)) & $signed({18{op_out_pvld[16]}});
assign op_out_pvld[17] = wt_actv_pvld[17] & dat_actv_pvld[17] & wt_actv_nz17 & dat_actv_nz17;
wire signed [18-1:0] mout_17 = ($signed(wt_actv_data17) * $signed(dat_actv_data17)) & $signed({18{op_out_pvld[17]}});
assign op_out_pvld[18] = wt_actv_pvld[18] & dat_actv_pvld[18] & wt_actv_nz18 & dat_actv_nz18;
wire signed [18-1:0] mout_18 = ($signed(wt_actv_data18) * $signed(dat_actv_data18)) & $signed({18{op_out_pvld[18]}});
assign op_out_pvld[19] = wt_actv_pvld[19] & dat_actv_pvld[19] & wt_actv_nz19 & dat_actv_nz19;
wire signed [18-1:0] mout_19 = ($signed(wt_actv_data19) * $signed(dat_actv_data19)) & $signed({18{op_out_pvld[19]}});
assign op_out_pvld[20] = wt_actv_pvld[20] & dat_actv_pvld[20] & wt_actv_nz20 & dat_actv_nz20;
wire signed [18-1:0] mout_20 = ($signed(wt_actv_data20) * $signed(dat_actv_data20)) & $signed({18{op_out_pvld[20]}});
assign op_out_pvld[21] = wt_actv_pvld[21] & dat_actv_pvld[21] & wt_actv_nz21 & dat_actv_nz21;
wire signed [18-1:0] mout_21 = ($signed(wt_actv_data21) * $signed(dat_actv_data21)) & $signed({18{op_out_pvld[21]}});
assign op_out_pvld[22] = wt_actv_pvld[22] & dat_actv_pvld[22] & wt_actv_nz22 & dat_actv_nz22;
wire signed [18-1:0] mout_22 = ($signed(wt_actv_data22) * $signed(dat_actv_data22)) & $signed({18{op_out_pvld[22]}});
assign op_out_pvld[23] = wt_actv_pvld[23] & dat_actv_pvld[23] & wt_actv_nz23 & dat_actv_nz23;
wire signed [18-1:0] mout_23 = ($signed(wt_actv_data23) * $signed(dat_actv_data23)) & $signed({18{op_out_pvld[23]}});
assign op_out_pvld[24] = wt_actv_pvld[24] & dat_actv_pvld[24] & wt_actv_nz24 & dat_actv_nz24;
wire signed [18-1:0] mout_24 = ($signed(wt_actv_data24) * $signed(dat_actv_data24)) & $signed({18{op_out_pvld[24]}});
assign op_out_pvld[25] = wt_actv_pvld[25] & dat_actv_pvld[25] & wt_actv_nz25 & dat_actv_nz25;
wire signed [18-1:0] mout_25 = ($signed(wt_actv_data25) * $signed(dat_actv_data25)) & $signed({18{op_out_pvld[25]}});
assign op_out_pvld[26] = wt_actv_pvld[26] & dat_actv_pvld[26] & wt_actv_nz26 & dat_actv_nz26;
wire signed [18-1:0] mout_26 = ($signed(wt_actv_data26) * $signed(dat_actv_data26)) & $signed({18{op_out_pvld[26]}});
assign op_out_pvld[27] = wt_actv_pvld[27] & dat_actv_pvld[27] & wt_actv_nz27 & dat_actv_nz27;
wire signed [18-1:0] mout_27 = ($signed(wt_actv_data27) * $signed(dat_actv_data27)) & $signed({18{op_out_pvld[27]}});
assign op_out_pvld[28] = wt_actv_pvld[28] & dat_actv_pvld[28] & wt_actv_nz28 & dat_actv_nz28;
wire signed [18-1:0] mout_28 = ($signed(wt_actv_data28) * $signed(dat_actv_data28)) & $signed({18{op_out_pvld[28]}});
assign op_out_pvld[29] = wt_actv_pvld[29] & dat_actv_pvld[29] & wt_actv_nz29 & dat_actv_nz29;
wire signed [18-1:0] mout_29 = ($signed(wt_actv_data29) * $signed(dat_actv_data29)) & $signed({18{op_out_pvld[29]}});
assign op_out_pvld[30] = wt_actv_pvld[30] & dat_actv_pvld[30] & wt_actv_nz30 & dat_actv_nz30;
wire signed [18-1:0] mout_30 = ($signed(wt_actv_data30) * $signed(dat_actv_data30)) & $signed({18{op_out_pvld[30]}});
assign op_out_pvld[31] = wt_actv_pvld[31] & dat_actv_pvld[31] & wt_actv_nz31 & dat_actv_nz31;
wire signed [18-1:0] mout_31 = ($signed(wt_actv_data31) * $signed(dat_actv_data31)) & $signed({18{op_out_pvld[31]}});
assign sum_out = 
    mout_0
    + mout_1
    + mout_2
    + mout_3
    + mout_4
    + mout_5
    + mout_6
    + mout_7
    + mout_8
    + mout_9
    + mout_10
    + mout_11
    + mout_12
    + mout_13
    + mout_14
    + mout_15
    + mout_16
    + mout_17
    + mout_18
    + mout_19
    + mout_20
    + mout_21
    + mout_22
    + mout_23
    + mout_24
    + mout_25
    + mout_26
    + mout_27
    + mout_28
    + mout_29
    + mout_30
    + mout_31
; 

//| eperl: generated_end (DO NOT EDIT ABOVE)
`endif
`ifndef DESIGNWARE_NOEXIST
wire [21 -1:0] sum_out;
wire [21*32*2-1:0] full_mul_result;
wire [32 -1:0] op_out_pvld;
//: my $mul_result_width = 18;
//: my $bpe = 8;
//: my $rwidth = 21;
//: for (my $i=0; $i < 32; ++$i) {
//: my $j = $i * 2;
//: my $k = $i * 2 + 1;
//: print qq(
//: wire [$mul_result_width-1:0] mout_$j;
//: wire [$mul_result_width-1:0] mout_$k;
//: DW02_multp #(${bpe}, ${bpe}, $mul_result_width) mul$i (
//: .a(wt_actv_data${i}),
//: .b(dat_actv_data${i}),
//: .tc(1'b1),
//: .out0(mout_${j}),
//: .out1(mout_${k})
//: );
//: assign op_out_pvld[${i}] = wt_actv_pvld[${i}] & dat_actv_pvld[${i}] & wt_actv_nz${i} & dat_actv_nz${i};
//: );
//:
//: my $offset = $j * $rwidth;
//: my $sign_extend_bits = 21 - $mul_result_width;
//: print qq(
//: assign full_mul_result[$offset + $rwidth - 1 : $offset] = {{${sign_extend_bits}{mout_${j}[${mul_result_width}-1]}}, mout_$j} & {${rwidth}{op_out_pvld[$i]}}; );
//: $offset = $k * $rwidth;
//: print qq(
//: assign full_mul_result[$offset + $rwidth - 1 : $offset] = {{${sign_extend_bits}{mout_${k}[${mul_result_width}-1]}}, mout_$k} & {${rwidth}{op_out_pvld[$i]}}; );
//: }
//| eperl: generated_beg (DO NOT EDIT BELOW)

wire [18-1:0] mout_0;
wire [18-1:0] mout_1;
DW02_multp #(8, 8, 18) mul0 (
.a(wt_actv_data0),
.b(dat_actv_data0),
.tc(1'b1),
.out0(mout_0),
.out1(mout_1)
);
assign op_out_pvld[0] = wt_actv_pvld[0] & dat_actv_pvld[0] & wt_actv_nz0 & dat_actv_nz0;

assign full_mul_result[0 + 21 - 1 : 0] = {{3{mout_0[18-1]}}, mout_0} & {21{op_out_pvld[0]}}; 
assign full_mul_result[21 + 21 - 1 : 21] = {{3{mout_1[18-1]}}, mout_1} & {21{op_out_pvld[0]}}; 
wire [18-1:0] mout_2;
wire [18-1:0] mout_3;
DW02_multp #(8, 8, 18) mul1 (
.a(wt_actv_data1),
.b(dat_actv_data1),
.tc(1'b1),
.out0(mout_2),
.out1(mout_3)
);
assign op_out_pvld[1] = wt_actv_pvld[1] & dat_actv_pvld[1] & wt_actv_nz1 & dat_actv_nz1;

assign full_mul_result[42 + 21 - 1 : 42] = {{3{mout_2[18-1]}}, mout_2} & {21{op_out_pvld[1]}}; 
assign full_mul_result[63 + 21 - 1 : 63] = {{3{mout_3[18-1]}}, mout_3} & {21{op_out_pvld[1]}}; 
wire [18-1:0] mout_4;
wire [18-1:0] mout_5;
DW02_multp #(8, 8, 18) mul2 (
.a(wt_actv_data2),
.b(dat_actv_data2),
.tc(1'b1),
.out0(mout_4),
.out1(mout_5)
);
assign op_out_pvld[2] = wt_actv_pvld[2] & dat_actv_pvld[2] & wt_actv_nz2 & dat_actv_nz2;

assign full_mul_result[84 + 21 - 1 : 84] = {{3{mout_4[18-1]}}, mout_4} & {21{op_out_pvld[2]}}; 
assign full_mul_result[105 + 21 - 1 : 105] = {{3{mout_5[18-1]}}, mout_5} & {21{op_out_pvld[2]}}; 
wire [18-1:0] mout_6;
wire [18-1:0] mout_7;
DW02_multp #(8, 8, 18) mul3 (
.a(wt_actv_data3),
.b(dat_actv_data3),
.tc(1'b1),
.out0(mout_6),
.out1(mout_7)
);
assign op_out_pvld[3] = wt_actv_pvld[3] & dat_actv_pvld[3] & wt_actv_nz3 & dat_actv_nz3;

assign full_mul_result[126 + 21 - 1 : 126] = {{3{mout_6[18-1]}}, mout_6} & {21{op_out_pvld[3]}}; 
assign full_mul_result[147 + 21 - 1 : 147] = {{3{mout_7[18-1]}}, mout_7} & {21{op_out_pvld[3]}}; 
wire [18-1:0] mout_8;
wire [18-1:0] mout_9;
DW02_multp #(8, 8, 18) mul4 (
.a(wt_actv_data4),
.b(dat_actv_data4),
.tc(1'b1),
.out0(mout_8),
.out1(mout_9)
);
assign op_out_pvld[4] = wt_actv_pvld[4] & dat_actv_pvld[4] & wt_actv_nz4 & dat_actv_nz4;

assign full_mul_result[168 + 21 - 1 : 168] = {{3{mout_8[18-1]}}, mout_8} & {21{op_out_pvld[4]}}; 
assign full_mul_result[189 + 21 - 1 : 189] = {{3{mout_9[18-1]}}, mout_9} & {21{op_out_pvld[4]}}; 
wire [18-1:0] mout_10;
wire [18-1:0] mout_11;
DW02_multp #(8, 8, 18) mul5 (
.a(wt_actv_data5),
.b(dat_actv_data5),
.tc(1'b1),
.out0(mout_10),
.out1(mout_11)
);
assign op_out_pvld[5] = wt_actv_pvld[5] & dat_actv_pvld[5] & wt_actv_nz5 & dat_actv_nz5;

assign full_mul_result[210 + 21 - 1 : 210] = {{3{mout_10[18-1]}}, mout_10} & {21{op_out_pvld[5]}}; 
assign full_mul_result[231 + 21 - 1 : 231] = {{3{mout_11[18-1]}}, mout_11} & {21{op_out_pvld[5]}}; 
wire [18-1:0] mout_12;
wire [18-1:0] mout_13;
DW02_multp #(8, 8, 18) mul6 (
.a(wt_actv_data6),
.b(dat_actv_data6),
.tc(1'b1),
.out0(mout_12),
.out1(mout_13)
);
assign op_out_pvld[6] = wt_actv_pvld[6] & dat_actv_pvld[6] & wt_actv_nz6 & dat_actv_nz6;

assign full_mul_result[252 + 21 - 1 : 252] = {{3{mout_12[18-1]}}, mout_12} & {21{op_out_pvld[6]}}; 
assign full_mul_result[273 + 21 - 1 : 273] = {{3{mout_13[18-1]}}, mout_13} & {21{op_out_pvld[6]}}; 
wire [18-1:0] mout_14;
wire [18-1:0] mout_15;
DW02_multp #(8, 8, 18) mul7 (
.a(wt_actv_data7),
.b(dat_actv_data7),
.tc(1'b1),
.out0(mout_14),
.out1(mout_15)
);
assign op_out_pvld[7] = wt_actv_pvld[7] & dat_actv_pvld[7] & wt_actv_nz7 & dat_actv_nz7;

assign full_mul_result[294 + 21 - 1 : 294] = {{3{mout_14[18-1]}}, mout_14} & {21{op_out_pvld[7]}}; 
assign full_mul_result[315 + 21 - 1 : 315] = {{3{mout_15[18-1]}}, mout_15} & {21{op_out_pvld[7]}}; 
wire [18-1:0] mout_16;
wire [18-1:0] mout_17;
DW02_multp #(8, 8, 18) mul8 (
.a(wt_actv_data8),
.b(dat_actv_data8),
.tc(1'b1),
.out0(mout_16),
.out1(mout_17)
);
assign op_out_pvld[8] = wt_actv_pvld[8] & dat_actv_pvld[8] & wt_actv_nz8 & dat_actv_nz8;

assign full_mul_result[336 + 21 - 1 : 336] = {{3{mout_16[18-1]}}, mout_16} & {21{op_out_pvld[8]}}; 
assign full_mul_result[357 + 21 - 1 : 357] = {{3{mout_17[18-1]}}, mout_17} & {21{op_out_pvld[8]}}; 
wire [18-1:0] mout_18;
wire [18-1:0] mout_19;
DW02_multp #(8, 8, 18) mul9 (
.a(wt_actv_data9),
.b(dat_actv_data9),
.tc(1'b1),
.out0(mout_18),
.out1(mout_19)
);
assign op_out_pvld[9] = wt_actv_pvld[9] & dat_actv_pvld[9] & wt_actv_nz9 & dat_actv_nz9;

assign full_mul_result[378 + 21 - 1 : 378] = {{3{mout_18[18-1]}}, mout_18} & {21{op_out_pvld[9]}}; 
assign full_mul_result[399 + 21 - 1 : 399] = {{3{mout_19[18-1]}}, mout_19} & {21{op_out_pvld[9]}}; 
wire [18-1:0] mout_20;
wire [18-1:0] mout_21;
DW02_multp #(8, 8, 18) mul10 (
.a(wt_actv_data10),
.b(dat_actv_data10),
.tc(1'b1),
.out0(mout_20),
.out1(mout_21)
);
assign op_out_pvld[10] = wt_actv_pvld[10] & dat_actv_pvld[10] & wt_actv_nz10 & dat_actv_nz10;

assign full_mul_result[420 + 21 - 1 : 420] = {{3{mout_20[18-1]}}, mout_20} & {21{op_out_pvld[10]}}; 
assign full_mul_result[441 + 21 - 1 : 441] = {{3{mout_21[18-1]}}, mout_21} & {21{op_out_pvld[10]}}; 
wire [18-1:0] mout_22;
wire [18-1:0] mout_23;
DW02_multp #(8, 8, 18) mul11 (
.a(wt_actv_data11),
.b(dat_actv_data11),
.tc(1'b1),
.out0(mout_22),
.out1(mout_23)
);
assign op_out_pvld[11] = wt_actv_pvld[11] & dat_actv_pvld[11] & wt_actv_nz11 & dat_actv_nz11;

assign full_mul_result[462 + 21 - 1 : 462] = {{3{mout_22[18-1]}}, mout_22} & {21{op_out_pvld[11]}}; 
assign full_mul_result[483 + 21 - 1 : 483] = {{3{mout_23[18-1]}}, mout_23} & {21{op_out_pvld[11]}}; 
wire [18-1:0] mout_24;
wire [18-1:0] mout_25;
DW02_multp #(8, 8, 18) mul12 (
.a(wt_actv_data12),
.b(dat_actv_data12),
.tc(1'b1),
.out0(mout_24),
.out1(mout_25)
);
assign op_out_pvld[12] = wt_actv_pvld[12] & dat_actv_pvld[12] & wt_actv_nz12 & dat_actv_nz12;

assign full_mul_result[504 + 21 - 1 : 504] = {{3{mout_24[18-1]}}, mout_24} & {21{op_out_pvld[12]}}; 
assign full_mul_result[525 + 21 - 1 : 525] = {{3{mout_25[18-1]}}, mout_25} & {21{op_out_pvld[12]}}; 
wire [18-1:0] mout_26;
wire [18-1:0] mout_27;
DW02_multp #(8, 8, 18) mul13 (
.a(wt_actv_data13),
.b(dat_actv_data13),
.tc(1'b1),
.out0(mout_26),
.out1(mout_27)
);
assign op_out_pvld[13] = wt_actv_pvld[13] & dat_actv_pvld[13] & wt_actv_nz13 & dat_actv_nz13;

assign full_mul_result[546 + 21 - 1 : 546] = {{3{mout_26[18-1]}}, mout_26} & {21{op_out_pvld[13]}}; 
assign full_mul_result[567 + 21 - 1 : 567] = {{3{mout_27[18-1]}}, mout_27} & {21{op_out_pvld[13]}}; 
wire [18-1:0] mout_28;
wire [18-1:0] mout_29;
DW02_multp #(8, 8, 18) mul14 (
.a(wt_actv_data14),
.b(dat_actv_data14),
.tc(1'b1),
.out0(mout_28),
.out1(mout_29)
);
assign op_out_pvld[14] = wt_actv_pvld[14] & dat_actv_pvld[14] & wt_actv_nz14 & dat_actv_nz14;

assign full_mul_result[588 + 21 - 1 : 588] = {{3{mout_28[18-1]}}, mout_28} & {21{op_out_pvld[14]}}; 
assign full_mul_result[609 + 21 - 1 : 609] = {{3{mout_29[18-1]}}, mout_29} & {21{op_out_pvld[14]}}; 
wire [18-1:0] mout_30;
wire [18-1:0] mout_31;
DW02_multp #(8, 8, 18) mul15 (
.a(wt_actv_data15),
.b(dat_actv_data15),
.tc(1'b1),
.out0(mout_30),
.out1(mout_31)
);
assign op_out_pvld[15] = wt_actv_pvld[15] & dat_actv_pvld[15] & wt_actv_nz15 & dat_actv_nz15;

assign full_mul_result[630 + 21 - 1 : 630] = {{3{mout_30[18-1]}}, mout_30} & {21{op_out_pvld[15]}}; 
assign full_mul_result[651 + 21 - 1 : 651] = {{3{mout_31[18-1]}}, mout_31} & {21{op_out_pvld[15]}}; 
wire [18-1:0] mout_32;
wire [18-1:0] mout_33;
DW02_multp #(8, 8, 18) mul16 (
.a(wt_actv_data16),
.b(dat_actv_data16),
.tc(1'b1),
.out0(mout_32),
.out1(mout_33)
);
assign op_out_pvld[16] = wt_actv_pvld[16] & dat_actv_pvld[16] & wt_actv_nz16 & dat_actv_nz16;

assign full_mul_result[672 + 21 - 1 : 672] = {{3{mout_32[18-1]}}, mout_32} & {21{op_out_pvld[16]}}; 
assign full_mul_result[693 + 21 - 1 : 693] = {{3{mout_33[18-1]}}, mout_33} & {21{op_out_pvld[16]}}; 
wire [18-1:0] mout_34;
wire [18-1:0] mout_35;
DW02_multp #(8, 8, 18) mul17 (
.a(wt_actv_data17),
.b(dat_actv_data17),
.tc(1'b1),
.out0(mout_34),
.out1(mout_35)
);
assign op_out_pvld[17] = wt_actv_pvld[17] & dat_actv_pvld[17] & wt_actv_nz17 & dat_actv_nz17;

assign full_mul_result[714 + 21 - 1 : 714] = {{3{mout_34[18-1]}}, mout_34} & {21{op_out_pvld[17]}}; 
assign full_mul_result[735 + 21 - 1 : 735] = {{3{mout_35[18-1]}}, mout_35} & {21{op_out_pvld[17]}}; 
wire [18-1:0] mout_36;
wire [18-1:0] mout_37;
DW02_multp #(8, 8, 18) mul18 (
.a(wt_actv_data18),
.b(dat_actv_data18),
.tc(1'b1),
.out0(mout_36),
.out1(mout_37)
);
assign op_out_pvld[18] = wt_actv_pvld[18] & dat_actv_pvld[18] & wt_actv_nz18 & dat_actv_nz18;

assign full_mul_result[756 + 21 - 1 : 756] = {{3{mout_36[18-1]}}, mout_36} & {21{op_out_pvld[18]}}; 
assign full_mul_result[777 + 21 - 1 : 777] = {{3{mout_37[18-1]}}, mout_37} & {21{op_out_pvld[18]}}; 
wire [18-1:0] mout_38;
wire [18-1:0] mout_39;
DW02_multp #(8, 8, 18) mul19 (
.a(wt_actv_data19),
.b(dat_actv_data19),
.tc(1'b1),
.out0(mout_38),
.out1(mout_39)
);
assign op_out_pvld[19] = wt_actv_pvld[19] & dat_actv_pvld[19] & wt_actv_nz19 & dat_actv_nz19;

assign full_mul_result[798 + 21 - 1 : 798] = {{3{mout_38[18-1]}}, mout_38} & {21{op_out_pvld[19]}}; 
assign full_mul_result[819 + 21 - 1 : 819] = {{3{mout_39[18-1]}}, mout_39} & {21{op_out_pvld[19]}}; 
wire [18-1:0] mout_40;
wire [18-1:0] mout_41;
DW02_multp #(8, 8, 18) mul20 (
.a(wt_actv_data20),
.b(dat_actv_data20),
.tc(1'b1),
.out0(mout_40),
.out1(mout_41)
);
assign op_out_pvld[20] = wt_actv_pvld[20] & dat_actv_pvld[20] & wt_actv_nz20 & dat_actv_nz20;

assign full_mul_result[840 + 21 - 1 : 840] = {{3{mout_40[18-1]}}, mout_40} & {21{op_out_pvld[20]}}; 
assign full_mul_result[861 + 21 - 1 : 861] = {{3{mout_41[18-1]}}, mout_41} & {21{op_out_pvld[20]}}; 
wire [18-1:0] mout_42;
wire [18-1:0] mout_43;
DW02_multp #(8, 8, 18) mul21 (
.a(wt_actv_data21),
.b(dat_actv_data21),
.tc(1'b1),
.out0(mout_42),
.out1(mout_43)
);
assign op_out_pvld[21] = wt_actv_pvld[21] & dat_actv_pvld[21] & wt_actv_nz21 & dat_actv_nz21;

assign full_mul_result[882 + 21 - 1 : 882] = {{3{mout_42[18-1]}}, mout_42} & {21{op_out_pvld[21]}}; 
assign full_mul_result[903 + 21 - 1 : 903] = {{3{mout_43[18-1]}}, mout_43} & {21{op_out_pvld[21]}}; 
wire [18-1:0] mout_44;
wire [18-1:0] mout_45;
DW02_multp #(8, 8, 18) mul22 (
.a(wt_actv_data22),
.b(dat_actv_data22),
.tc(1'b1),
.out0(mout_44),
.out1(mout_45)
);
assign op_out_pvld[22] = wt_actv_pvld[22] & dat_actv_pvld[22] & wt_actv_nz22 & dat_actv_nz22;

assign full_mul_result[924 + 21 - 1 : 924] = {{3{mout_44[18-1]}}, mout_44} & {21{op_out_pvld[22]}}; 
assign full_mul_result[945 + 21 - 1 : 945] = {{3{mout_45[18-1]}}, mout_45} & {21{op_out_pvld[22]}}; 
wire [18-1:0] mout_46;
wire [18-1:0] mout_47;
DW02_multp #(8, 8, 18) mul23 (
.a(wt_actv_data23),
.b(dat_actv_data23),
.tc(1'b1),
.out0(mout_46),
.out1(mout_47)
);
assign op_out_pvld[23] = wt_actv_pvld[23] & dat_actv_pvld[23] & wt_actv_nz23 & dat_actv_nz23;

assign full_mul_result[966 + 21 - 1 : 966] = {{3{mout_46[18-1]}}, mout_46} & {21{op_out_pvld[23]}}; 
assign full_mul_result[987 + 21 - 1 : 987] = {{3{mout_47[18-1]}}, mout_47} & {21{op_out_pvld[23]}}; 
wire [18-1:0] mout_48;
wire [18-1:0] mout_49;
DW02_multp #(8, 8, 18) mul24 (
.a(wt_actv_data24),
.b(dat_actv_data24),
.tc(1'b1),
.out0(mout_48),
.out1(mout_49)
);
assign op_out_pvld[24] = wt_actv_pvld[24] & dat_actv_pvld[24] & wt_actv_nz24 & dat_actv_nz24;

assign full_mul_result[1008 + 21 - 1 : 1008] = {{3{mout_48[18-1]}}, mout_48} & {21{op_out_pvld[24]}}; 
assign full_mul_result[1029 + 21 - 1 : 1029] = {{3{mout_49[18-1]}}, mout_49} & {21{op_out_pvld[24]}}; 
wire [18-1:0] mout_50;
wire [18-1:0] mout_51;
DW02_multp #(8, 8, 18) mul25 (
.a(wt_actv_data25),
.b(dat_actv_data25),
.tc(1'b1),
.out0(mout_50),
.out1(mout_51)
);
assign op_out_pvld[25] = wt_actv_pvld[25] & dat_actv_pvld[25] & wt_actv_nz25 & dat_actv_nz25;

assign full_mul_result[1050 + 21 - 1 : 1050] = {{3{mout_50[18-1]}}, mout_50} & {21{op_out_pvld[25]}}; 
assign full_mul_result[1071 + 21 - 1 : 1071] = {{3{mout_51[18-1]}}, mout_51} & {21{op_out_pvld[25]}}; 
wire [18-1:0] mout_52;
wire [18-1:0] mout_53;
DW02_multp #(8, 8, 18) mul26 (
.a(wt_actv_data26),
.b(dat_actv_data26),
.tc(1'b1),
.out0(mout_52),
.out1(mout_53)
);
assign op_out_pvld[26] = wt_actv_pvld[26] & dat_actv_pvld[26] & wt_actv_nz26 & dat_actv_nz26;

assign full_mul_result[1092 + 21 - 1 : 1092] = {{3{mout_52[18-1]}}, mout_52} & {21{op_out_pvld[26]}}; 
assign full_mul_result[1113 + 21 - 1 : 1113] = {{3{mout_53[18-1]}}, mout_53} & {21{op_out_pvld[26]}}; 
wire [18-1:0] mout_54;
wire [18-1:0] mout_55;
DW02_multp #(8, 8, 18) mul27 (
.a(wt_actv_data27),
.b(dat_actv_data27),
.tc(1'b1),
.out0(mout_54),
.out1(mout_55)
);
assign op_out_pvld[27] = wt_actv_pvld[27] & dat_actv_pvld[27] & wt_actv_nz27 & dat_actv_nz27;

assign full_mul_result[1134 + 21 - 1 : 1134] = {{3{mout_54[18-1]}}, mout_54} & {21{op_out_pvld[27]}}; 
assign full_mul_result[1155 + 21 - 1 : 1155] = {{3{mout_55[18-1]}}, mout_55} & {21{op_out_pvld[27]}}; 
wire [18-1:0] mout_56;
wire [18-1:0] mout_57;
DW02_multp #(8, 8, 18) mul28 (
.a(wt_actv_data28),
.b(dat_actv_data28),
.tc(1'b1),
.out0(mout_56),
.out1(mout_57)
);
assign op_out_pvld[28] = wt_actv_pvld[28] & dat_actv_pvld[28] & wt_actv_nz28 & dat_actv_nz28;

assign full_mul_result[1176 + 21 - 1 : 1176] = {{3{mout_56[18-1]}}, mout_56} & {21{op_out_pvld[28]}}; 
assign full_mul_result[1197 + 21 - 1 : 1197] = {{3{mout_57[18-1]}}, mout_57} & {21{op_out_pvld[28]}}; 
wire [18-1:0] mout_58;
wire [18-1:0] mout_59;
DW02_multp #(8, 8, 18) mul29 (
.a(wt_actv_data29),
.b(dat_actv_data29),
.tc(1'b1),
.out0(mout_58),
.out1(mout_59)
);
assign op_out_pvld[29] = wt_actv_pvld[29] & dat_actv_pvld[29] & wt_actv_nz29 & dat_actv_nz29;

assign full_mul_result[1218 + 21 - 1 : 1218] = {{3{mout_58[18-1]}}, mout_58} & {21{op_out_pvld[29]}}; 
assign full_mul_result[1239 + 21 - 1 : 1239] = {{3{mout_59[18-1]}}, mout_59} & {21{op_out_pvld[29]}}; 
wire [18-1:0] mout_60;
wire [18-1:0] mout_61;
DW02_multp #(8, 8, 18) mul30 (
.a(wt_actv_data30),
.b(dat_actv_data30),
.tc(1'b1),
.out0(mout_60),
.out1(mout_61)
);
assign op_out_pvld[30] = wt_actv_pvld[30] & dat_actv_pvld[30] & wt_actv_nz30 & dat_actv_nz30;

assign full_mul_result[1260 + 21 - 1 : 1260] = {{3{mout_60[18-1]}}, mout_60} & {21{op_out_pvld[30]}}; 
assign full_mul_result[1281 + 21 - 1 : 1281] = {{3{mout_61[18-1]}}, mout_61} & {21{op_out_pvld[30]}}; 
wire [18-1:0] mout_62;
wire [18-1:0] mout_63;
DW02_multp #(8, 8, 18) mul31 (
.a(wt_actv_data31),
.b(dat_actv_data31),
.tc(1'b1),
.out0(mout_62),
.out1(mout_63)
);
assign op_out_pvld[31] = wt_actv_pvld[31] & dat_actv_pvld[31] & wt_actv_nz31 & dat_actv_nz31;

assign full_mul_result[1302 + 21 - 1 : 1302] = {{3{mout_62[18-1]}}, mout_62} & {21{op_out_pvld[31]}}; 
assign full_mul_result[1323 + 21 - 1 : 1323] = {{3{mout_63[18-1]}}, mout_63} & {21{op_out_pvld[31]}}; 
//| eperl: generated_end (DO NOT EDIT ABOVE)
DW02_sum #(32*2, 21) fsum (.INPUT(full_mul_result), .SUM(sum_out));
`endif
//add pipeline for retiming
wire pp_pvld_d0 = (dat_actv_pvld[0] & wt_actv_pvld[0]);
//wire [21 -1:0] sum_out_d0 = $unsigned(sum_out);
wire [21 -1:0] sum_out_d0 = sum_out;
//: my $rwidth = 21;
//: my $rr=3;
//: &eperl::retime("-stage ${rr} -o sum_out_dd -i sum_out_d0 -cg_en_i pp_pvld_d0 -cg_en_o pp_pvld_dd -cg_en_rtm -wid $rwidth");
//| eperl: generated_beg (DO NOT EDIT BELOW)
reg [21-1:0] sum_out_d0_d1;
always @(posedge nvdla_core_clk) begin
    if ((pp_pvld_d0)) begin
        sum_out_d0_d1[21-1:0] <= sum_out_d0[21-1:0];
    end
end

reg pp_pvld_d0_d1;
always @(posedge nvdla_core_clk) begin
    pp_pvld_d0_d1 <= pp_pvld_d0;
end

reg [21-1:0] sum_out_d0_d2;
always @(posedge nvdla_core_clk) begin
    if ((pp_pvld_d0_d1)) begin
        sum_out_d0_d2[21-1:0] <= sum_out_d0_d1[21-1:0];
    end
end

reg pp_pvld_d0_d2;
always @(posedge nvdla_core_clk) begin
    pp_pvld_d0_d2 <= pp_pvld_d0_d1;
end

reg [21-1:0] sum_out_d0_d3;
always @(posedge nvdla_core_clk) begin
    if ((pp_pvld_d0_d2)) begin
        sum_out_d0_d3[21-1:0] <= sum_out_d0_d2[21-1:0];
    end
end

reg pp_pvld_d0_d3;
always @(posedge nvdla_core_clk) begin
    pp_pvld_d0_d3 <= pp_pvld_d0_d2;
end

wire [21-1:0] sum_out_dd;
assign sum_out_dd = sum_out_d0_d3;

wire pp_pvld_dd;
assign pp_pvld_dd = pp_pvld_d0_d3;


//| eperl: generated_end (DO NOT EDIT ABOVE)
assign mac_out_pvld=pp_pvld_dd;
assign mac_out_data=sum_out_dd;
endmodule // NV_NVDLA_CMAC_CORE_mac
