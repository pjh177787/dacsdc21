-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbFp_rom is 
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


architecture rtl of convDSPOpt_5_convbFp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010001011000001110111101001110000101011011101001100110110111001", 
    1 => "1111001011100000111010111010110001001110000100101011110111101011", 
    2 => "1111111100001101001111011101110101011101111000000011110000011011", 
    3 => "1110010001100010010000010010000011110011110100101001010001111101", 
    4 => "1100000100100010111100010011111111111101001001111110000010111101", 
    5 => "1111000000010000111100000010000000011110111101000100001010111110", 
    6 => "1110111100000000000100110001000100000010011111000101111010111110", 
    7 => "0110001000010001101011000000000111111110010100100111000110010010", 
    8 => "0010000100101111101011000000111100000010000000000000010010100001", 
    9 => "0001000011010000001011111010111000010100111100110001110000010101", 
    10 => "0000111111000010110111111100000111110011000100110001111000100111", 
    11 => "0010110011000000111011011010111111000000111100000001101111110110", 
    12 => "1101111011101110110111110001111100111011000111111100110100101101", 
    13 => "0010111110110000000111011101100110101010011011111100111011101010", 
    14 => "0111001001001111001111010011111010011101111111110100010011001001", 
    15 => "0010111000100001000100011010110111001100000010110010111000001100", 
    16 => "0010001000110001001000000000110011000001111011100010110100101011", 
    17 => "1011001011111100010010110100110111110100000100000101001000110111", 
    18 => "0001000000011111101100010000001000010010110000011001000001111110", 
    19 => "1111001000101110001001001111010000010010011110010110111110010000", 
    20 => "0010001101001111011111011111000011100100010100010111001010010001", 
    21 => "0011000000110010011100110001001111010100011100100101010111000001", 
    22 => "1110110000000001001100101001010111011111000000110100110110111011", 
    23 => "1101001100111101110110101111000100001111111011011010111001111010" );


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

entity convDSPOpt_5_convbFp is
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

architecture arch of convDSPOpt_5_convbFp is
    component convDSPOpt_5_convbFp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbFp_rom_U :  component convDSPOpt_5_convbFp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


