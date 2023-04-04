// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module compute_engine_16 (
        ap_clk,
        ap_rst,
        w0_V,
        b0_V,
        w1_V,
        b1_V,
        w2_V,
        b2_V,
        w3_V,
        b3_V,
        w4_V,
        b4_V,
        w5_V,
        b5_V,
        w6_V,
        b6_V,
        w7_V,
        b7_V,
        w8_V,
        b8_V,
        w9_V,
        b9_V,
        w10_V,
        b10_V,
        w11_V,
        b11_V,
        w12_V,
        b12_V,
        w13_V,
        b13_V,
        w14_V,
        b14_V,
        w15_V,
        b15_V,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [10:0] w0_V;
input  [8:0] b0_V;
input  [10:0] w1_V;
input  [8:0] b1_V;
input  [10:0] w2_V;
input  [8:0] b2_V;
input  [10:0] w3_V;
input  [8:0] b3_V;
input  [10:0] w4_V;
input  [8:0] b4_V;
input  [10:0] w5_V;
input  [8:0] b5_V;
input  [10:0] w6_V;
input  [8:0] b6_V;
input  [10:0] w7_V;
input  [8:0] b7_V;
input  [10:0] w8_V;
input  [8:0] b8_V;
input  [10:0] w9_V;
input  [8:0] b9_V;
input  [10:0] w10_V;
input  [8:0] b10_V;
input  [10:0] w11_V;
input  [8:0] b11_V;
input  [10:0] w12_V;
input  [8:0] b12_V;
input  [10:0] w13_V;
input  [8:0] b13_V;
input  [10:0] w14_V;
input  [8:0] b14_V;
input  [10:0] w15_V;
input  [8:0] b15_V;
output  [12:0] ap_return;
input   ap_ce;

reg[12:0] ap_return;

