-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity stream_out_data_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    out_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_V_V_full_n : IN STD_LOGIC;
    out_V_V_write : OUT STD_LOGIC;
    row_buffer_0_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    row_buffer_0_V_ce0 : OUT STD_LOGIC;
    row_buffer_0_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    row_buffer_1_V_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    row_buffer_1_V_ce0 : OUT STD_LOGIC;
    row_buffer_1_V_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    skip_flag : IN STD_LOGIC;
    outRowIdx_V : IN STD_LOGIC_VECTOR (9 downto 0);
    startRowBufferIdx_V : IN STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of stream_out_data_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv11_7FF : STD_LOGIC_VECTOR (10 downto 0) := "11111111111";
    constant ap_const_lv15_4200 : STD_LOGIC_VECTOR (14 downto 0) := "100001000000000";
    constant ap_const_lv15_1 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    constant ap_const_lv10_210 : STD_LOGIC_VECTOR (9 downto 0) := "1000010000";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv11_9 : STD_LOGIC_VECTOR (10 downto 0) := "00000001001";
    constant ap_const_lv10_20F : STD_LOGIC_VECTOR (9 downto 0) := "1000001111";
    constant ap_const_lv8_2F : STD_LOGIC_VECTOR (7 downto 0) := "00101111";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv11_B0 : STD_LOGIC_VECTOR (10 downto 0) := "00010110000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal out_V_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln65_reg_447 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln65_reg_447_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_reg_157 : STD_LOGIC_VECTOR (14 downto 0);
    signal t_V_1_reg_168 : STD_LOGIC_VECTOR (7 downto 0);
    signal t_V_reg_179 : STD_LOGIC_VECTOR (7 downto 0);
    signal cycle_0_reg_190 : STD_LOGIC_VECTOR (9 downto 0);
    signal skip_flag_read_read_fu_118_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_V_fu_205_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ret_V_reg_442 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln65_fu_211_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln65_reg_447_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln65_fu_217_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal grp_fu_425_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln321_reg_456 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln83_fu_295_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln83_reg_461 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln83_reg_461_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln96_fu_327_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal infoldIdx_V_1_fu_341_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal cycle_fu_349_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal v1_V_fu_404_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal v1_V_reg_492 : STD_LOGIC_VECTOR (15 downto 0);
    signal v2_V_fu_411_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal v2_V_reg_497 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal sext_ln321_fu_355_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal sext_ln1354_fu_201_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln66_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal wr_V_fu_237_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln544_fu_256_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal simdIdx_V_fu_247_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal rowBufferIdx_V_fu_251_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln1353_fu_272_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal ret_V_1_fu_276_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_6_fu_281_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln891_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln66_fu_229_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln879_fu_307_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal w_V_fu_313_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln96_fu_301_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln98_fu_319_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal infoldIdx_V_fu_335_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln647_1_fu_374_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln647_fu_360_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_25_1_fu_386_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_s_fu_364_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_26_1_fu_396_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal p_Result_24_1_fu_378_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_425_p0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_425_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_fu_425_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal grp_fu_425_p10 : STD_LOGIC_VECTOR (10 downto 0);

    component ultra_net_mac_mulcyx IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (8 downto 0);
        din1 : IN STD_LOGIC_VECTOR (1 downto 0);
        din2 : IN STD_LOGIC_VECTOR (10 downto 0);
        dout : OUT STD_LOGIC_VECTOR (10 downto 0) );
    end component;



