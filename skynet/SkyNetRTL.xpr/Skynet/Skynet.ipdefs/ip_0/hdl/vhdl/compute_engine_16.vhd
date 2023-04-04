-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity compute_engine_16 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    w0_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b0_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w1_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b1_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w2_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b2_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w3_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b3_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w4_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b4_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w5_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b5_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w6_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b6_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w7_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b7_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w8_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b8_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w9_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b9_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w10_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b10_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w11_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b11_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w12_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b12_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w13_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b13_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w14_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b14_V : IN STD_LOGIC_VECTOR (8 downto 0);
    w15_V : IN STD_LOGIC_VECTOR (10 downto 0);
    b15_V : IN STD_LOGIC_VECTOR (8 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (12 downto 0);
    ap_ce : IN STD_LOGIC );
end;


architecture behav of compute_engine_16 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_7FFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "01111111111111111111111111111111";
    constant ap_const_lv32_80000000 : STD_LOGIC_VECTOR (31 downto 0) := "10000000000000000000000000000000";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv13_FFF : STD_LOGIC_VECTOR (12 downto 0) := "0111111111111";
    constant ap_const_lv13_1000 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";

    signal b15_V_read_reg_963 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal w15_V_read_reg_968 : STD_LOGIC_VECTOR (10 downto 0);
    signal b13_V_read_reg_973 : STD_LOGIC_VECTOR (8 downto 0);
    signal w13_V_read_reg_978 : STD_LOGIC_VECTOR (10 downto 0);
    signal b11_V_read_reg_983 : STD_LOGIC_VECTOR (8 downto 0);
    signal w11_V_read_reg_988 : STD_LOGIC_VECTOR (10 downto 0);
    signal b9_V_read_reg_993 : STD_LOGIC_VECTOR (8 downto 0);
    signal w9_V_read_reg_998 : STD_LOGIC_VECTOR (10 downto 0);
    signal b7_V_read_reg_1003 : STD_LOGIC_VECTOR (8 downto 0);
    signal w7_V_read_reg_1008 : STD_LOGIC_VECTOR (10 downto 0);
    signal b5_V_read_reg_1013 : STD_LOGIC_VECTOR (8 downto 0);
    signal w5_V_read_reg_1018 : STD_LOGIC_VECTOR (10 downto 0);
    signal b3_V_read_reg_1023 : STD_LOGIC_VECTOR (8 downto 0);
    signal w3_V_read_reg_1028 : STD_LOGIC_VECTOR (10 downto 0);
    signal b1_V_read_reg_1033 : STD_LOGIC_VECTOR (8 downto 0);
    signal w1_V_read_reg_1038 : STD_LOGIC_VECTOR (10 downto 0);
    signal r_V_32_fu_851_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_32_reg_1043 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_34_fu_857_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_34_reg_1048 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_36_fu_863_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_36_reg_1053 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_38_fu_869_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_38_reg_1058 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_40_fu_875_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_40_reg_1063 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_42_fu_881_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_42_reg_1068 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_44_fu_887_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_44_reg_1073 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_46_fu_893_p2 : STD_LOGIC_VECTOR (19 downto 0);
    signal r_V_46_reg_1078 : STD_LOGIC_VECTOR (19 downto 0);
    signal grp_fu_899_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln1192_2_reg_1083 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_907_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln1192_3_reg_1088 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_915_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln1192_5_reg_1093 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_923_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln1192_6_reg_1098 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_931_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln1192_8_reg_1103 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_939_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln1192_9_reg_1108 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_947_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln1192_11_reg_1113 : STD_LOGIC_VECTOR (20 downto 0);
    signal grp_fu_955_p3 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln1192_12_reg_1118 : STD_LOGIC_VECTOR (20 downto 0);
    signal p_Result_s_reg_1123 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_21_fu_556_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_21_reg_1130 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_98_reg_1136 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_24_fu_654_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_Val2_24_reg_1143 : STD_LOGIC_VECTOR (12 downto 0);
    signal and_ln781_fu_762_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln781_reg_1149 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln785_4_fu_780_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln785_4_reg_1154 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln786_fu_792_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln786_reg_1159 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_1_fu_810_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_1_reg_1164 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln340_10_fu_816_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln340_10_reg_1169 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal sext_ln1192_2_fu_445_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1192_1_fu_442_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal add_ln1192_4_fu_448_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1192_5_fu_461_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1192_4_fu_458_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal add_ln1192_7_fu_464_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1192_6_fu_470_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal sext_ln1192_3_fu_454_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal add_ln1192_fu_474_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal sext_ln1192_9_fu_491_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1192_8_fu_488_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal add_ln1192_10_fu_494_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1192_12_fu_507_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1192_11_fu_504_p1 : STD_LOGIC_VECTOR (21 downto 0);
    signal add_ln1192_13_fu_510_p2 : STD_LOGIC_VECTOR (21 downto 0);
    signal sext_ln1192_13_fu_516_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal sext_ln1192_10_fu_500_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal add_ln1192_1_fu_520_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal p_Val2_18_fu_480_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Val2_19_fu_526_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal rhs_V_fu_538_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal lhs_V_fu_534_p1 : STD_LOGIC_VECTOR (32 downto 0);
    signal ret_V_fu_542_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal xor_ln786_2_fu_570_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln340_fu_584_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln340_1_fu_580_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal underflow_fu_575_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln340_9_fu_589_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln340_2_fu_594_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln388_2_fu_601_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal add14_V_fu_608_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_642_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln415_fu_650_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal p_Val2_23_fu_624_p4 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_229_fu_660_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_100_fu_634_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln416_fu_668_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_71_fu_688_p4 : STD_LOGIC_VECTOR (4 downto 0);
    signal p_Result_34_fu_704_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal carry_1_fu_674_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_ones_fu_714_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range1_all_zeros_fu_720_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_231_fu_734_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal Range2_all_ones_fu_698_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln779_fu_742_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln779_fu_748_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal deleted_zeros_fu_726_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_101_fu_680_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln785_3_fu_768_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_99_fu_616_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln785_1_fu_774_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal deleted_ones_fu_754_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln786_fu_798_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln786_fu_804_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal overflow_fu_786_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln340_96_fu_822_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln340_fu_826_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln340_fu_831_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal select_ln388_fu_837_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal select_ln340_65_fu_843_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal ap_ce_reg : STD_LOGIC;
    signal w0_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b0_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w1_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b1_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w2_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b2_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w3_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b3_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w4_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b4_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w5_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b5_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w6_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b6_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w7_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b7_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w8_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b8_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w9_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b9_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w10_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b10_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w11_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b11_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w12_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b12_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w13_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b13_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w14_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b14_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal w15_V_int_reg : STD_LOGIC_VECTOR (10 downto 0);
    signal b15_V_int_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_return_int_reg : STD_LOGIC_VECTOR (12 downto 0);

    component SkyNet_mul_mul_11hbi IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (10 downto 0);
        din1 : IN STD_LOGIC_VECTOR (8 downto 0);
        dout : OUT STD_LOGIC_VECTOR (19 downto 0) );
    end component;


    component SkyNet_mac_muladdibs IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (10 downto 0);
        din1 : IN STD_LOGIC_VECTOR (8 downto 0);
        din2 : IN STD_LOGIC_VECTOR (19 downto 0);
        dout : OUT STD_LOGIC_VECTOR (20 downto 0) );
    end component;



