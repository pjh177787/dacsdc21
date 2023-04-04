-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity conv3padding717 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    reps_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    reps_empty_n : IN STD_LOGIC;
    reps_read : OUT STD_LOGIC;
    reps_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    reps_out_full_n : IN STD_LOGIC;
    reps_out_write : OUT STD_LOGIC;
    in_V_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    in_V_V_empty_n : IN STD_LOGIC;
    in_V_V_read : OUT STD_LOGIC;
    padding_out_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    padding_out_V_V_full_n : IN STD_LOGIC;
    padding_out_V_V_write : OUT STD_LOGIC;
    reps_c_i_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    reps_c_i_full_n : IN STD_LOGIC;
    reps_c_i_write : OUT STD_LOGIC );
end;


architecture behav of conv3padding717 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv10_3FE : STD_LOGIC_VECTOR (9 downto 0) := "1111111110";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_9 : STD_LOGIC_VECTOR (9 downto 0) := "0000001001";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal reps_blk_n : STD_LOGIC;
    signal reps_out_blk_n : STD_LOGIC;
    signal reps_c_i_blk_n : STD_LOGIC;
    signal reps_read_reg_265 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal add_ln130_fu_183_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln130_reg_271 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln130_1_fu_189_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln130_1_reg_276 : STD_LOGIC_VECTOR (31 downto 0);
    signal storeBufferIdx_V_fu_200_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal storeBufferIdx_V_reg_284 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln132_fu_206_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln132_reg_289 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln130_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln134_fu_221_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln134_reg_294 : STD_LOGIC_VECTOR (0 downto 0);
    signal rep_fu_227_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal rep_reg_299 : STD_LOGIC_VECTOR (31 downto 0);
    signal xor_ln132_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln132_reg_304 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal loadBufferIdx_V_fu_239_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal loadBufferIdx_V_reg_309 : STD_LOGIC_VECTOR (1 downto 0);
    signal rowIdx_V_2_fu_257_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal rowIdx_V_2_reg_314 : STD_LOGIC_VECTOR (9 downto 0);
    signal row_buffer_0_V_ce0 : STD_LOGIC;
    signal row_buffer_0_V_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal row_buffer_0_V_ce1 : STD_LOGIC;
    signal row_buffer_0_V_we1 : STD_LOGIC;
    signal row_buffer_1_V_ce0 : STD_LOGIC;
    signal row_buffer_1_V_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal row_buffer_1_V_ce1 : STD_LOGIC;
    signal row_buffer_1_V_we1 : STD_LOGIC;
    signal grp_stream_out_data_4_fu_149_ap_start : STD_LOGIC;
    signal grp_stream_out_data_4_fu_149_ap_done : STD_LOGIC;
    signal grp_stream_out_data_4_fu_149_ap_idle : STD_LOGIC;
    signal grp_stream_out_data_4_fu_149_ap_ready : STD_LOGIC;
    signal grp_stream_out_data_4_fu_149_out_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_stream_out_data_4_fu_149_out_V_V_write : STD_LOGIC;
    signal grp_stream_out_data_4_fu_149_row_buffer_0_V_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_stream_out_data_4_fu_149_row_buffer_0_V_ce0 : STD_LOGIC;
    signal grp_stream_out_data_4_fu_149_row_buffer_1_V_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_stream_out_data_4_fu_149_row_buffer_1_V_ce0 : STD_LOGIC;
    signal grp_stream_out_data_4_fu_149_skip_flag : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_ap_start : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_ap_done : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_ap_idle : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_ap_ready : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_in_V_V_read : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_row_buffer_0_V_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_stream_in_row_3_fu_162_row_buffer_0_V_ce1 : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_row_buffer_0_V_we1 : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_row_buffer_0_V_d1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_stream_in_row_3_fu_162_row_buffer_1_V_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_stream_in_row_3_fu_162_row_buffer_1_V_ce1 : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_row_buffer_1_V_we1 : STD_LOGIC;
    signal grp_stream_in_row_3_fu_162_row_buffer_1_V_d1 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_stream_in_row_3_fu_162_skip_flag : STD_LOGIC;
    signal t_V_7_reg_102 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_state5_on_subcall_done : BOOLEAN;
    signal t_V_reg_114 : STD_LOGIC_VECTOR (1 downto 0);
    signal t_V_8_reg_126 : STD_LOGIC_VECTOR (9 downto 0);
    signal rep_0_i_i_i_reg_138 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_stream_out_data_4_fu_149_ap_start_reg : STD_LOGIC := '0';
    signal grp_stream_in_row_3_fu_162_ap_start_reg : STD_LOGIC := '0';
    signal shl_ln130_fu_173_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal shl_ln130_1_fu_178_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_211_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal icmp_ln879_fu_245_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rowIdx_V_fu_251_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component stream_out_data_4 IS
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
    end component;


    component stream_in_row_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        in_V_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        in_V_V_empty_n : IN STD_LOGIC;
        in_V_V_read : OUT STD_LOGIC;
        row_buffer_0_V_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        row_buffer_0_V_ce1 : OUT STD_LOGIC;
        row_buffer_0_V_we1 : OUT STD_LOGIC;
        row_buffer_0_V_d1 : OUT STD_LOGIC_VECTOR (15 downto 0);
        row_buffer_1_V_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
        row_buffer_1_V_ce1 : OUT STD_LOGIC;
        row_buffer_1_V_we1 : OUT STD_LOGIC;
        row_buffer_1_V_d1 : OUT STD_LOGIC_VECTOR (15 downto 0);
        skip_flag : IN STD_LOGIC;
        rowBufferIdx_V : IN STD_LOGIC_VECTOR (1 downto 0) );
    end component;


    component conv3padding52671daE IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        address1 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    row_buffer_0_V_U : component conv3padding52671daE
    generic map (
        DataWidth => 16,
        AddressRange => 704,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => grp_stream_out_data_4_fu_149_row_buffer_0_V_address0,
        ce0 => row_buffer_0_V_ce0,
        q0 => row_buffer_0_V_q0,
        address1 => grp_stream_in_row_3_fu_162_row_buffer_0_V_address1,
        ce1 => row_buffer_0_V_ce1,
        we1 => row_buffer_0_V_we1,
        d1 => grp_stream_in_row_3_fu_162_row_buffer_0_V_d1);

    row_buffer_1_V_U : component conv3padding52671daE
    generic map (
        DataWidth => 16,
        AddressRange => 704,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => grp_stream_out_data_4_fu_149_row_buffer_1_V_address0,
        ce0 => row_buffer_1_V_ce0,
        q0 => row_buffer_1_V_q0,
        address1 => grp_stream_in_row_3_fu_162_row_buffer_1_V_address1,
        ce1 => row_buffer_1_V_ce1,
        we1 => row_buffer_1_V_we1,
        d1 => grp_stream_in_row_3_fu_162_row_buffer_1_V_d1);

    grp_stream_out_data_4_fu_149 : component stream_out_data_4
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_stream_out_data_4_fu_149_ap_start,
        ap_done => grp_stream_out_data_4_fu_149_ap_done,
        ap_idle => grp_stream_out_data_4_fu_149_ap_idle,
        ap_ready => grp_stream_out_data_4_fu_149_ap_ready,
        out_V_V_din => grp_stream_out_data_4_fu_149_out_V_V_din,
        out_V_V_full_n => padding_out_V_V_full_n,
        out_V_V_write => grp_stream_out_data_4_fu_149_out_V_V_write,
        row_buffer_0_V_address0 => grp_stream_out_data_4_fu_149_row_buffer_0_V_address0,
        row_buffer_0_V_ce0 => grp_stream_out_data_4_fu_149_row_buffer_0_V_ce0,
        row_buffer_0_V_q0 => row_buffer_0_V_q0,
        row_buffer_1_V_address0 => grp_stream_out_data_4_fu_149_row_buffer_1_V_address0,
        row_buffer_1_V_ce0 => grp_stream_out_data_4_fu_149_row_buffer_1_V_ce0,
        row_buffer_1_V_q0 => row_buffer_1_V_q0,
        skip_flag => grp_stream_out_data_4_fu_149_skip_flag,
        outRowIdx_V => t_V_8_reg_126,
        startRowBufferIdx_V => t_V_reg_114);

    grp_stream_in_row_3_fu_162 : component stream_in_row_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_stream_in_row_3_fu_162_ap_start,
        ap_done => grp_stream_in_row_3_fu_162_ap_done,
        ap_idle => grp_stream_in_row_3_fu_162_ap_idle,
        ap_ready => grp_stream_in_row_3_fu_162_ap_ready,
        in_V_V_dout => in_V_V_dout,
        in_V_V_empty_n => in_V_V_empty_n,
        in_V_V_read => grp_stream_in_row_3_fu_162_in_V_V_read,
        row_buffer_0_V_address1 => grp_stream_in_row_3_fu_162_row_buffer_0_V_address1,
        row_buffer_0_V_ce1 => grp_stream_in_row_3_fu_162_row_buffer_0_V_ce1,
        row_buffer_0_V_we1 => grp_stream_in_row_3_fu_162_row_buffer_0_V_we1,
        row_buffer_0_V_d1 => grp_stream_in_row_3_fu_162_row_buffer_0_V_d1,
        row_buffer_1_V_address1 => grp_stream_in_row_3_fu_162_row_buffer_1_V_address1,
        row_buffer_1_V_ce1 => grp_stream_in_row_3_fu_162_row_buffer_1_V_ce1,
        row_buffer_1_V_we1 => grp_stream_in_row_3_fu_162_row_buffer_1_V_we1,
        row_buffer_1_V_d1 => grp_stream_in_row_3_fu_162_row_buffer_1_V_d1,
        skip_flag => grp_stream_in_row_3_fu_162_skip_flag,
        rowBufferIdx_V => t_V_7_reg_102);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((icmp_ln130_fu_195_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_stream_in_row_3_fu_162_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_stream_in_row_3_fu_162_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    grp_stream_in_row_3_fu_162_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_stream_in_row_3_fu_162_ap_ready = ap_const_logic_1)) then 
                    grp_stream_in_row_3_fu_162_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_stream_out_data_4_fu_149_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_stream_out_data_4_fu_149_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    grp_stream_out_data_4_fu_149_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_stream_out_data_4_fu_149_ap_ready = ap_const_logic_1)) then 
                    grp_stream_out_data_4_fu_149_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    rep_0_i_i_i_reg_138_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                rep_0_i_i_i_reg_138 <= rep_reg_299;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                rep_0_i_i_i_reg_138 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;

    t_V_7_reg_102_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                t_V_7_reg_102 <= storeBufferIdx_V_reg_284;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                t_V_7_reg_102 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    t_V_8_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                t_V_8_reg_126 <= rowIdx_V_2_reg_314;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                t_V_8_reg_126 <= ap_const_lv10_3FE;
            end if; 
        end if;
    end process;

    t_V_reg_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then 
                t_V_reg_114 <= loadBufferIdx_V_reg_309;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                t_V_reg_114 <= ap_const_lv2_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                    add_ln130_1_reg_276(31 downto 1) <= add_ln130_1_fu_189_p2(31 downto 1);
                    add_ln130_reg_271(31 downto 1) <= add_ln130_fu_183_p2(31 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln130_fu_195_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                icmp_ln132_reg_289 <= icmp_ln132_fu_206_p2;
                icmp_ln134_reg_294 <= icmp_ln134_fu_221_p2;
                rep_reg_299 <= rep_fu_227_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                loadBufferIdx_V_reg_309 <= loadBufferIdx_V_fu_239_p2;
                rowIdx_V_2_reg_314 <= rowIdx_V_2_fu_257_p3;
                xor_ln132_reg_304 <= xor_ln132_fu_233_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((reps_c_i_full_n = ap_const_logic_0) or (reps_out_full_n = ap_const_logic_0) or (reps_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                reps_read_reg_265 <= reps_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                storeBufferIdx_V_reg_284 <= storeBufferIdx_V_fu_200_p2;
            end if;
        end if;
    end process;
    add_ln130_reg_271(0) <= '0';
    add_ln130_1_reg_276(0) <= '0';

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, reps_empty_n, reps_out_full_n, reps_c_i_full_n, ap_CS_fsm_state3, icmp_ln130_fu_195_p2, ap_CS_fsm_state5, ap_block_state5_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((reps_c_i_full_n = ap_const_logic_0) or (reps_out_full_n = ap_const_logic_0) or (reps_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((icmp_ln130_fu_195_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_boolean_0 = ap_block_state5_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    add_ln130_1_fu_189_p2 <= std_logic_vector(unsigned(ap_const_lv32_2) + unsigned(add_ln130_fu_183_p2));
    add_ln130_fu_183_p2 <= std_logic_vector(unsigned(shl_ln130_fu_173_p2) + unsigned(shl_ln130_1_fu_178_p2));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg, reps_empty_n, reps_out_full_n, reps_c_i_full_n)
    begin
                ap_block_state1 <= ((reps_c_i_full_n = ap_const_logic_0) or (reps_out_full_n = ap_const_logic_0) or (reps_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state5_on_subcall_done_assign_proc : process(grp_stream_out_data_4_fu_149_ap_done, grp_stream_in_row_3_fu_162_ap_done)
    begin
                ap_block_state5_on_subcall_done <= ((grp_stream_in_row_3_fu_162_ap_done = ap_const_logic_0) or (grp_stream_out_data_4_fu_149_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state3, icmp_ln130_fu_195_p2)
    begin
        if (((icmp_ln130_fu_195_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    grp_stream_in_row_3_fu_162_ap_start <= grp_stream_in_row_3_fu_162_ap_start_reg;
    grp_stream_in_row_3_fu_162_skip_flag <= xor_ln132_reg_304(0);
    grp_stream_out_data_4_fu_149_ap_start <= grp_stream_out_data_4_fu_149_ap_start_reg;
    grp_stream_out_data_4_fu_149_skip_flag <= icmp_ln134_reg_294(0);
    icmp_ln130_fu_195_p2 <= "1" when (rep_0_i_i_i_reg_138 = add_ln130_1_reg_276) else "0";
    icmp_ln132_fu_206_p2 <= "1" when (unsigned(rep_0_i_i_i_reg_138) < unsigned(add_ln130_reg_271)) else "0";
    icmp_ln134_fu_221_p2 <= "1" when (tmp_fu_211_p4 = ap_const_lv31_0) else "0";
    icmp_ln879_fu_245_p2 <= "1" when (t_V_8_reg_126 = ap_const_lv10_9) else "0";

    in_V_V_read_assign_proc : process(grp_stream_in_row_3_fu_162_in_V_V_read, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            in_V_V_read <= grp_stream_in_row_3_fu_162_in_V_V_read;
        else 
            in_V_V_read <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(ap_CS_fsm_state3, icmp_ln130_fu_195_p2)
    begin
        if (((icmp_ln130_fu_195_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    loadBufferIdx_V_fu_239_p2 <= std_logic_vector(unsigned(t_V_reg_114) + unsigned(ap_const_lv2_1));
    padding_out_V_V_din <= grp_stream_out_data_4_fu_149_out_V_V_din;

    padding_out_V_V_write_assign_proc : process(grp_stream_out_data_4_fu_149_out_V_V_write, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            padding_out_V_V_write <= grp_stream_out_data_4_fu_149_out_V_V_write;
        else 
            padding_out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    rep_fu_227_p2 <= std_logic_vector(unsigned(rep_0_i_i_i_reg_138) + unsigned(ap_const_lv32_1));

    reps_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, reps_empty_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            reps_blk_n <= reps_empty_n;
        else 
            reps_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    reps_c_i_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, reps_c_i_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            reps_c_i_blk_n <= reps_c_i_full_n;
        else 
            reps_c_i_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    reps_c_i_din <= reps_dout;

    reps_c_i_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, reps_empty_n, reps_out_full_n, reps_c_i_full_n)
    begin
        if ((not(((reps_c_i_full_n = ap_const_logic_0) or (reps_out_full_n = ap_const_logic_0) or (reps_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            reps_c_i_write <= ap_const_logic_1;
        else 
            reps_c_i_write <= ap_const_logic_0;
        end if; 
    end process;


    reps_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, reps_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            reps_out_blk_n <= reps_out_full_n;
        else 
            reps_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    reps_out_din <= reps_dout;

    reps_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, reps_empty_n, reps_out_full_n, reps_c_i_full_n)
    begin
        if ((not(((reps_c_i_full_n = ap_const_logic_0) or (reps_out_full_n = ap_const_logic_0) or (reps_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            reps_out_write <= ap_const_logic_1;
        else 
            reps_out_write <= ap_const_logic_0;
        end if; 
    end process;


    reps_read_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, reps_empty_n, reps_out_full_n, reps_c_i_full_n)
    begin
        if ((not(((reps_c_i_full_n = ap_const_logic_0) or (reps_out_full_n = ap_const_logic_0) or (reps_empty_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            reps_read <= ap_const_logic_1;
        else 
            reps_read <= ap_const_logic_0;
        end if; 
    end process;

    rowIdx_V_2_fu_257_p3 <= 
        ap_const_lv10_0 when (icmp_ln879_fu_245_p2(0) = '1') else 
        rowIdx_V_fu_251_p2;
    rowIdx_V_fu_251_p2 <= std_logic_vector(unsigned(t_V_8_reg_126) + unsigned(ap_const_lv10_1));

    row_buffer_0_V_ce0_assign_proc : process(grp_stream_out_data_4_fu_149_row_buffer_0_V_ce0, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            row_buffer_0_V_ce0 <= grp_stream_out_data_4_fu_149_row_buffer_0_V_ce0;
        else 
            row_buffer_0_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    row_buffer_0_V_ce1_assign_proc : process(grp_stream_in_row_3_fu_162_row_buffer_0_V_ce1, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            row_buffer_0_V_ce1 <= grp_stream_in_row_3_fu_162_row_buffer_0_V_ce1;
        else 
            row_buffer_0_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    row_buffer_0_V_we1_assign_proc : process(grp_stream_in_row_3_fu_162_row_buffer_0_V_we1, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            row_buffer_0_V_we1 <= grp_stream_in_row_3_fu_162_row_buffer_0_V_we1;
        else 
            row_buffer_0_V_we1 <= ap_const_logic_0;
        end if; 
    end process;


    row_buffer_1_V_ce0_assign_proc : process(grp_stream_out_data_4_fu_149_row_buffer_1_V_ce0, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            row_buffer_1_V_ce0 <= grp_stream_out_data_4_fu_149_row_buffer_1_V_ce0;
        else 
            row_buffer_1_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    row_buffer_1_V_ce1_assign_proc : process(grp_stream_in_row_3_fu_162_row_buffer_1_V_ce1, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            row_buffer_1_V_ce1 <= grp_stream_in_row_3_fu_162_row_buffer_1_V_ce1;
        else 
            row_buffer_1_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    row_buffer_1_V_we1_assign_proc : process(grp_stream_in_row_3_fu_162_row_buffer_1_V_we1, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            row_buffer_1_V_we1 <= grp_stream_in_row_3_fu_162_row_buffer_1_V_we1;
        else 
            row_buffer_1_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln130_1_fu_178_p2 <= std_logic_vector(shift_left(unsigned(reps_read_reg_265),to_integer(unsigned('0' & ap_const_lv32_1(31-1 downto 0)))));
    shl_ln130_fu_173_p2 <= std_logic_vector(shift_left(unsigned(reps_read_reg_265),to_integer(unsigned('0' & ap_const_lv32_3(31-1 downto 0)))));
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    storeBufferIdx_V_fu_200_p2 <= std_logic_vector(unsigned(t_V_7_reg_102) + unsigned(ap_const_lv2_1));
    tmp_fu_211_p4 <= rep_0_i_i_i_reg_138(31 downto 1);
    xor_ln132_fu_233_p2 <= (icmp_ln132_reg_289 xor ap_const_lv1_1);
end behav;