begin
    ultra_net_mac_mulcyx_U585 : component ultra_net_mac_mulcyx
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 9,
        din1_WIDTH => 2,
        din2_WIDTH => 11,
        dout_WIDTH => 11)
    port map (
        din0 => grp_fu_425_p0,
        din1 => grp_fu_425_p1,
        din2 => grp_fu_425_p2,
        dout => grp_fu_425_p3);





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
                elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_118_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
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
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_118_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    cycle_0_reg_190_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln65_fu_211_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                cycle_0_reg_190 <= cycle_fu_349_p2;
            elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_118_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                cycle_0_reg_190 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_157_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln65_fu_211_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                indvar_flatten_reg_157 <= add_ln65_fu_217_p2;
            elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_118_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten_reg_157 <= ap_const_lv15_0;
            end if; 
        end if;
    end process;

    t_V_1_reg_168_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln65_fu_211_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                t_V_1_reg_168 <= infoldIdx_V_1_fu_341_p3;
            elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_118_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_1_reg_168 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    t_V_reg_179_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln65_fu_211_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                t_V_reg_179 <= select_ln96_fu_327_p3;
            elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_118_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                t_V_reg_179 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln65_fu_211_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln321_reg_456 <= grp_fu_425_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln65_reg_447 <= icmp_ln65_fu_211_p2;
                icmp_ln65_reg_447_pp0_iter1_reg <= icmp_ln65_reg_447;
                or_ln83_reg_461_pp0_iter1_reg <= or_ln83_reg_461;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                icmp_ln65_reg_447_pp0_iter2_reg <= icmp_ln65_reg_447_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln65_fu_211_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                or_ln83_reg_461 <= or_ln83_fu_295_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_118_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                ret_V_reg_442 <= ret_V_fu_205_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln65_reg_447_pp0_iter1_reg = ap_const_lv1_0))) then
                v1_V_reg_492 <= v1_V_fu_404_p3;
                v2_V_reg_497 <= v2_V_fu_411_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter3, skip_flag_read_read_fu_118_p2, icmp_ln65_fu_211_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_118_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_start = ap_const_logic_1) and (skip_flag_read_read_fu_118_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln65_fu_211_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((icmp_ln65_fu_211_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln65_fu_217_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_157) + unsigned(ap_const_lv15_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state6 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(out_V_V_full_n, ap_enable_reg_pp0_iter3, icmp_ln65_reg_447_pp0_iter2_reg)
    begin
                ap_block_pp0_stage0_01001 <= ((icmp_ln65_reg_447_pp0_iter2_reg = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(out_V_V_full_n, ap_enable_reg_pp0_iter3, icmp_ln65_reg_447_pp0_iter2_reg)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln65_reg_447_pp0_iter2_reg = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(out_V_V_full_n, ap_enable_reg_pp0_iter3, icmp_ln65_reg_447_pp0_iter2_reg)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln65_reg_447_pp0_iter2_reg = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_pp0_stage0_iter3_assign_proc : process(out_V_V_full_n, icmp_ln65_reg_447_pp0_iter2_reg)
    begin
                ap_block_state5_pp0_stage0_iter3 <= ((icmp_ln65_reg_447_pp0_iter2_reg = ap_const_lv1_0) and (out_V_V_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln65_fu_211_p2)
    begin
        if ((icmp_ln65_fu_211_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state6)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    cycle_fu_349_p2 <= std_logic_vector(unsigned(ap_const_lv10_1) + unsigned(select_ln66_fu_229_p3));
    grp_fu_425_p0 <= ap_const_lv11_B0(9 - 1 downto 0);
    grp_fu_425_p1 <= grp_fu_425_p10(2 - 1 downto 0);
    grp_fu_425_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(rowBufferIdx_V_fu_251_p2),11));
    grp_fu_425_p2 <= (trunc_ln544_fu_256_p1 & simdIdx_V_fu_247_p1);
    icmp_ln65_fu_211_p2 <= "1" when (indvar_flatten_reg_157 = ap_const_lv15_4200) else "0";
    icmp_ln66_fu_223_p2 <= "1" when (cycle_0_reg_190 = ap_const_lv10_210) else "0";
    icmp_ln879_fu_307_p2 <= "1" when (t_V_1_reg_168 = ap_const_lv8_2F) else "0";
    icmp_ln891_fu_289_p2 <= "1" when (signed(ret_V_1_fu_276_p2) > signed(ap_const_lv11_9)) else "0";
    icmp_ln96_fu_301_p2 <= "1" when (select_ln66_fu_229_p3 = ap_const_lv10_20F) else "0";
    infoldIdx_V_1_fu_341_p3 <= 
        ap_const_lv8_0 when (icmp_ln879_fu_307_p2(0) = '1') else 
        infoldIdx_V_fu_335_p2;
    infoldIdx_V_fu_335_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(t_V_1_reg_168));
    or_ln83_fu_295_p2 <= (tmp_6_fu_281_p3 or icmp_ln891_fu_289_p2);

    out_V_V_blk_n_assign_proc : process(out_V_V_full_n, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0, icmp_ln65_reg_447_pp0_iter2_reg)
    begin
        if (((icmp_ln65_reg_447_pp0_iter2_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            out_V_V_blk_n <= out_V_V_full_n;
        else 
            out_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_V_V_din <= (v1_V_reg_492 & v2_V_reg_497);

    out_V_V_write_assign_proc : process(ap_enable_reg_pp0_iter3, icmp_ln65_reg_447_pp0_iter2_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln65_reg_447_pp0_iter2_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            out_V_V_write <= ap_const_logic_1;
        else 
            out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_24_1_fu_378_p3 <= (trunc_ln647_1_fu_374_p1 & trunc_ln647_fu_360_p1);
    p_Result_25_1_fu_386_p4 <= row_buffer_1_V_q0(15 downto 8);
    p_Result_26_1_fu_396_p3 <= (p_Result_25_1_fu_386_p4 & p_Result_s_fu_364_p4);
    p_Result_s_fu_364_p4 <= row_buffer_0_V_q0(15 downto 8);
    ret_V_1_fu_276_p2 <= std_logic_vector(unsigned(zext_ln1353_fu_272_p1) + unsigned(ret_V_reg_442));
    ret_V_fu_205_p2 <= std_logic_vector(signed(sext_ln1354_fu_201_p1) + signed(ap_const_lv11_7FF));
    rowBufferIdx_V_fu_251_p2 <= std_logic_vector(unsigned(wr_V_fu_237_p4) + unsigned(startRowBufferIdx_V));
    row_buffer_0_V_address0 <= sext_ln321_fu_355_p1(10 - 1 downto 0);

    row_buffer_0_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            row_buffer_0_V_ce0 <= ap_const_logic_1;
        else 
            row_buffer_0_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    row_buffer_1_V_address0 <= sext_ln321_fu_355_p1(10 - 1 downto 0);

    row_buffer_1_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            row_buffer_1_V_ce0 <= ap_const_logic_1;
        else 
            row_buffer_1_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln66_fu_229_p3 <= 
        ap_const_lv10_0 when (icmp_ln66_fu_223_p2(0) = '1') else 
        cycle_0_reg_190;
    select_ln96_fu_327_p3 <= 
        ap_const_lv8_0 when (icmp_ln96_fu_301_p2(0) = '1') else 
        select_ln98_fu_319_p3;
    select_ln98_fu_319_p3 <= 
        w_V_fu_313_p2 when (icmp_ln879_fu_307_p2(0) = '1') else 
        t_V_reg_179;
        sext_ln1354_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(outRowIdx_V),11));

        sext_ln321_fu_355_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(add_ln321_reg_456),64));

    simdIdx_V_fu_247_p1 <= t_V_1_reg_168(4 - 1 downto 0);
    skip_flag_read_read_fu_118_p2 <= (0=>skip_flag, others=>'-');
    tmp_6_fu_281_p3 <= ret_V_1_fu_276_p2(10 downto 10);
    trunc_ln544_fu_256_p1 <= t_V_reg_179(7 - 1 downto 0);
    trunc_ln647_1_fu_374_p1 <= row_buffer_1_V_q0(8 - 1 downto 0);
    trunc_ln647_fu_360_p1 <= row_buffer_0_V_q0(8 - 1 downto 0);
    v1_V_fu_404_p3 <= 
        ap_const_lv16_0 when (or_ln83_reg_461_pp0_iter1_reg(0) = '1') else 
        p_Result_26_1_fu_396_p3;
    v2_V_fu_411_p3 <= 
        ap_const_lv16_0 when (or_ln83_reg_461_pp0_iter1_reg(0) = '1') else 
        p_Result_24_1_fu_378_p3;
    w_V_fu_313_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(t_V_reg_179));
    wr_V_fu_237_p4 <= t_V_1_reg_168(5 downto 4);
    zext_ln1353_fu_272_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(wr_V_fu_237_p4),11));
end behav;