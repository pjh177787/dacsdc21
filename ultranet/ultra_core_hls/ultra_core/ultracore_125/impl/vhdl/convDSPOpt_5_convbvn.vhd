-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbvn_rom is 
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


architecture rtl of convDSPOpt_5_convbvn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000001100010000001111111111000111110011101000011010001011100000", 
    1 => "0010111011000000000011110001000111111101010110011111111001001111", 
    2 => "0010110111000001010111011111000011101101111010010100110111110001", 
    3 => "0010111100000000000000000011101110100001000100101101000011010001", 
    4 => "0000000111100010111100000000100110010001000100101100001011000010", 
    5 => "0000111000000010110111111111100110011101110000001011111011011110", 
    6 => "1110111011100010000000101011000110110001101100111010000000101111", 
    7 => "0001110011100000110111011011001111001110000011011100111001011101", 
    8 => "0010001100110001110100010010010011100011011101001100001101000010", 
    9 => "1101110010110001000110101111000111000101010011110100000000010011", 
    10 => "0000111100000001001011100000000111110010011011000010000100000001", 
    11 => "0000001101011111000100100000101111010110011011111011011011100010", 
    12 => "1101000011110001111011110010111000011101010000110111111000000000", 
    13 => "0001111011011110000111010010101100010010101101001011000011111101", 
    14 => "0011111011000001111011110000111011110010111011101001000001010010", 
    15 => "0011111001000011000111110001010000111100001011101110111101110100", 
    16 => "1100111100100010111100011101111111111010001011011011111110110010", 
    17 => "1111000000000001111011010000001000111110001000100011111010100000", 
    18 => "0000000011111111111111110001001011010001101011101110000111011110", 
    19 => "1111000100011111000100010010001011010011100100010110000111010001", 
    20 => "1100001100110001001111100010111011100001100100010111001000110000", 
    21 => "0000000100011111001000010101000000100000001111110010111111111101", 
    22 => "1111001011101110001011100011000111000011001111100010010111111011", 
    23 => "1011110011010001000011110100000011100000000011100100001111011101" );


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

entity convDSPOpt_5_convbvn is
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

architecture arch of convDSPOpt_5_convbvn is
    component convDSPOpt_5_convbvn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbvn_rom_U :  component convDSPOpt_5_convbvn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


