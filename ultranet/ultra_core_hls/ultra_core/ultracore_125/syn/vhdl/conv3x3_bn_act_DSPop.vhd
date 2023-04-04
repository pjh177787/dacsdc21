-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity conv3x3_bn_act_DSPop is
port (
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    in_V_V_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    in_V_V_empty_n : IN STD_LOGIC;
    in_V_V_read : OUT STD_LOGIC;
    out_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_V_V_full_n : IN STD_LOGIC;
    out_V_V_write : OUT STD_LOGIC;
    reps_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    reps_empty_n : IN STD_LOGIC;
    reps_read : OUT STD_LOGIC;
    reps_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    reps_out_full_n : IN STD_LOGIC;
    reps_out_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of conv3x3_bn_act_DSPop is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal conv3padding711_U0_ap_start : STD_LOGIC;
    signal conv3padding711_U0_ap_done : STD_LOGIC;
    signal conv3padding711_U0_ap_continue : STD_LOGIC;
    signal conv3padding711_U0_ap_idle : STD_LOGIC;
    signal conv3padding711_U0_ap_ready : STD_LOGIC;
    signal conv3padding711_U0_start_out : STD_LOGIC;
    signal conv3padding711_U0_start_write : STD_LOGIC;
    signal conv3padding711_U0_reps_read : STD_LOGIC;
    signal conv3padding711_U0_reps_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal conv3padding711_U0_reps_out_write : STD_LOGIC;
    signal conv3padding711_U0_in_V_V_read : STD_LOGIC;
    signal conv3padding711_U0_padding_out_V_V_din : STD_LOGIC_VECTOR (127 downto 0);
    signal conv3padding711_U0_padding_out_V_V_write : STD_LOGIC;
    signal conv3padding711_U0_reps_c_i_din : STD_LOGIC_VECTOR (31 downto 0);
    signal conv3padding711_U0_reps_c_i_write : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal convDSPOpt_5_U0_ap_start : STD_LOGIC;
    signal convDSPOpt_5_U0_ap_done : STD_LOGIC;
    signal convDSPOpt_5_U0_ap_continue : STD_LOGIC;
    signal convDSPOpt_5_U0_ap_idle : STD_LOGIC;
    signal convDSPOpt_5_U0_ap_ready : STD_LOGIC;
    signal convDSPOpt_5_U0_vec_V_V_read : STD_LOGIC;
    signal convDSPOpt_5_U0_out_V_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal convDSPOpt_5_U0_out_V_V_write : STD_LOGIC;
    signal convDSPOpt_5_U0_reps_read : STD_LOGIC;
    signal padding_out_V_V_full_n : STD_LOGIC;
    signal padding_out_V_V_dout : STD_LOGIC_VECTOR (127 downto 0);
    signal padding_out_V_V_empty_n : STD_LOGIC;
    signal reps_c_i_full_n : STD_LOGIC;
    signal reps_c_i_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal reps_c_i_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_convDSPOpt_5_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_convDSPOpt_5_U0_full_n : STD_LOGIC;
    signal start_for_convDSPOpt_5_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_convDSPOpt_5_U0_empty_n : STD_LOGIC;
    signal convDSPOpt_5_U0_start_full_n : STD_LOGIC;
    signal convDSPOpt_5_U0_start_write : STD_LOGIC;

    component conv3padding711 IS
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
        in_V_V_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        in_V_V_empty_n : IN STD_LOGIC;
        in_V_V_read : OUT STD_LOGIC;
        padding_out_V_V_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        padding_out_V_V_full_n : IN STD_LOGIC;
        padding_out_V_V_write : OUT STD_LOGIC;
        reps_c_i_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        reps_c_i_full_n : IN STD_LOGIC;
        reps_c_i_write : OUT STD_LOGIC );
    end component;


    component convDSPOpt_5 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        vec_V_V_dout : IN STD_LOGIC_VECTOR (127 downto 0);
        vec_V_V_empty_n : IN STD_LOGIC;
        vec_V_V_read : OUT STD_LOGIC;
        out_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        out_V_V_full_n : IN STD_LOGIC;
        out_V_V_write : OUT STD_LOGIC;
        reps_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        reps_empty_n : IN STD_LOGIC;
        reps_read : OUT STD_LOGIC );
    end component;


    component fifo_w128_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (127 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (127 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w32_d2_A_x IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_convDSPbLp IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    conv3padding711_U0 : component conv3padding711
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => conv3padding711_U0_ap_start,
        start_full_n => start_for_convDSPOpt_5_U0_full_n,
        ap_done => conv3padding711_U0_ap_done,
        ap_continue => conv3padding711_U0_ap_continue,
        ap_idle => conv3padding711_U0_ap_idle,
        ap_ready => conv3padding711_U0_ap_ready,
        start_out => conv3padding711_U0_start_out,
        start_write => conv3padding711_U0_start_write,
        reps_dout => reps_dout,
        reps_empty_n => reps_empty_n,
        reps_read => conv3padding711_U0_reps_read,
        reps_out_din => conv3padding711_U0_reps_out_din,
        reps_out_full_n => reps_out_full_n,
        reps_out_write => conv3padding711_U0_reps_out_write,
        in_V_V_dout => in_V_V_dout,
        in_V_V_empty_n => in_V_V_empty_n,
        in_V_V_read => conv3padding711_U0_in_V_V_read,
        padding_out_V_V_din => conv3padding711_U0_padding_out_V_V_din,
        padding_out_V_V_full_n => padding_out_V_V_full_n,
        padding_out_V_V_write => conv3padding711_U0_padding_out_V_V_write,
        reps_c_i_din => conv3padding711_U0_reps_c_i_din,
        reps_c_i_full_n => reps_c_i_full_n,
        reps_c_i_write => conv3padding711_U0_reps_c_i_write);

    convDSPOpt_5_U0 : component convDSPOpt_5
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => convDSPOpt_5_U0_ap_start,
        ap_done => convDSPOpt_5_U0_ap_done,
        ap_continue => convDSPOpt_5_U0_ap_continue,
        ap_idle => convDSPOpt_5_U0_ap_idle,
        ap_ready => convDSPOpt_5_U0_ap_ready,
        vec_V_V_dout => padding_out_V_V_dout,
        vec_V_V_empty_n => padding_out_V_V_empty_n,
        vec_V_V_read => convDSPOpt_5_U0_vec_V_V_read,
        out_V_V_din => convDSPOpt_5_U0_out_V_V_din,
        out_V_V_full_n => out_V_V_full_n,
        out_V_V_write => convDSPOpt_5_U0_out_V_V_write,
        reps_dout => reps_c_i_dout,
        reps_empty_n => reps_c_i_empty_n,
        reps_read => convDSPOpt_5_U0_reps_read);

    padding_out_V_V_U : component fifo_w128_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => conv3padding711_U0_padding_out_V_V_din,
        if_full_n => padding_out_V_V_full_n,
        if_write => conv3padding711_U0_padding_out_V_V_write,
        if_dout => padding_out_V_V_dout,
        if_empty_n => padding_out_V_V_empty_n,
        if_read => convDSPOpt_5_U0_vec_V_V_read);

    reps_c_i_U : component fifo_w32_d2_A_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => conv3padding711_U0_reps_c_i_din,
        if_full_n => reps_c_i_full_n,
        if_write => conv3padding711_U0_reps_c_i_write,
        if_dout => reps_c_i_dout,
        if_empty_n => reps_c_i_empty_n,
        if_read => convDSPOpt_5_U0_reps_read);

    start_for_convDSPbLp_U : component start_for_convDSPbLp
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_convDSPOpt_5_U0_din,
        if_full_n => start_for_convDSPOpt_5_U0_full_n,
        if_write => conv3padding711_U0_start_write,
        if_dout => start_for_convDSPOpt_5_U0_dout,
        if_empty_n => start_for_convDSPOpt_5_U0_empty_n,
        if_read => convDSPOpt_5_U0_ap_ready);





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

    ap_done <= ap_sync_done;
    ap_idle <= (convDSPOpt_5_U0_ap_idle and conv3padding711_U0_ap_idle);
    ap_ready <= internal_ap_ready;
    ap_sync_continue <= (ap_sync_done and ap_continue);
    ap_sync_done <= (convDSPOpt_5_U0_ap_done and conv3padding711_U0_ap_done);
    ap_sync_ready <= conv3padding711_U0_ap_ready;
    conv3padding711_U0_ap_continue <= ap_sync_continue;
    conv3padding711_U0_ap_start <= real_start;
    convDSPOpt_5_U0_ap_continue <= ap_sync_continue;
    convDSPOpt_5_U0_ap_start <= start_for_convDSPOpt_5_U0_empty_n;
    convDSPOpt_5_U0_start_full_n <= ap_const_logic_1;
    convDSPOpt_5_U0_start_write <= ap_const_logic_0;
    in_V_V_read <= conv3padding711_U0_in_V_V_read;
    internal_ap_ready <= ap_sync_ready;
    out_V_V_din <= convDSPOpt_5_U0_out_V_V_din;
    out_V_V_write <= convDSPOpt_5_U0_out_V_V_write;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    reps_out_din <= conv3padding711_U0_reps_out_din;
    reps_out_write <= conv3padding711_U0_reps_out_write;
    reps_read <= conv3padding711_U0_reps_read;
    start_for_convDSPOpt_5_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