begin
    SkyNet_mul_mul_11hbi_U782 : component SkyNet_mul_mul_11hbi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        dout_WIDTH => 20)
    port map (
        din0 => w0_V_int_reg,
        din1 => b0_V_int_reg,
        dout => r_V_32_fu_851_p2);

    SkyNet_mul_mul_11hbi_U783 : component SkyNet_mul_mul_11hbi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        dout_WIDTH => 20)
    port map (
        din0 => w2_V_int_reg,
        din1 => b2_V_int_reg,
        dout => r_V_34_fu_857_p2);

    SkyNet_mul_mul_11hbi_U784 : component SkyNet_mul_mul_11hbi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        dout_WIDTH => 20)
    port map (
        din0 => w4_V_int_reg,
        din1 => b4_V_int_reg,
        dout => r_V_36_fu_863_p2);

    SkyNet_mul_mul_11hbi_U785 : component SkyNet_mul_mul_11hbi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        dout_WIDTH => 20)
    port map (
        din0 => w6_V_int_reg,
        din1 => b6_V_int_reg,
        dout => r_V_38_fu_869_p2);

    SkyNet_mul_mul_11hbi_U786 : component SkyNet_mul_mul_11hbi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        dout_WIDTH => 20)
    port map (
        din0 => w8_V_int_reg,
        din1 => b8_V_int_reg,
        dout => r_V_40_fu_875_p2);

    SkyNet_mul_mul_11hbi_U787 : component SkyNet_mul_mul_11hbi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        dout_WIDTH => 20)
    port map (
        din0 => w10_V_int_reg,
        din1 => b10_V_int_reg,
        dout => r_V_42_fu_881_p2);

    SkyNet_mul_mul_11hbi_U788 : component SkyNet_mul_mul_11hbi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        dout_WIDTH => 20)
    port map (
        din0 => w12_V_int_reg,
        din1 => b12_V_int_reg,
        dout => r_V_44_fu_887_p2);

    SkyNet_mul_mul_11hbi_U789 : component SkyNet_mul_mul_11hbi
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        dout_WIDTH => 20)
    port map (
        din0 => w14_V_int_reg,
        din1 => b14_V_int_reg,
        dout => r_V_46_fu_893_p2);

    SkyNet_mac_muladdibs_U790 : component SkyNet_mac_muladdibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        din2_WIDTH => 20,
        dout_WIDTH => 21)
    port map (
        din0 => w1_V_read_reg_1038,
        din1 => b1_V_read_reg_1033,
        din2 => r_V_32_reg_1043,
        dout => grp_fu_899_p3);

    SkyNet_mac_muladdibs_U791 : component SkyNet_mac_muladdibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        din2_WIDTH => 20,
        dout_WIDTH => 21)
    port map (
        din0 => w3_V_read_reg_1028,
        din1 => b3_V_read_reg_1023,
        din2 => r_V_34_reg_1048,
        dout => grp_fu_907_p3);

    SkyNet_mac_muladdibs_U792 : component SkyNet_mac_muladdibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        din2_WIDTH => 20,
        dout_WIDTH => 21)
    port map (
        din0 => w5_V_read_reg_1018,
        din1 => b5_V_read_reg_1013,
        din2 => r_V_36_reg_1053,
        dout => grp_fu_915_p3);

    SkyNet_mac_muladdibs_U793 : component SkyNet_mac_muladdibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        din2_WIDTH => 20,
        dout_WIDTH => 21)
    port map (
        din0 => w7_V_read_reg_1008,
        din1 => b7_V_read_reg_1003,
        din2 => r_V_38_reg_1058,
        dout => grp_fu_923_p3);

    SkyNet_mac_muladdibs_U794 : component SkyNet_mac_muladdibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        din2_WIDTH => 20,
        dout_WIDTH => 21)
    port map (
        din0 => w9_V_read_reg_998,
        din1 => b9_V_read_reg_993,
        din2 => r_V_40_reg_1063,
        dout => grp_fu_931_p3);

    SkyNet_mac_muladdibs_U795 : component SkyNet_mac_muladdibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        din2_WIDTH => 20,
        dout_WIDTH => 21)
    port map (
        din0 => w11_V_read_reg_988,
        din1 => b11_V_read_reg_983,
        din2 => r_V_42_reg_1068,
        dout => grp_fu_939_p3);

    SkyNet_mac_muladdibs_U796 : component SkyNet_mac_muladdibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        din2_WIDTH => 20,
        dout_WIDTH => 21)
    port map (
        din0 => w13_V_read_reg_978,
        din1 => b13_V_read_reg_973,
        din2 => r_V_44_reg_1073,
        dout => grp_fu_947_p3);

    SkyNet_mac_muladdibs_U797 : component SkyNet_mac_muladdibs
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 11,
        din1_WIDTH => 9,
        din2_WIDTH => 20,
        dout_WIDTH => 21)
    port map (
        din0 => w15_V_read_reg_968,
        din1 => b15_V_read_reg_963,
        din2 => r_V_46_reg_1078,
        dout => grp_fu_955_p3);





    ap_ce_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_ce_reg <= ap_ce;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_ce_reg) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
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
                p_Result_98_reg_1136 <= p_Val2_21_fu_556_p2(31 downto 31);
                p_Result_s_reg_1123 <= ret_V_fu_542_p2(32 downto 32);
                    p_Val2_21_reg_1130(31 downto 9) <= p_Val2_21_fu_556_p2(31 downto 9);
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
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce_reg)) then
                ap_return_int_reg <= select_ln340_65_fu_843_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_ce)) then
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
            end if;
        end if;
    end process;
    p_Val2_21_reg_1130(8 downto 0) <= "000000000";
    Range1_all_ones_fu_714_p2 <= "1" when (p_Result_34_fu_704_p4 = ap_const_lv6_3F) else "0";
    Range1_all_zeros_fu_720_p2 <= "1" when (p_Result_34_fu_704_p4 = ap_const_lv6_0) else "0";
    Range2_all_ones_fu_698_p2 <= "1" when (p_Result_s_71_fu_688_p4 = ap_const_lv5_1F) else "0";
    add14_V_fu_608_p3 <= 
        select_ln340_2_fu_594_p3 when (or_ln340_9_fu_589_p2(0) = '1') else 
        select_ln388_2_fu_601_p3;
    add_ln1192_10_fu_494_p2 <= std_logic_vector(signed(sext_ln1192_9_fu_491_p1) + signed(sext_ln1192_8_fu_488_p1));
    add_ln1192_13_fu_510_p2 <= std_logic_vector(signed(sext_ln1192_12_fu_507_p1) + signed(sext_ln1192_11_fu_504_p1));
    add_ln1192_1_fu_520_p2 <= std_logic_vector(signed(sext_ln1192_13_fu_516_p1) + signed(sext_ln1192_10_fu_500_p1));
    add_ln1192_4_fu_448_p2 <= std_logic_vector(signed(sext_ln1192_2_fu_445_p1) + signed(sext_ln1192_1_fu_442_p1));
    add_ln1192_7_fu_464_p2 <= std_logic_vector(signed(sext_ln1192_5_fu_461_p1) + signed(sext_ln1192_4_fu_458_p1));
    add_ln1192_fu_474_p2 <= std_logic_vector(signed(sext_ln1192_6_fu_470_p1) + signed(sext_ln1192_3_fu_454_p1));
    and_ln779_fu_748_p2 <= (xor_ln779_fu_742_p2 and Range2_all_ones_fu_698_p2);
    and_ln781_fu_762_p2 <= (carry_1_fu_674_p2 and Range1_all_ones_fu_714_p2);
    and_ln786_fu_792_p2 <= (p_Result_101_fu_680_p3 and deleted_ones_fu_754_p3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_return_assign_proc : process(select_ln340_65_fu_843_p3, ap_ce_reg, ap_return_int_reg)
    begin
        if ((ap_const_logic_0 = ap_ce_reg)) then 
            ap_return <= ap_return_int_reg;
        elsif ((ap_const_logic_1 = ap_ce_reg)) then 
            ap_return <= select_ln340_65_fu_843_p3;
        end if; 
    end process;

    carry_1_fu_674_p2 <= (xor_ln416_fu_668_p2 and p_Result_100_fu_634_p3);
    deleted_ones_fu_754_p3 <= 
        and_ln779_fu_748_p2 when (carry_1_fu_674_p2(0) = '1') else 
        Range1_all_ones_fu_714_p2;
    deleted_zeros_fu_726_p3 <= 
        Range1_all_ones_fu_714_p2 when (carry_1_fu_674_p2(0) = '1') else 
        Range1_all_zeros_fu_720_p2;
        lhs_V_fu_534_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_18_fu_480_p3),33));

    or_ln340_10_fu_816_p2 <= (underflow_1_fu_810_p2 or overflow_fu_786_p2);
    or_ln340_96_fu_822_p2 <= (xor_ln785_4_reg_1154 or and_ln786_reg_1159);
    or_ln340_9_fu_589_p2 <= (xor_ln340_fu_584_p2 or p_Result_98_reg_1136);
    or_ln340_fu_826_p2 <= (or_ln340_96_fu_822_p2 or and_ln781_reg_1149);
    or_ln785_1_fu_774_p2 <= (xor_ln785_3_fu_768_p2 or p_Result_101_fu_680_p3);
    or_ln786_fu_798_p2 <= (and_ln786_fu_792_p2 or and_ln781_fu_762_p2);
    overflow_fu_786_p2 <= (xor_ln785_4_fu_780_p2 and or_ln785_1_fu_774_p2);
    p_Result_100_fu_634_p3 <= add14_V_fu_608_p3(25 downto 25);
    p_Result_101_fu_680_p3 <= p_Val2_24_fu_654_p2(12 downto 12);
    p_Result_34_fu_704_p4 <= add14_V_fu_608_p3(31 downto 26);
    p_Result_99_fu_616_p3 <= add14_V_fu_608_p3(31 downto 31);
    p_Result_s_71_fu_688_p4 <= add14_V_fu_608_p3(31 downto 27);
    p_Val2_18_fu_480_p3 <= (add_ln1192_fu_474_p2 & ap_const_lv9_0);
    p_Val2_19_fu_526_p3 <= (add_ln1192_1_fu_520_p2 & ap_const_lv9_0);
    p_Val2_21_fu_556_p2 <= std_logic_vector(signed(p_Val2_18_fu_480_p3) + signed(p_Val2_19_fu_526_p3));
    p_Val2_23_fu_624_p4 <= add14_V_fu_608_p3(25 downto 13);
    p_Val2_24_fu_654_p2 <= std_logic_vector(unsigned(zext_ln415_fu_650_p1) + unsigned(p_Val2_23_fu_624_p4));
    ret_V_fu_542_p2 <= std_logic_vector(signed(rhs_V_fu_538_p1) + signed(lhs_V_fu_534_p1));
        rhs_V_fu_538_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(p_Val2_19_fu_526_p3),33));

    select_ln340_2_fu_594_p3 <= 
        ap_const_lv32_7FFFFFFF when (xor_ln340_1_fu_580_p2(0) = '1') else 
        p_Val2_21_reg_1130;
    select_ln340_65_fu_843_p3 <= 
        select_ln340_fu_831_p3 when (or_ln340_fu_826_p2(0) = '1') else 
        select_ln388_fu_837_p3;
    select_ln340_fu_831_p3 <= 
        ap_const_lv13_FFF when (or_ln340_10_reg_1169(0) = '1') else 
        p_Val2_24_reg_1143;
    select_ln388_2_fu_601_p3 <= 
        ap_const_lv32_80000000 when (underflow_fu_575_p2(0) = '1') else 
        p_Val2_21_reg_1130;
    select_ln388_fu_837_p3 <= 
        ap_const_lv13_1000 when (underflow_1_reg_1164(0) = '1') else 
        p_Val2_24_reg_1143;
        sext_ln1192_10_fu_500_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_10_fu_494_p2),23));

        sext_ln1192_11_fu_504_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_11_reg_1113),22));

        sext_ln1192_12_fu_507_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_12_reg_1118),22));

        sext_ln1192_13_fu_516_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_13_fu_510_p2),23));

        sext_ln1192_1_fu_442_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_2_reg_1083),22));

        sext_ln1192_2_fu_445_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_3_reg_1088),22));

        sext_ln1192_3_fu_454_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_4_fu_448_p2),23));

        sext_ln1192_4_fu_458_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_5_reg_1093),22));

        sext_ln1192_5_fu_461_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_6_reg_1098),22));

        sext_ln1192_6_fu_470_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_7_fu_464_p2),23));

        sext_ln1192_8_fu_488_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_8_reg_1103),22));

        sext_ln1192_9_fu_491_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln1192_9_reg_1108),22));

    tmp_229_fu_660_p3 <= p_Val2_24_fu_654_p2(12 downto 12);
    tmp_231_fu_734_p3 <= add14_V_fu_608_p3(26 downto 26);
    tmp_fu_642_p3 <= add14_V_fu_608_p3(12 downto 12);
    underflow_1_fu_810_p2 <= (xor_ln786_fu_804_p2 and p_Result_99_fu_616_p3);
    underflow_fu_575_p2 <= (xor_ln786_2_fu_570_p2 and p_Result_s_reg_1123);
    xor_ln340_1_fu_580_p2 <= (p_Result_s_reg_1123 xor p_Result_98_reg_1136);
    xor_ln340_fu_584_p2 <= (p_Result_s_reg_1123 xor ap_const_lv1_1);
    xor_ln416_fu_668_p2 <= (tmp_229_fu_660_p3 xor ap_const_lv1_1);
    xor_ln779_fu_742_p2 <= (tmp_231_fu_734_p3 xor ap_const_lv1_1);
    xor_ln785_3_fu_768_p2 <= (deleted_zeros_fu_726_p3 xor ap_const_lv1_1);
    xor_ln785_4_fu_780_p2 <= (p_Result_99_fu_616_p3 xor ap_const_lv1_1);
    xor_ln786_2_fu_570_p2 <= (p_Result_98_reg_1136 xor ap_const_lv1_1);
    xor_ln786_fu_804_p2 <= (or_ln786_fu_798_p2 xor ap_const_lv1_1);
    zext_ln415_fu_650_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_642_p3),13));
end behav;