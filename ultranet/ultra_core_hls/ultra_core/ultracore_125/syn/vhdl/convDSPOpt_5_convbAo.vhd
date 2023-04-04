-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbAo_rom is 
    generic(
             DWIDTH     : integer := 63; 
             AWIDTH     : integer := 5; 
             MEM_SIZE    : integer := 24
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of convDSPOpt_5_convbAo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001010000110000000111100100110101010011011100110100001101110011", 
    1 => "011001011111110001010100010100100010100011011110000001000100110", 
    2 => "001101100000010110000011110111000101101100111101001101110101111", 
    3 => "001000100000000001111110000000000010001110100101101001000101111", 
    4 => "101000100001111111000010000111100000011100100010111001000010000", 
    5 => "001000000110000101000000010111011011111001000001111000100000000", 
    6 => "001001000101110110000010000001000101110110011101001110100010000", 
    7 => "110001000011101101011000000000100100000000011101001111100110000", 
    8 => "111000100101110000000000000000000101111111011101001111100100000", 
    9 => "100010000111101000000110010111000000101001000000001001111010110", 
    10 => "001111000110001111011101101101111011101110000011110101111110001", 
    11 => "000101111010001110111101001101111101010101100001101101000101001", 
    12 => "101000011110011000010011111111111101011110000010000110111011111", 
    13 => "010000000011110000111101111000000011111110000000001001101001101", 
    14 => "011000000001110001001110011000100010000001000110011001111111110", 
    15 => "010111000011101111000101111001001011100001111011111111010101101", 
    16 => "000110111111101110011011111111100111011001111010100110110011101", 
    17 => "010101110101101101010111110000100001010010100100010101010011101", 
    18 => "010000111100000101100011111110000010010110111101110000001000000", 
    19 => "011000011010001010000110000111111100010010101000001001100101111", 
    20 => "011111011000010001100000001110100000101010111100000011011101101", 
    21 => "111110100001111101011101110101110100000001011011110001110101101", 
    22 => "101110100010001111000001011101011001110001011011100000110101100", 
    23 => "101110111010100110111101100110100010010000000001100111111101111" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity convDSPOpt_5_convbAo is
    generic (
        DataWidth : INTEGER := 63;
        AddressRange : INTEGER := 24;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of convDSPOpt_5_convbAo is
    component convDSPOpt_5_convbAo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbAo_rom_U :  component convDSPOpt_5_convbAo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


