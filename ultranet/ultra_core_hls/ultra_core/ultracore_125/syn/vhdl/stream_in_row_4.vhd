-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity stream_in_row_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_V_V_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    in_V_V_empty_n : IN STD_LOGIC;
    in_V_V_read : OUT STD_LOGIC;
    row_buffer_V_address1 : OUT STD_LOGIC_VECTOR (8 downto 0);
    row_buffer_V_ce1 : OUT STD_LOGIC;
    row_buffer_V_we1 : OUT STD_LOGIC;
    row_buffer_V_d1 : OUT STD_LOGIC_VECTOR (127 downto 0);
    skip_flag : IN STD_LOGIC;
    rowBufferIdx_V : IN STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of stream_in_row_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv9_51 : STD_LOGIC_VECTOR (8 downto 0) := "001010001";
    constant ap_const_lv7_51 : STD_LOGIC_VECTOR (6 downto 0) := "1010001";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv7_50 : STD_LOGIC_VECTOR (6 downto 0) := "1010000";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal in_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln29_reg_223 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln33_reg_232 : STD_LOGIC_VECTOR (0 downto 0);
    signal v2_V_0_reg_103 : STD_LOGIC_VECTOR (63 downto 0);
    signal w_0_0_reg_115 : STD_LOGIC_VECTOR (6 downto 0);
    signal skip_flag_read_read_fu_74_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mul_ln321_fu_154_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal mul_ln321_reg_218 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln29_fu_160_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_predicate_op24_read_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln29_reg_223_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln29_fu_166_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal icmp_ln33_fu_172_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln321_fu_182_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln321_reg_236 : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln321_reg_236_pp0_iter1_reg : STD_LOGIC_VECTOR (8 downto 0);
    signal trunc_ln96_fu_197_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_phi_reg_pp0_iter0_reg_V_0_reg_126 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_reg_pp0_iter1_reg_V_0_reg_126 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_reg_pp0_iter2_reg_V_0_reg_126 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_reg_pp0_iter0_v1_V_0_reg_139 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_reg_pp0_iter1_v1_V_0_reg_139 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_phi_reg_pp0_iter2_v1_V_0_reg_139 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln321_3_fu_210_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal mul_ln321_fu_154_p0 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln321_2_fu_178_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal mul_ln321_fu_154_p00 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_condition_93 : BOOLEAN;
    signal ap_condition_133 : BOOLEAN;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_phi_reg_pp0_iter1_reg_V_0_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_93)) then
                if (((icmp_ln33_fu_172_p2 = ap_const_lv1_1) and (icmp_ln29_fu_160_p2 = ap_const_lv1_0))) then 
                    ap_phi_reg_pp0_iter1_reg_V_0_reg_126 <= ap_const_lv64_0;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_reg_V_0_reg_126 <= ap_phi_reg_pp0_iter0_reg_V_0_reg_126;
                end if;
            end if; 
        end if;
    end process;

    ap_phi_reg_pp0_iter1_v1_V_0_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_93)) then
                if (((icmp_ln33_fu_172_p2 = ap_const_lv1_1) and (icmp_ln29_fu_160_p2 = ap_const_lv1_0))) then 
                    ap_phi_reg_pp0_iter1_v1_V_0_reg_139 <= ap_const_lv64_0;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter1_v1_V_0_reg_139 <= ap_phi_reg_pp0_iter0_v1_V_0_reg_139;
                end if;
            end if; 
        end if;
    end process;

    ap_phi_reg_pp0_iter2_reg_V_0_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_133)) then
                if (((icmp_ln33_reg_232 = ap_const_lv1_0) and (icmp_ln29_reg_223 = ap_const_lv1_0))) then 
                    ap_phi_reg_pp0_iter2_reg_V_0_reg_126 <= in_V_V_dout(127 downto 64);
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter2_reg_V_0_reg_126 <= ap_phi_reg_pp0_iter1_reg_V_0_reg_126;
                end if;
            end if; 
        end if;
    end process;

    ap_phi_reg_pp0_iter2_v1_V_0_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_133)) then
                if (((icmp_ln33_reg_232 = ap_const_lv1_0) and (icmp_ln29_reg_223 = ap_const_lv1_0))) then 
                    ap_phi_reg_pp0_iter2_v1_V_0_reg_139 <= trunc_ln96_fu_197_p1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter2_v1_V_0_reg_139 <= ap_phi_reg_pp0_iter1_v1_V_0_reg_139;
                end if;
            end if; 
        end if;
    end process;

    v2_V_0_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                v2_V_0_reg_103 <= ap_const_lv64_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_223_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
                v2_V_0_reg_103 <= ap_phi_reg_pp0_iter2_reg_V_0_reg_126;
            end if; 
        end if;
    end process;

    w_0_0_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                w_0_0_reg_115 <= ap_const_lv7_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_fu_160_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                w_0_0_reg_115 <= add_ln29_fu_166_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_fu_160_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln321_reg_236 <= add_ln321_fu_182_p2;
                icmp_ln33_reg_232 <= icmp_ln33_fu_172_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln321_reg_236_pp0_iter1_reg <= add_ln321_reg_236;
                icmp_ln29_reg_223 <= icmp_ln29_fu_160_p2;
                icmp_ln29_reg_223_pp0_iter1_reg <= icmp_ln29_reg_223;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                mul_ln321_reg_218 <= mul_ln321_fu_154_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter1, skip_flag_read_read_fu_74_p2, icmp_ln29_fu_160_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_74_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_74_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln29_fu_160_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((icmp_ln29_fu_160_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln29_fu_166_p2 <= std_logic_vector(unsigned(w_0_0_reg_115) + unsigned(ap_const_lv7_1));
    add_ln321_fu_182_p2 <= std_logic_vector(unsigned(mul_ln321_reg_218) + unsigned(zext_ln321_2_fu_178_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state5 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(in_V_V_empty_n, ap_enable_reg_pp0_iter1, ap_predicate_op24_read_state3)
    begin
                ap_block_pp0_stage0_11001 <= ((in_V_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_predicate_op24_read_state3 = ap_const_boolean_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(in_V_V_empty_n, ap_enable_reg_pp0_iter1, ap_predicate_op24_read_state3)
    begin
                ap_block_pp0_stage0_subdone <= ((in_V_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_predicate_op24_read_state3 = ap_const_boolean_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(in_V_V_empty_n, ap_predicate_op24_read_state3)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((in_V_V_empty_n = ap_const_logic_0) and (ap_predicate_op24_read_state3 = ap_const_boolean_1));
    end process;

        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_133_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
                ap_condition_133 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_93_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
                ap_condition_93 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln29_fu_160_p2)
    begin
        if ((icmp_ln29_fu_160_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_reg_V_0_reg_126 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    ap_phi_reg_pp0_iter0_v1_V_0_reg_139 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_predicate_op24_read_state3_assign_proc : process(icmp_ln29_reg_223, icmp_ln33_reg_232)
    begin
                ap_predicate_op24_read_state3 <= ((icmp_ln33_reg_232 = ap_const_lv1_0) and (icmp_ln29_reg_223 = ap_const_lv1_0));
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln29_fu_160_p2 <= "1" when (w_0_0_reg_115 = ap_const_lv7_51) else "0";
    icmp_ln33_fu_172_p2 <= "1" when (w_0_0_reg_115 = ap_const_lv7_50) else "0";

    in_V_V_blk_n_assign_proc : process(in_V_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln29_reg_223, icmp_ln33_reg_232)
    begin
        if (((icmp_ln33_reg_232 = ap_const_lv1_0) and (icmp_ln29_reg_223 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in_V_V_blk_n <= in_V_V_empty_n;
        else 
            in_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_V_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_predicate_op24_read_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_predicate_op24_read_state3 = ap_const_boolean_1))) then 
            in_V_V_read <= ap_const_logic_1;
        else 
            in_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln321_fu_154_p0 <= mul_ln321_fu_154_p00(2 - 1 downto 0);
    mul_ln321_fu_154_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(rowBufferIdx_V),9));
    mul_ln321_fu_154_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(mul_ln321_fu_154_p0) * unsigned(ap_const_lv9_51), 9));
    row_buffer_V_address1 <= zext_ln321_3_fu_210_p1(9 - 1 downto 0);

    row_buffer_V_ce1_assign_proc : process(ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            row_buffer_V_ce1 <= ap_const_logic_1;
        else 
            row_buffer_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    row_buffer_V_d1 <= (ap_phi_reg_pp0_iter2_v1_V_0_reg_139 & v2_V_0_reg_103);

    row_buffer_V_we1_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln29_reg_223_pp0_iter1_reg, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_223_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            row_buffer_V_we1 <= ap_const_logic_1;
        else 
            row_buffer_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    skip_flag_read_read_fu_74_p2 <= (0=>skip_flag, others=>'-');
    trunc_ln96_fu_197_p1 <= in_V_V_dout(64 - 1 downto 0);
    zext_ln321_2_fu_178_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(w_0_0_reg_115),9));
    zext_ln321_3_fu_210_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln321_reg_236_pp0_iter1_reg),64));
end behav;
