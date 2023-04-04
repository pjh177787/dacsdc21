-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbGp_rom is 
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


architecture rtl of convDSPOpt_5_convbGp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1100000110100010111010101010101100011110010100100011111111111110", 
    1 => "1101001011001111000110111100101000010000110111101101000000101101", 
    2 => "1110000000001110011011110000110111101111101111010101111100101011", 
    3 => "1110010101100001011000000000001000000101001011000111010010010000", 
    4 => "0100001000001111011111011111001111110011111111010111001110010000", 
    5 => "0011000100001111011110011111000011110001110111000111001010011111", 
    6 => "0000110111000001101000100000000011011111101000101001000001011111", 
    7 => "0001000011110010111111110001000111110010000011101001000100100001", 
    8 => "1111111100101101010111100000000100000000110111111001000100010010", 
    9 => "1111111000000000000100011011101011010011010111101110110011100010", 
    10 => "0001101111001111000110111001100110010001010100100000110111000001", 
    11 => "0011101010111101000011001001101010100001110011101110101111100001", 
    12 => "1101110111010000111001000011111101011010111110111111110100110000", 
    13 => "0011111100000010001000101111111000011010001111111111111011101101", 
    14 => "0101001000011111000101010001001000011011000111110000001100111100", 
    15 => "0000001101001110001111101101001001011110001101011100111000011111", 
    16 => "0111010100111100110111010101000101110101010001111011000100000111", 
    17 => "0100010100111111000001010010011101100100011000101010000000000100", 
    18 => "0000111111111111101111100000000111110001111111001001000001100000", 
    19 => "1111111011100000110100111111000111010000000111111010111011110000", 
    20 => "0011001100100000100110110001000111100011000100010110000010010001", 
    21 => "0110001101001111011100110000001111110011011011100110010111001110", 
    22 => "1100111011100011000100101011010010111111110100100000000111001010", 
    23 => "0000010000101111110010100000001110110000110111011001000001111010" );


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

entity convDSPOpt_5_convbGp is
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

architecture arch of convDSPOpt_5_convbGp is
    component convDSPOpt_5_convbGp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbGp_rom_U :  component convDSPOpt_5_convbGp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


