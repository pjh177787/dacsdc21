-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbEo_rom is 
    generic(
             DWIDTH     : integer := 64; 
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


architecture rtl of convDSPOpt_5_convbEo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1001001100010000000100101100110000111100001001000001111111011010", 
    1 => "1100010000101111000011011011110000101101111000001100111011101010", 
    2 => "1111000000011110001011111011110100101111110111010011110000111111", 
    3 => "0100001101000000111000000000111111110010110100011001010101111111", 
    4 => "1111111100010000100111110011111000000000010100001001111101110010", 
    5 => "1110111000010001100100010010111111111110000111011001111101110000", 
    6 => "1101110100110100011000100010000000110000011111100101000010100010", 
    7 => "0000000111111111110111010001000000010000010101110111000010010000", 
    8 => "0011001011111111110011111111000011110000110100010110000110011111", 
    9 => "1101010011101111000011011110110110110110100111100000101100100110", 
    10 => "0010010011010001110100000001000011110101101100010000111000100110", 
    11 => "1111111111101111111000100000110011100011000000100000111011110111", 
    12 => "1111111011011110110111101110000001011010101111001011101101001101", 
    13 => "1110111011000001000111011010110010101001010000011100101111101100", 
    14 => "1110111100000000001111011100111010101100101101100100000110101110", 
    15 => "1110111000000001001001101011000111111010111011000100111011101100", 
    16 => "1100110011011111000000101011111010011101111110100100111111011001", 
    17 => "1110000000001111111100001011110010100000101111111111111111101010", 
    18 => "0001001101000000110000101111000000000010100110111001000101111111", 
    19 => "1110001001101110001100000001000000000011001111101101001001000001", 
    20 => "1101010001011110011111110001111100000100000100110111001110010000", 
    21 => "0000111000011110001000111111001111100011010001010011001111110011", 
    22 => "1110110000000001001100011001010110101110110000100001110010101010", 
    23 => "1111001000111100101111011101010011000001101000001010111001101011" );


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

entity convDSPOpt_5_convbEo is
    generic (
        DataWidth : INTEGER := 64;
        AddressRange : INTEGER := 24;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of convDSPOpt_5_convbEo is
    component convDSPOpt_5_convbEo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbEo_rom_U :  component convDSPOpt_5_convbEo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


