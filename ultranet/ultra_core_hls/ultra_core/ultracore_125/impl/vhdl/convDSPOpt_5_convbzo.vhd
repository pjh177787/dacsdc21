-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbzo_rom is 
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


architecture rtl of convDSPOpt_5_convbzo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010000111101010100100001000000110011010100010101111100101111", 
    1 => "0100010011111101010011010010110100110010000100100110111100110110", 
    2 => "0000110101001111101100101111110101011100100111001001110011000011", 
    3 => "0001001000100001111000010001000100010011100111010100001011010010", 
    4 => "1100110100000000011000000000110011110010100110010111000010010000", 
    5 => "0011110111010011011100010000111011111111100111110111110110100000", 
    6 => "0000001101001110100100100000010001000001011001101001110011010001", 
    7 => "0001001100001101100111000001001000110000011101001001001000010000", 
    8 => "0000001000110000110010110001000001000010010100001001001000111110", 
    9 => "0110011000101100000011000010000000010100001011100000010000010110", 
    10 => "0000000000111110000000001111000100110010111111010001111100101111", 
    11 => "1011101000000010110110111001111000011001111000101101100111111001", 
    12 => "1110001011010000111110010001000100001101111011111101010001001101", 
    13 => "0111000100001101101001110111000101000011111001001001010000101111", 
    14 => "1111110111111110000001111110001100111100001111110001110010100000", 
    15 => "0001000000111110001100100000000100111101101111011011111100011011", 
    16 => "1110001001001110000111100000111000011101101100110000111010010000", 
    17 => "0000110111100000001011011110111011011100001001010110110010010000", 
    18 => "0010001000011111110000111110110000000000111011010011001111101101", 
    19 => "0000001011010000000001001110101111010100011100100011010011011101", 
    20 => "0010000011010000001000111100110111000101011111011110010011001110", 
    21 => "1111111000000010110100000010110010100010110101111111000000111111", 
    22 => "0010001000110000111100010000101110100100110101101101001100000010", 
    23 => "1101000100100010110100101101110010100100101111101100000100010010" );


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

entity convDSPOpt_5_convbzo is
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

architecture arch of convDSPOpt_5_convbzo is
    component convDSPOpt_5_convbzo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbzo_rom_U :  component convDSPOpt_5_convbzo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