reg  signed [8:0] b15_V_read_reg_963;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_11001;
reg  signed [10:0] w15_V_read_reg_968;
reg  signed [8:0] b13_V_read_reg_973;
reg  signed [10:0] w13_V_read_reg_978;
reg  signed [8:0] b11_V_read_reg_983;
reg  signed [10:0] w11_V_read_reg_988;
reg  signed [8:0] b9_V_read_reg_993;
reg  signed [10:0] w9_V_read_reg_998;
reg  signed [8:0] b7_V_read_reg_1003;
reg  signed [10:0] w7_V_read_reg_1008;
reg  signed [8:0] b5_V_read_reg_1013;
reg  signed [10:0] w5_V_read_reg_1018;
reg  signed [8:0] b3_V_read_reg_1023;
reg  signed [10:0] w3_V_read_reg_1028;
reg  signed [8:0] b1_V_read_reg_1033;
reg  signed [10:0] w1_V_read_reg_1038;
wire  signed [19:0] r_V_32_fu_851_p2;
reg  signed [19:0] r_V_32_reg_1043;
wire  signed [19:0] r_V_34_fu_857_p2;
reg  signed [19:0] r_V_34_reg_1048;
wire  signed [19:0] r_V_36_fu_863_p2;
reg  signed [19:0] r_V_36_reg_1053;
wire  signed [19:0] r_V_38_fu_869_p2;
reg  signed [19:0] r_V_38_reg_1058;
wire  signed [19:0] r_V_40_fu_875_p2;
reg  signed [19:0] r_V_40_reg_1063;
wire  signed [19:0] r_V_42_fu_881_p2;
reg  signed [19:0] r_V_42_reg_1068;
wire  signed [19:0] r_V_44_fu_887_p2;
reg  signed [19:0] r_V_44_reg_1073;
wire  signed [19:0] r_V_46_fu_893_p2;
reg  signed [19:0] r_V_46_reg_1078;
wire  signed [20:0] grp_fu_899_p3;
reg  signed [20:0] add_ln1192_2_reg_1083;
wire  signed [20:0] grp_fu_907_p3;
reg  signed [20:0] add_ln1192_3_reg_1088;
wire  signed [20:0] grp_fu_915_p3;
reg  signed [20:0] add_ln1192_5_reg_1093;
wire  signed [20:0] grp_fu_923_p3;
reg  signed [20:0] add_ln1192_6_reg_1098;
wire  signed [20:0] grp_fu_931_p3;
reg  signed [20:0] add_ln1192_8_reg_1103;
wire  signed [20:0] grp_fu_939_p3;
reg  signed [20:0] add_ln1192_9_reg_1108;
wire  signed [20:0] grp_fu_947_p3;
reg  signed [20:0] add_ln1192_11_reg_1113;
wire  signed [20:0] grp_fu_955_p3;
reg  signed [20:0] add_ln1192_12_reg_1118;
reg   [0:0] p_Result_s_reg_1123;
wire   [31:0] p_Val2_21_fu_556_p2;
reg   [31:0] p_Val2_21_reg_1130;
reg   [0:0] p_Result_98_reg_1136;
wire   [12:0] p_Val2_24_fu_654_p2;
reg   [12:0] p_Val2_24_reg_1143;
wire   [0:0] and_ln781_fu_762_p2;
reg   [0:0] and_ln781_reg_1149;
wire   [0:0] xor_ln785_4_fu_780_p2;
reg   [0:0] xor_ln785_4_reg_1154;
wire   [0:0] and_ln786_fu_792_p2;
reg   [0:0] and_ln786_reg_1159;
wire   [0:0] underflow_1_fu_810_p2;
reg   [0:0] underflow_1_reg_1164;
wire   [0:0] or_ln340_10_fu_816_p2;
reg   [0:0] or_ln340_10_reg_1169;
wire    ap_block_pp0_stage0;
wire  signed [21:0] sext_ln1192_2_fu_445_p1;
wire  signed [21:0] sext_ln1192_1_fu_442_p1;
wire   [21:0] add_ln1192_4_fu_448_p2;
wire  signed [21:0] sext_ln1192_5_fu_461_p1;
wire  signed [21:0] sext_ln1192_4_fu_458_p1;
wire   [21:0] add_ln1192_7_fu_464_p2;
wire  signed [22:0] sext_ln1192_6_fu_470_p1;
wire  signed [22:0] sext_ln1192_3_fu_454_p1;
wire   [22:0] add_ln1192_fu_474_p2;
wire  signed [21:0] sext_ln1192_9_fu_491_p1;
wire  signed [21:0] sext_ln1192_8_fu_488_p1;
wire   [21:0] add_ln1192_10_fu_494_p2;
wire  signed [21:0] sext_ln1192_12_fu_507_p1;
wire  signed [21:0] sext_ln1192_11_fu_504_p1;
wire   [21:0] add_ln1192_13_fu_510_p2;
wire  signed [22:0] sext_ln1192_13_fu_516_p1;
wire  signed [22:0] sext_ln1192_10_fu_500_p1;
wire   [22:0] add_ln1192_1_fu_520_p2;
wire  signed [31:0] p_Val2_18_fu_480_p3;
wire  signed [31:0] p_Val2_19_fu_526_p3;
wire  signed [32:0] rhs_V_fu_538_p1;
wire  signed [32:0] lhs_V_fu_534_p1;
wire   [32:0] ret_V_fu_542_p2;
wire   [0:0] xor_ln786_2_fu_570_p2;
wire   [0:0] xor_ln340_fu_584_p2;
wire   [0:0] xor_ln340_1_fu_580_p2;
wire   [0:0] underflow_fu_575_p2;
wire   [0:0] or_ln340_9_fu_589_p2;
wire   [31:0] select_ln340_2_fu_594_p3;
wire   [31:0] select_ln388_2_fu_601_p3;
wire   [31:0] add14_V_fu_608_p3;
wire   [0:0] tmp_fu_642_p3;
wire   [12:0] zext_ln415_fu_650_p1;
wire   [12:0] p_Val2_23_fu_624_p4;
wire   [0:0] tmp_229_fu_660_p3;
wire   [0:0] p_Result_100_fu_634_p3;
wire   [0:0] xor_ln416_fu_668_p2;
wire   [4:0] p_Result_s_71_fu_688_p4;
wire   [5:0] p_Result_34_fu_704_p4;
wire   [0:0] carry_1_fu_674_p2;
wire   [0:0] Range1_all_ones_fu_714_p2;
wire   [0:0] Range1_all_zeros_fu_720_p2;
wire   [0:0] tmp_231_fu_734_p3;
wire   [0:0] Range2_all_ones_fu_698_p2;
wire   [0:0] xor_ln779_fu_742_p2;
wire   [0:0] and_ln779_fu_748_p2;
wire   [0:0] deleted_zeros_fu_726_p3;
wire   [0:0] p_Result_101_fu_680_p3;
wire   [0:0] xor_ln785_3_fu_768_p2;
wire   [0:0] p_Result_99_fu_616_p3;
wire   [0:0] or_ln785_1_fu_774_p2;
wire   [0:0] deleted_ones_fu_754_p3;
wire   [0:0] or_ln786_fu_798_p2;
wire   [0:0] xor_ln786_fu_804_p2;
wire   [0:0] overflow_fu_786_p2;
wire   [0:0] or_ln340_96_fu_822_p2;
wire   [0:0] or_ln340_fu_826_p2;
wire   [12:0] select_ln340_fu_831_p3;
wire   [12:0] select_ln388_fu_837_p3;
wire   [12:0] select_ln340_65_fu_843_p3;
reg    ap_ce_reg;
reg  signed [10:0] w0_V_int_reg;
reg  signed [8:0] b0_V_int_reg;
reg   [10:0] w1_V_int_reg;
reg   [8:0] b1_V_int_reg;
reg  signed [10:0] w2_V_int_reg;
reg  signed [8:0] b2_V_int_reg;
reg   [10:0] w3_V_int_reg;
reg   [8:0] b3_V_int_reg;
reg  signed [10:0] w4_V_int_reg;
reg  signed [8:0] b4_V_int_reg;
reg   [10:0] w5_V_int_reg;
reg   [8:0] b5_V_int_reg;
reg  signed [10:0] w6_V_int_reg;
reg  signed [8:0] b6_V_int_reg;
reg   [10:0] w7_V_int_reg;
reg   [8:0] b7_V_int_reg;
reg  signed [10:0] w8_V_int_reg;
reg  signed [8:0] b8_V_int_reg;
reg   [10:0] w9_V_int_reg;
reg   [8:0] b9_V_int_reg;
reg  signed [10:0] w10_V_int_reg;
reg  signed [8:0] b10_V_int_reg;
reg   [10:0] w11_V_int_reg;
reg   [8:0] b11_V_int_reg;
reg  signed [10:0] w12_V_int_reg;
reg  signed [8:0] b12_V_int_reg;
reg   [10:0] w13_V_int_reg;
reg   [8:0] b13_V_int_reg;
reg  signed [10:0] w14_V_int_reg;
reg  signed [8:0] b14_V_int_reg;
reg   [10:0] w15_V_int_reg;
reg   [8:0] b15_V_int_reg;
reg   [12:0] ap_return_int_reg;

