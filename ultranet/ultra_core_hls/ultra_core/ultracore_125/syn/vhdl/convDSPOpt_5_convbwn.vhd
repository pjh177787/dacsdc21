-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbwn_rom is 
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


architecture rtl of convDSPOpt_5_convbwn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000010101010001000100010001111100000100111001110010010010100001", 
    1 => "0000001000001110101000111111000111110000110001111001000001110010", 
    2 => "0001000000000010000000100000000100000010011010111001010001110001", 
    3 => "0001110111110000111011110010101010111101111100001110000011010000", 
    4 => "0001111011000010111000000100100110010001110111111101000100010010", 
    5 => "0000110111110000111100000010100110011101111011011101111000001111", 
    6 => "1111111011010001000000101011110110100000001000001011111011010000", 
    7 => "1100110011011111000011101001111110011100110000011110110011011011", 
    8 => "0001010001000001111101000000011100010011011111000010010000010001", 
    9 => "0000000011001111000011010000111010010011111001001110111100010011", 
    10 => "1111001011100001000011110001001010010010111000111111111000010001", 
    11 => "0000010001011111000111110010001000000101000000101110001011000010", 
    12 => "1100001011100011010111001111010100001101001011110111110110010010", 
    13 => "0010000010111111111110100001110001101110101001110111001010111010", 
    14 => "0110001011111110100101100001111100101111101001011001111000001110", 
    15 => "0001111001000001111100001111000111111100000111101111111100100011", 
    16 => "1100111100100011000000101011111100001001001011100000110010100001", 
    17 => "0011000000000010111111110000001100100000001101000010111011000001", 
    18 => "0111000000011110111000100000000111000010011111111100000101010001", 
    19 => "0010001100011110001001000010001111000001111010110001000100100001", 
    20 => "1100010001011111010000000010001000010001100110110110000011110000", 
    21 => "0001001100011111110011110011000100100000011011110100001111110000", 
    22 => "0010010100010010111011100100010100100010010111100001001111110000", 
    23 => "0011111011110000111100100000010000111101000011010100111000010000" );


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

entity convDSPOpt_5_convbwn is
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

architecture arch of convDSPOpt_5_convbwn is
    component convDSPOpt_5_convbwn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbwn_rom_U :  component convDSPOpt_5_convbwn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


