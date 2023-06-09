-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pack_weight_data_2 is
port (
    ap_ready : OUT STD_LOGIC;
    w2_V : IN STD_LOGIC_VECTOR (63 downto 0);
    w1_V : IN STD_LOGIC_VECTOR (63 downto 0);
    w0_V : IN STD_LOGIC_VECTOR (63 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_5 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_6 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_7 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_8 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_9 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_10 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_11 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_12 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_13 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_14 : OUT STD_LOGIC_VECTOR (25 downto 0);
    ap_return_15 : OUT STD_LOGIC_VECTOR (25 downto 0) );
end;


architecture behav of pack_weight_data_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv22_0 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_13 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010011";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv32_1C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011100";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_23 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100011";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";
    constant ap_const_lv32_27 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100111";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_2B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101011";
    constant ap_const_lv32_2C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101100";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_33 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110011";
    constant ap_const_lv32_34 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110100";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_lv32_38 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111000";
    constant ap_const_lv32_3B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111011";
    constant ap_const_lv32_3C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal trunc_ln68_fu_102_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln68_2_fu_114_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_s_fu_118_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal trunc_ln647_fu_98_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_fu_126_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_14_fu_130_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_fu_134_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln_fu_106_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_15_fu_140_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_s_fu_160_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_fu_178_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_3_fu_188_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_1_fu_150_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_16_fu_196_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_17_fu_200_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_1_fu_204_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_2_fu_170_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_18_fu_210_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_3_fu_230_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_4_fu_248_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_5_fu_258_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_2_fu_220_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_19_fu_266_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_20_fu_270_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_2_fu_274_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_4_fu_240_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_21_fu_280_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_5_fu_300_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_6_fu_318_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_7_fu_328_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_3_fu_290_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_22_fu_336_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_23_fu_340_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_19_fu_344_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_6_fu_310_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_24_fu_350_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_7_fu_370_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_8_fu_388_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_9_fu_398_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_4_fu_360_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_25_fu_406_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_26_fu_410_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_4_fu_414_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_8_fu_380_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_27_fu_420_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_9_fu_440_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_10_fu_458_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_10_fu_468_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_5_fu_430_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_28_fu_476_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_29_fu_480_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_5_fu_484_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_1_fu_450_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_30_fu_490_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_11_fu_510_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_12_fu_528_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_12_fu_538_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_6_fu_500_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_31_fu_546_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_32_fu_550_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_6_fu_554_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_11_fu_520_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_33_fu_560_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_13_fu_580_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_14_fu_598_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_14_fu_608_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_7_fu_570_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_34_fu_616_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_35_fu_620_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_7_fu_624_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_13_fu_590_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_36_fu_630_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_15_fu_650_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_16_fu_668_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_16_fu_678_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_8_fu_640_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_37_fu_686_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_38_fu_690_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_8_fu_694_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_15_fu_660_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_39_fu_700_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_17_fu_720_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_18_fu_738_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_18_fu_748_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_9_fu_710_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_40_fu_756_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_41_fu_760_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_9_fu_764_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_17_fu_730_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_42_fu_770_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_19_fu_790_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_20_fu_808_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_20_fu_818_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_s_fu_780_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_43_fu_826_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_44_fu_830_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_10_fu_834_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_19_fu_800_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_45_fu_840_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_21_fu_860_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_22_fu_878_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_22_fu_888_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_10_fu_850_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_46_fu_896_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_47_fu_900_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_11_fu_904_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_21_fu_870_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_48_fu_910_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_23_fu_930_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_24_fu_948_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_24_fu_958_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_11_fu_920_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_49_fu_966_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_50_fu_970_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_12_fu_974_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_23_fu_940_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_51_fu_980_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_25_fu_1000_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_26_fu_1018_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_26_fu_1028_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_12_fu_990_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_52_fu_1036_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_53_fu_1040_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_13_fu_1044_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_25_fu_1010_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_54_fu_1050_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_27_fu_1070_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_28_fu_1088_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_28_fu_1098_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_13_fu_1060_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_55_fu_1106_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_56_fu_1110_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_14_fu_1114_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_27_fu_1080_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_57_fu_1120_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal tmp_29_fu_1140_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_30_fu_1158_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln68_30_fu_1168_p3 : STD_LOGIC_VECTOR (14 downto 0);
    signal p_Result_14_fu_1130_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sext_ln68_58_fu_1176_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln68_59_fu_1180_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln68_15_fu_1184_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln68_29_fu_1150_p3 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln68_60_fu_1190_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_16_fu_144_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_17_fu_214_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_18_fu_284_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_20_fu_354_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_21_fu_424_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_22_fu_494_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_23_fu_564_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_24_fu_634_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_25_fu_704_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_26_fu_774_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_27_fu_844_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_28_fu_914_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_29_fu_984_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_30_fu_1054_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_31_fu_1124_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal add_ln68_32_fu_1194_p2 : STD_LOGIC_VECTOR (25 downto 0);


begin



    add_ln68_10_fu_834_p2 <= std_logic_vector(signed(sext_ln68_43_fu_826_p1) + signed(sext_ln68_44_fu_830_p1));
    add_ln68_11_fu_904_p2 <= std_logic_vector(signed(sext_ln68_46_fu_896_p1) + signed(sext_ln68_47_fu_900_p1));
    add_ln68_12_fu_974_p2 <= std_logic_vector(signed(sext_ln68_49_fu_966_p1) + signed(sext_ln68_50_fu_970_p1));
    add_ln68_13_fu_1044_p2 <= std_logic_vector(signed(sext_ln68_52_fu_1036_p1) + signed(sext_ln68_53_fu_1040_p1));
    add_ln68_14_fu_1114_p2 <= std_logic_vector(signed(sext_ln68_55_fu_1106_p1) + signed(sext_ln68_56_fu_1110_p1));
    add_ln68_15_fu_1184_p2 <= std_logic_vector(signed(sext_ln68_58_fu_1176_p1) + signed(sext_ln68_59_fu_1180_p1));
    add_ln68_16_fu_144_p2 <= std_logic_vector(unsigned(shl_ln_fu_106_p3) + unsigned(sext_ln68_15_fu_140_p1));
    add_ln68_17_fu_214_p2 <= std_logic_vector(unsigned(shl_ln68_2_fu_170_p3) + unsigned(sext_ln68_18_fu_210_p1));
    add_ln68_18_fu_284_p2 <= std_logic_vector(unsigned(shl_ln68_4_fu_240_p3) + unsigned(sext_ln68_21_fu_280_p1));
    add_ln68_19_fu_344_p2 <= std_logic_vector(signed(sext_ln68_22_fu_336_p1) + signed(sext_ln68_23_fu_340_p1));
    add_ln68_1_fu_204_p2 <= std_logic_vector(signed(sext_ln68_16_fu_196_p1) + signed(sext_ln68_17_fu_200_p1));
    add_ln68_20_fu_354_p2 <= std_logic_vector(unsigned(shl_ln68_6_fu_310_p3) + unsigned(sext_ln68_24_fu_350_p1));
    add_ln68_21_fu_424_p2 <= std_logic_vector(unsigned(shl_ln68_8_fu_380_p3) + unsigned(sext_ln68_27_fu_420_p1));
    add_ln68_22_fu_494_p2 <= std_logic_vector(unsigned(shl_ln68_1_fu_450_p3) + unsigned(sext_ln68_30_fu_490_p1));
    add_ln68_23_fu_564_p2 <= std_logic_vector(unsigned(shl_ln68_11_fu_520_p3) + unsigned(sext_ln68_33_fu_560_p1));
    add_ln68_24_fu_634_p2 <= std_logic_vector(unsigned(shl_ln68_13_fu_590_p3) + unsigned(sext_ln68_36_fu_630_p1));
    add_ln68_25_fu_704_p2 <= std_logic_vector(unsigned(shl_ln68_15_fu_660_p3) + unsigned(sext_ln68_39_fu_700_p1));
    add_ln68_26_fu_774_p2 <= std_logic_vector(unsigned(shl_ln68_17_fu_730_p3) + unsigned(sext_ln68_42_fu_770_p1));
    add_ln68_27_fu_844_p2 <= std_logic_vector(unsigned(shl_ln68_19_fu_800_p3) + unsigned(sext_ln68_45_fu_840_p1));
    add_ln68_28_fu_914_p2 <= std_logic_vector(unsigned(shl_ln68_21_fu_870_p3) + unsigned(sext_ln68_48_fu_910_p1));
    add_ln68_29_fu_984_p2 <= std_logic_vector(unsigned(shl_ln68_23_fu_940_p3) + unsigned(sext_ln68_51_fu_980_p1));
    add_ln68_2_fu_274_p2 <= std_logic_vector(signed(sext_ln68_19_fu_266_p1) + signed(sext_ln68_20_fu_270_p1));
    add_ln68_30_fu_1054_p2 <= std_logic_vector(unsigned(shl_ln68_25_fu_1010_p3) + unsigned(sext_ln68_54_fu_1050_p1));
    add_ln68_31_fu_1124_p2 <= std_logic_vector(unsigned(shl_ln68_27_fu_1080_p3) + unsigned(sext_ln68_57_fu_1120_p1));
    add_ln68_32_fu_1194_p2 <= std_logic_vector(unsigned(shl_ln68_29_fu_1150_p3) + unsigned(sext_ln68_60_fu_1190_p1));
    add_ln68_4_fu_414_p2 <= std_logic_vector(signed(sext_ln68_25_fu_406_p1) + signed(sext_ln68_26_fu_410_p1));
    add_ln68_5_fu_484_p2 <= std_logic_vector(signed(sext_ln68_28_fu_476_p1) + signed(sext_ln68_29_fu_480_p1));
    add_ln68_6_fu_554_p2 <= std_logic_vector(signed(sext_ln68_31_fu_546_p1) + signed(sext_ln68_32_fu_550_p1));
    add_ln68_7_fu_624_p2 <= std_logic_vector(signed(sext_ln68_34_fu_616_p1) + signed(sext_ln68_35_fu_620_p1));
    add_ln68_8_fu_694_p2 <= std_logic_vector(signed(sext_ln68_37_fu_686_p1) + signed(sext_ln68_38_fu_690_p1));
    add_ln68_9_fu_764_p2 <= std_logic_vector(signed(sext_ln68_40_fu_756_p1) + signed(sext_ln68_41_fu_760_p1));
    add_ln68_fu_134_p2 <= std_logic_vector(signed(sext_ln68_fu_126_p1) + signed(sext_ln68_14_fu_130_p1));
    ap_ready <= ap_const_logic_1;
    ap_return_0 <= add_ln68_16_fu_144_p2;
    ap_return_1 <= add_ln68_17_fu_214_p2;
    ap_return_10 <= add_ln68_27_fu_844_p2;
    ap_return_11 <= add_ln68_28_fu_914_p2;
    ap_return_12 <= add_ln68_29_fu_984_p2;
    ap_return_13 <= add_ln68_30_fu_1054_p2;
    ap_return_14 <= add_ln68_31_fu_1124_p2;
    ap_return_15 <= add_ln68_32_fu_1194_p2;
    ap_return_2 <= add_ln68_18_fu_284_p2;
    ap_return_3 <= add_ln68_20_fu_354_p2;
    ap_return_4 <= add_ln68_21_fu_424_p2;
    ap_return_5 <= add_ln68_22_fu_494_p2;
    ap_return_6 <= add_ln68_23_fu_564_p2;
    ap_return_7 <= add_ln68_24_fu_634_p2;
    ap_return_8 <= add_ln68_25_fu_704_p2;
    ap_return_9 <= add_ln68_26_fu_774_p2;
    p_Result_10_fu_850_p4 <= w2_V(47 downto 44);
    p_Result_11_fu_920_p4 <= w2_V(51 downto 48);
    p_Result_12_fu_990_p4 <= w2_V(55 downto 52);
    p_Result_13_fu_1060_p4 <= w2_V(59 downto 56);
    p_Result_14_fu_1130_p4 <= w2_V(63 downto 60);
    p_Result_1_fu_150_p4 <= w2_V(7 downto 4);
    p_Result_2_fu_220_p4 <= w2_V(11 downto 8);
    p_Result_3_fu_290_p4 <= w2_V(15 downto 12);
    p_Result_4_fu_360_p4 <= w2_V(19 downto 16);
    p_Result_5_fu_430_p4 <= w2_V(23 downto 20);
    p_Result_6_fu_500_p4 <= w2_V(27 downto 24);
    p_Result_7_fu_570_p4 <= w2_V(31 downto 28);
    p_Result_8_fu_640_p4 <= w2_V(35 downto 32);
    p_Result_9_fu_710_p4 <= w2_V(39 downto 36);
    p_Result_s_fu_780_p4 <= w2_V(43 downto 40);
        sext_ln68_14_fu_130_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln647_fu_98_p1),16));

        sext_ln68_15_fu_140_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_fu_134_p2),26));

        sext_ln68_16_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_3_fu_188_p3),16));

        sext_ln68_17_fu_200_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_1_fu_150_p4),16));

        sext_ln68_18_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_1_fu_204_p2),26));

        sext_ln68_19_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_5_fu_258_p3),16));

        sext_ln68_20_fu_270_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_2_fu_220_p4),16));

        sext_ln68_21_fu_280_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_2_fu_274_p2),26));

        sext_ln68_22_fu_336_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_7_fu_328_p3),16));

        sext_ln68_23_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_3_fu_290_p4),16));

        sext_ln68_24_fu_350_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_19_fu_344_p2),26));

        sext_ln68_25_fu_406_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_9_fu_398_p3),16));

        sext_ln68_26_fu_410_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_4_fu_360_p4),16));

        sext_ln68_27_fu_420_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_4_fu_414_p2),26));

        sext_ln68_28_fu_476_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_10_fu_468_p3),16));

        sext_ln68_29_fu_480_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_5_fu_430_p4),16));

        sext_ln68_30_fu_490_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_5_fu_484_p2),26));

        sext_ln68_31_fu_546_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_12_fu_538_p3),16));

        sext_ln68_32_fu_550_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_6_fu_500_p4),16));

        sext_ln68_33_fu_560_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_6_fu_554_p2),26));

        sext_ln68_34_fu_616_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_14_fu_608_p3),16));

        sext_ln68_35_fu_620_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_7_fu_570_p4),16));

        sext_ln68_36_fu_630_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_7_fu_624_p2),26));

        sext_ln68_37_fu_686_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_16_fu_678_p3),16));

        sext_ln68_38_fu_690_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_8_fu_640_p4),16));

        sext_ln68_39_fu_700_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_8_fu_694_p2),26));

        sext_ln68_40_fu_756_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_18_fu_748_p3),16));

        sext_ln68_41_fu_760_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_9_fu_710_p4),16));

        sext_ln68_42_fu_770_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_9_fu_764_p2),26));

        sext_ln68_43_fu_826_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_20_fu_818_p3),16));

        sext_ln68_44_fu_830_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_s_fu_780_p4),16));

        sext_ln68_45_fu_840_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_10_fu_834_p2),26));

        sext_ln68_46_fu_896_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_22_fu_888_p3),16));

        sext_ln68_47_fu_900_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_10_fu_850_p4),16));

        sext_ln68_48_fu_910_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_11_fu_904_p2),26));

        sext_ln68_49_fu_966_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_24_fu_958_p3),16));

        sext_ln68_50_fu_970_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_11_fu_920_p4),16));

        sext_ln68_51_fu_980_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_12_fu_974_p2),26));

        sext_ln68_52_fu_1036_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_26_fu_1028_p3),16));

        sext_ln68_53_fu_1040_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_12_fu_990_p4),16));

        sext_ln68_54_fu_1050_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_13_fu_1044_p2),26));

        sext_ln68_55_fu_1106_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_28_fu_1098_p3),16));

        sext_ln68_56_fu_1110_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_13_fu_1060_p4),16));

        sext_ln68_57_fu_1120_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_14_fu_1114_p2),26));

        sext_ln68_58_fu_1176_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_30_fu_1168_p3),16));

        sext_ln68_59_fu_1180_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Result_14_fu_1130_p4),16));

        sext_ln68_60_fu_1190_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln68_15_fu_1184_p2),26));

        sext_ln68_fu_126_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(shl_ln68_s_fu_118_p3),16));

    shl_ln68_10_fu_468_p3 <= (tmp_10_fu_458_p4 & ap_const_lv11_0);
    shl_ln68_11_fu_520_p3 <= (tmp_11_fu_510_p4 & ap_const_lv22_0);
    shl_ln68_12_fu_538_p3 <= (tmp_12_fu_528_p4 & ap_const_lv11_0);
    shl_ln68_13_fu_590_p3 <= (tmp_13_fu_580_p4 & ap_const_lv22_0);
    shl_ln68_14_fu_608_p3 <= (tmp_14_fu_598_p4 & ap_const_lv11_0);
    shl_ln68_15_fu_660_p3 <= (tmp_15_fu_650_p4 & ap_const_lv22_0);
    shl_ln68_16_fu_678_p3 <= (tmp_16_fu_668_p4 & ap_const_lv11_0);
    shl_ln68_17_fu_730_p3 <= (tmp_17_fu_720_p4 & ap_const_lv22_0);
    shl_ln68_18_fu_748_p3 <= (tmp_18_fu_738_p4 & ap_const_lv11_0);
    shl_ln68_19_fu_800_p3 <= (tmp_19_fu_790_p4 & ap_const_lv22_0);
    shl_ln68_1_fu_450_p3 <= (tmp_9_fu_440_p4 & ap_const_lv22_0);
    shl_ln68_20_fu_818_p3 <= (tmp_20_fu_808_p4 & ap_const_lv11_0);
    shl_ln68_21_fu_870_p3 <= (tmp_21_fu_860_p4 & ap_const_lv22_0);
    shl_ln68_22_fu_888_p3 <= (tmp_22_fu_878_p4 & ap_const_lv11_0);
    shl_ln68_23_fu_940_p3 <= (tmp_23_fu_930_p4 & ap_const_lv22_0);
    shl_ln68_24_fu_958_p3 <= (tmp_24_fu_948_p4 & ap_const_lv11_0);
    shl_ln68_25_fu_1010_p3 <= (tmp_25_fu_1000_p4 & ap_const_lv22_0);
    shl_ln68_26_fu_1028_p3 <= (tmp_26_fu_1018_p4 & ap_const_lv11_0);
    shl_ln68_27_fu_1080_p3 <= (tmp_27_fu_1070_p4 & ap_const_lv22_0);
    shl_ln68_28_fu_1098_p3 <= (tmp_28_fu_1088_p4 & ap_const_lv11_0);
    shl_ln68_29_fu_1150_p3 <= (tmp_29_fu_1140_p4 & ap_const_lv22_0);
    shl_ln68_2_fu_170_p3 <= (tmp_s_fu_160_p4 & ap_const_lv22_0);
    shl_ln68_30_fu_1168_p3 <= (tmp_30_fu_1158_p4 & ap_const_lv11_0);
    shl_ln68_3_fu_188_p3 <= (tmp_2_fu_178_p4 & ap_const_lv11_0);
    shl_ln68_4_fu_240_p3 <= (tmp_3_fu_230_p4 & ap_const_lv22_0);
    shl_ln68_5_fu_258_p3 <= (tmp_4_fu_248_p4 & ap_const_lv11_0);
    shl_ln68_6_fu_310_p3 <= (tmp_5_fu_300_p4 & ap_const_lv22_0);
    shl_ln68_7_fu_328_p3 <= (tmp_6_fu_318_p4 & ap_const_lv11_0);
    shl_ln68_8_fu_380_p3 <= (tmp_7_fu_370_p4 & ap_const_lv22_0);
    shl_ln68_9_fu_398_p3 <= (tmp_8_fu_388_p4 & ap_const_lv11_0);
    shl_ln68_s_fu_118_p3 <= (trunc_ln68_2_fu_114_p1 & ap_const_lv11_0);
    shl_ln_fu_106_p3 <= (trunc_ln68_fu_102_p1 & ap_const_lv22_0);
    tmp_10_fu_458_p4 <= w1_V(23 downto 20);
    tmp_11_fu_510_p4 <= w0_V(27 downto 24);
    tmp_12_fu_528_p4 <= w1_V(27 downto 24);
    tmp_13_fu_580_p4 <= w0_V(31 downto 28);
    tmp_14_fu_598_p4 <= w1_V(31 downto 28);
    tmp_15_fu_650_p4 <= w0_V(35 downto 32);
    tmp_16_fu_668_p4 <= w1_V(35 downto 32);
    tmp_17_fu_720_p4 <= w0_V(39 downto 36);
    tmp_18_fu_738_p4 <= w1_V(39 downto 36);
    tmp_19_fu_790_p4 <= w0_V(43 downto 40);
    tmp_20_fu_808_p4 <= w1_V(43 downto 40);
    tmp_21_fu_860_p4 <= w0_V(47 downto 44);
    tmp_22_fu_878_p4 <= w1_V(47 downto 44);
    tmp_23_fu_930_p4 <= w0_V(51 downto 48);
    tmp_24_fu_948_p4 <= w1_V(51 downto 48);
    tmp_25_fu_1000_p4 <= w0_V(55 downto 52);
    tmp_26_fu_1018_p4 <= w1_V(55 downto 52);
    tmp_27_fu_1070_p4 <= w0_V(59 downto 56);
    tmp_28_fu_1088_p4 <= w1_V(59 downto 56);
    tmp_29_fu_1140_p4 <= w0_V(63 downto 60);
    tmp_2_fu_178_p4 <= w1_V(7 downto 4);
    tmp_30_fu_1158_p4 <= w1_V(63 downto 60);
    tmp_3_fu_230_p4 <= w0_V(11 downto 8);
    tmp_4_fu_248_p4 <= w1_V(11 downto 8);
    tmp_5_fu_300_p4 <= w0_V(15 downto 12);
    tmp_6_fu_318_p4 <= w1_V(15 downto 12);
    tmp_7_fu_370_p4 <= w0_V(19 downto 16);
    tmp_8_fu_388_p4 <= w1_V(19 downto 16);
    tmp_9_fu_440_p4 <= w0_V(23 downto 20);
    tmp_s_fu_160_p4 <= w0_V(7 downto 4);
    trunc_ln647_fu_98_p1 <= w2_V(4 - 1 downto 0);
    trunc_ln68_2_fu_114_p1 <= w1_V(4 - 1 downto 0);
    trunc_ln68_fu_102_p1 <= w0_V(4 - 1 downto 0);
end behav;