SkyNet_mul_mul_11hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 20 ))
SkyNet_mul_mul_11hbi_U782(
    .din0(w0_V_int_reg),
    .din1(b0_V_int_reg),
    .dout(r_V_32_fu_851_p2)
);

SkyNet_mul_mul_11hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 20 ))
SkyNet_mul_mul_11hbi_U783(
    .din0(w2_V_int_reg),
    .din1(b2_V_int_reg),
    .dout(r_V_34_fu_857_p2)
);

SkyNet_mul_mul_11hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 20 ))
SkyNet_mul_mul_11hbi_U784(
    .din0(w4_V_int_reg),
    .din1(b4_V_int_reg),
    .dout(r_V_36_fu_863_p2)
);

SkyNet_mul_mul_11hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 20 ))
SkyNet_mul_mul_11hbi_U785(
    .din0(w6_V_int_reg),
    .din1(b6_V_int_reg),
    .dout(r_V_38_fu_869_p2)
);

SkyNet_mul_mul_11hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 20 ))
SkyNet_mul_mul_11hbi_U786(
    .din0(w8_V_int_reg),
    .din1(b8_V_int_reg),
    .dout(r_V_40_fu_875_p2)
);

SkyNet_mul_mul_11hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 20 ))
SkyNet_mul_mul_11hbi_U787(
    .din0(w10_V_int_reg),
    .din1(b10_V_int_reg),
    .dout(r_V_42_fu_881_p2)
);

SkyNet_mul_mul_11hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 20 ))
SkyNet_mul_mul_11hbi_U788(
    .din0(w12_V_int_reg),
    .din1(b12_V_int_reg),
    .dout(r_V_44_fu_887_p2)
);

SkyNet_mul_mul_11hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 20 ))
SkyNet_mul_mul_11hbi_U789(
    .din0(w14_V_int_reg),
    .din1(b14_V_int_reg),
    .dout(r_V_46_fu_893_p2)
);

SkyNet_mac_muladdibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 20 ),
    .dout_WIDTH( 21 ))
SkyNet_mac_muladdibs_U790(
    .din0(w1_V_read_reg_1038),
    .din1(b1_V_read_reg_1033),
    .din2(r_V_32_reg_1043),
    .dout(grp_fu_899_p3)
);

SkyNet_mac_muladdibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 20 ),
    .dout_WIDTH( 21 ))
SkyNet_mac_muladdibs_U791(
    .din0(w3_V_read_reg_1028),
    .din1(b3_V_read_reg_1023),
    .din2(r_V_34_reg_1048),
    .dout(grp_fu_907_p3)
);

SkyNet_mac_muladdibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 20 ),
    .dout_WIDTH( 21 ))
SkyNet_mac_muladdibs_U792(
    .din0(w5_V_read_reg_1018),
    .din1(b5_V_read_reg_1013),
    .din2(r_V_36_reg_1053),
    .dout(grp_fu_915_p3)
);

SkyNet_mac_muladdibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 20 ),
    .dout_WIDTH( 21 ))
SkyNet_mac_muladdibs_U793(
    .din0(w7_V_read_reg_1008),
    .din1(b7_V_read_reg_1003),
    .din2(r_V_38_reg_1058),
    .dout(grp_fu_923_p3)
);

SkyNet_mac_muladdibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 20 ),
    .dout_WIDTH( 21 ))
SkyNet_mac_muladdibs_U794(
    .din0(w9_V_read_reg_998),
    .din1(b9_V_read_reg_993),
    .din2(r_V_40_reg_1063),
    .dout(grp_fu_931_p3)
);

SkyNet_mac_muladdibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 20 ),
    .dout_WIDTH( 21 ))
SkyNet_mac_muladdibs_U795(
    .din0(w11_V_read_reg_988),
    .din1(b11_V_read_reg_983),
    .din2(r_V_42_reg_1068),
    .dout(grp_fu_939_p3)
);

SkyNet_mac_muladdibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 20 ),
    .dout_WIDTH( 21 ))
SkyNet_mac_muladdibs_U796(
    .din0(w13_V_read_reg_978),
    .din1(b13_V_read_reg_973),
    .din2(r_V_44_reg_1073),
    .dout(grp_fu_947_p3)
);

SkyNet_mac_muladdibs #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 11 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 20 ),
    .dout_WIDTH( 21 ))
SkyNet_mac_muladdibs_U797(
    .din0(w15_V_read_reg_968),
    .din1(b15_V_read_reg_963),
    .din2(r_V_46_reg_1078),
    .dout(grp_fu_955_p3)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce_reg) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln1192_11_reg_1113 <= grp_fu_947_p3;
        add_ln1192_12_reg_1118 <= grp_fu_955_p3;
        add_ln1192_2_reg_1083 <= grp_fu_899_p3;
        add_ln1192_3_reg_1088 <= grp_fu_907_p3;
        add_ln1192_5_reg_1093 <= grp_fu_915_p3;
        add_ln1192_6_reg_1098 <= grp_fu_923_p3;
        add_ln1192_8_reg_1103 <= grp_fu_931_p3;
        add_ln1192_9_reg_1108 <= grp_fu_939_p3;
        and_ln781_reg_1149 <= and_ln781_fu_762_p2;
        and_ln786_reg_1159 <= and_ln786_fu_792_p2;
        b11_V_read_reg_983 <= b11_V_int_reg;
        b13_V_read_reg_973 <= b13_V_int_reg;
        b15_V_read_reg_963 <= b15_V_int_reg;
        b1_V_read_reg_1033 <= b1_V_int_reg;
        b3_V_read_reg_1023 <= b3_V_int_reg;
        b5_V_read_reg_1013 <= b5_V_int_reg;
        b7_V_read_reg_1003 <= b7_V_int_reg;
        b9_V_read_reg_993 <= b9_V_int_reg;
        or_ln340_10_reg_1169 <= or_ln340_10_fu_816_p2;
        p_Result_98_reg_1136 <= p_Val2_21_fu_556_p2[32'd31];
        p_Result_s_reg_1123 <= ret_V_fu_542_p2[32'd32];
        p_Val2_21_reg_1130[31 : 9] <= p_Val2_21_fu_556_p2[31 : 9];
        p_Val2_24_reg_1143 <= p_Val2_24_fu_654_p2;
        r_V_32_reg_1043 <= r_V_32_fu_851_p2;
        r_V_34_reg_1048 <= r_V_34_fu_857_p2;
        r_V_36_reg_1053 <= r_V_36_fu_863_p2;
        r_V_38_reg_1058 <= r_V_38_fu_869_p2;
        r_V_40_reg_1063 <= r_V_40_fu_875_p2;
        r_V_42_reg_1068 <= r_V_42_fu_881_p2;
        r_V_44_reg_1073 <= r_V_44_fu_887_p2;
        r_V_46_reg_1078 <= r_V_46_fu_893_p2;
        underflow_1_reg_1164 <= underflow_1_fu_810_p2;
        w11_V_read_reg_988 <= w11_V_int_reg;
        w13_V_read_reg_978 <= w13_V_int_reg;
        w15_V_read_reg_968 <= w15_V_int_reg;
        w1_V_read_reg_1038 <= w1_V_int_reg;
        w3_V_read_reg_1028 <= w3_V_int_reg;
        w5_V_read_reg_1018 <= w5_V_int_reg;
        w7_V_read_reg_1008 <= w7_V_int_reg;
        w9_V_read_reg_998 <= w9_V_int_reg;
        xor_ln785_4_reg_1154 <= xor_ln785_4_fu_780_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= select_ln340_65_fu_843_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        b0_V_int_reg <= b0_V;
        b10_V_int_reg <= b10_V;
        b11_V_int_reg <= b11_V;
        b12_V_int_reg <= b12_V;
        b13_V_int_reg <= b13_V;
        b14_V_int_reg <= b14_V;
        b15_V_int_reg <= b15_V;
        b1_V_int_reg <= b1_V;
        b2_V_int_reg <= b2_V;
        b3_V_int_reg <= b3_V;
        b4_V_int_reg <= b4_V;
        b5_V_int_reg <= b5_V;
        b6_V_int_reg <= b6_V;
        b7_V_int_reg <= b7_V;
        b8_V_int_reg <= b8_V;
        b9_V_int_reg <= b9_V;
        w0_V_int_reg <= w0_V;
        w10_V_int_reg <= w10_V;
        w11_V_int_reg <= w11_V;
        w12_V_int_reg <= w12_V;
        w13_V_int_reg <= w13_V;
        w14_V_int_reg <= w14_V;
        w15_V_int_reg <= w15_V;
        w1_V_int_reg <= w1_V;
        w2_V_int_reg <= w2_V;
        w3_V_int_reg <= w3_V;
        w4_V_int_reg <= w4_V;
        w5_V_int_reg <= w5_V;
        w6_V_int_reg <= w6_V;
        w7_V_int_reg <= w7_V;
        w8_V_int_reg <= w8_V;
        w9_V_int_reg <= w9_V;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = select_ln340_65_fu_843_p3;
    end
end

assign Range1_all_ones_fu_714_p2 = ((p_Result_34_fu_704_p4 == 6'd63) ? 1'b1 : 1'b0);

assign Range1_all_zeros_fu_720_p2 = ((p_Result_34_fu_704_p4 == 6'd0) ? 1'b1 : 1'b0);

assign Range2_all_ones_fu_698_p2 = ((p_Result_s_71_fu_688_p4 == 5'd31) ? 1'b1 : 1'b0);

assign add14_V_fu_608_p3 = ((or_ln340_9_fu_589_p2[0:0] === 1'b1) ? select_ln340_2_fu_594_p3 : select_ln388_2_fu_601_p3);

assign add_ln1192_10_fu_494_p2 = ($signed(sext_ln1192_9_fu_491_p1) + $signed(sext_ln1192_8_fu_488_p1));

assign add_ln1192_13_fu_510_p2 = ($signed(sext_ln1192_12_fu_507_p1) + $signed(sext_ln1192_11_fu_504_p1));

assign add_ln1192_1_fu_520_p2 = ($signed(sext_ln1192_13_fu_516_p1) + $signed(sext_ln1192_10_fu_500_p1));

assign add_ln1192_4_fu_448_p2 = ($signed(sext_ln1192_2_fu_445_p1) + $signed(sext_ln1192_1_fu_442_p1));

assign add_ln1192_7_fu_464_p2 = ($signed(sext_ln1192_5_fu_461_p1) + $signed(sext_ln1192_4_fu_458_p1));

assign add_ln1192_fu_474_p2 = ($signed(sext_ln1192_6_fu_470_p1) + $signed(sext_ln1192_3_fu_454_p1));

assign and_ln779_fu_748_p2 = (xor_ln779_fu_742_p2 & Range2_all_ones_fu_698_p2);

assign and_ln781_fu_762_p2 = (carry_1_fu_674_p2 & Range1_all_ones_fu_714_p2);

assign and_ln786_fu_792_p2 = (p_Result_101_fu_680_p3 & deleted_ones_fu_754_p3);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign carry_1_fu_674_p2 = (xor_ln416_fu_668_p2 & p_Result_100_fu_634_p3);

assign deleted_ones_fu_754_p3 = ((carry_1_fu_674_p2[0:0] === 1'b1) ? and_ln779_fu_748_p2 : Range1_all_ones_fu_714_p2);

assign deleted_zeros_fu_726_p3 = ((carry_1_fu_674_p2[0:0] === 1'b1) ? Range1_all_ones_fu_714_p2 : Range1_all_zeros_fu_720_p2);

assign lhs_V_fu_534_p1 = p_Val2_18_fu_480_p3;

assign or_ln340_10_fu_816_p2 = (underflow_1_fu_810_p2 | overflow_fu_786_p2);

assign or_ln340_96_fu_822_p2 = (xor_ln785_4_reg_1154 | and_ln786_reg_1159);

assign or_ln340_9_fu_589_p2 = (xor_ln340_fu_584_p2 | p_Result_98_reg_1136);

assign or_ln340_fu_826_p2 = (or_ln340_96_fu_822_p2 | and_ln781_reg_1149);

assign or_ln785_1_fu_774_p2 = (xor_ln785_3_fu_768_p2 | p_Result_101_fu_680_p3);

assign or_ln786_fu_798_p2 = (and_ln786_fu_792_p2 | and_ln781_fu_762_p2);

assign overflow_fu_786_p2 = (xor_ln785_4_fu_780_p2 & or_ln785_1_fu_774_p2);

assign p_Result_100_fu_634_p3 = add14_V_fu_608_p3[32'd25];

assign p_Result_101_fu_680_p3 = p_Val2_24_fu_654_p2[32'd12];

assign p_Result_34_fu_704_p4 = {{add14_V_fu_608_p3[31:26]}};

assign p_Result_99_fu_616_p3 = add14_V_fu_608_p3[32'd31];

assign p_Result_s_71_fu_688_p4 = {{add14_V_fu_608_p3[31:27]}};

assign p_Val2_18_fu_480_p3 = {{add_ln1192_fu_474_p2}, {9'd0}};

assign p_Val2_19_fu_526_p3 = {{add_ln1192_1_fu_520_p2}, {9'd0}};

assign p_Val2_21_fu_556_p2 = ($signed(p_Val2_18_fu_480_p3) + $signed(p_Val2_19_fu_526_p3));

assign p_Val2_23_fu_624_p4 = {{add14_V_fu_608_p3[25:13]}};

assign p_Val2_24_fu_654_p2 = (zext_ln415_fu_650_p1 + p_Val2_23_fu_624_p4);

assign ret_V_fu_542_p2 = ($signed(rhs_V_fu_538_p1) + $signed(lhs_V_fu_534_p1));

assign rhs_V_fu_538_p1 = p_Val2_19_fu_526_p3;

assign select_ln340_2_fu_594_p3 = ((xor_ln340_1_fu_580_p2[0:0] === 1'b1) ? 32'd2147483647 : p_Val2_21_reg_1130);

assign select_ln340_65_fu_843_p3 = ((or_ln340_fu_826_p2[0:0] === 1'b1) ? select_ln340_fu_831_p3 : select_ln388_fu_837_p3);

assign select_ln340_fu_831_p3 = ((or_ln340_10_reg_1169[0:0] === 1'b1) ? 13'd4095 : p_Val2_24_reg_1143);

assign select_ln388_2_fu_601_p3 = ((underflow_fu_575_p2[0:0] === 1'b1) ? 32'd2147483648 : p_Val2_21_reg_1130);

assign select_ln388_fu_837_p3 = ((underflow_1_reg_1164[0:0] === 1'b1) ? 13'd4096 : p_Val2_24_reg_1143);

assign sext_ln1192_10_fu_500_p1 = $signed(add_ln1192_10_fu_494_p2);

assign sext_ln1192_11_fu_504_p1 = add_ln1192_11_reg_1113;

assign sext_ln1192_12_fu_507_p1 = add_ln1192_12_reg_1118;

assign sext_ln1192_13_fu_516_p1 = $signed(add_ln1192_13_fu_510_p2);

assign sext_ln1192_1_fu_442_p1 = add_ln1192_2_reg_1083;

assign sext_ln1192_2_fu_445_p1 = add_ln1192_3_reg_1088;

assign sext_ln1192_3_fu_454_p1 = $signed(add_ln1192_4_fu_448_p2);

assign sext_ln1192_4_fu_458_p1 = add_ln1192_5_reg_1093;

assign sext_ln1192_5_fu_461_p1 = add_ln1192_6_reg_1098;

assign sext_ln1192_6_fu_470_p1 = $signed(add_ln1192_7_fu_464_p2);

assign sext_ln1192_8_fu_488_p1 = add_ln1192_8_reg_1103;

assign sext_ln1192_9_fu_491_p1 = add_ln1192_9_reg_1108;

assign tmp_229_fu_660_p3 = p_Val2_24_fu_654_p2[32'd12];

assign tmp_231_fu_734_p3 = add14_V_fu_608_p3[32'd26];

assign tmp_fu_642_p3 = add14_V_fu_608_p3[32'd12];

assign underflow_1_fu_810_p2 = (xor_ln786_fu_804_p2 & p_Result_99_fu_616_p3);

assign underflow_fu_575_p2 = (xor_ln786_2_fu_570_p2 & p_Result_s_reg_1123);

assign xor_ln340_1_fu_580_p2 = (p_Result_s_reg_1123 ^ p_Result_98_reg_1136);

assign xor_ln340_fu_584_p2 = (p_Result_s_reg_1123 ^ 1'd1);

assign xor_ln416_fu_668_p2 = (tmp_229_fu_660_p3 ^ 1'd1);

assign xor_ln779_fu_742_p2 = (tmp_231_fu_734_p3 ^ 1'd1);

assign xor_ln785_3_fu_768_p2 = (deleted_zeros_fu_726_p3 ^ 1'd1);

assign xor_ln785_4_fu_780_p2 = (p_Result_99_fu_616_p3 ^ 1'd1);

assign xor_ln786_2_fu_570_p2 = (p_Result_98_reg_1136 ^ 1'd1);

assign xor_ln786_fu_804_p2 = (or_ln786_fu_798_p2 ^ 1'd1);

assign zext_ln415_fu_650_p1 = tmp_fu_642_p3;

always @ (posedge ap_clk) begin
    p_Val2_21_reg_1130[8:0] <= 9'b000000000;
end

endmodule //compute_engine_16
