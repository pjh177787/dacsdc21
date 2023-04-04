-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbyn_rom is 
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


architecture rtl of convDSPOpt_5_convbyn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000001000000000000100101110111100110010000100100000101111110100", 
    1 => "0101010100011111001011100001111100100001111100100110001111111110", 
    2 => "0010110100010001101000111110110100011101100110111011110000010000", 
    3 => "0001000100100010001111110001000011110010111010110001001000110001", 
    4 => "0000111000000001111100001111000011110000101010011111000101001111", 
    5 => "0001111011110001101000011111001011100000010111011001110101000010", 
    6 => "0001000011101111111100101111111011110011110100001011111111010011", 
    7 => "0010111111011110110011100010001000001110001001001001001000000000", 
    8 => "0001000111110000101111110001111100001110001011001001000100100000", 
    9 => "0101011000111100000111010101010001100010010101000000000000000110", 
    10 => "0000110111110000000000000010001000111111001000010110111100010011", 
    11 => "1110101011000100111110111001110100001001101100001010100111101001", 
    12 => "0011000011100000111100100101111101011110000100000000010011111100", 
    13 => "0010111111110001110101111111010000010001111011111100000011100100", 
    14 => "0000110011100010010011001100111111101011010010110111101100101111", 
    15 => "1111111000011111001100010000000000101011100100111111110000011100", 
    16 => "0000001001001110111100000001000000110000101101111110000000010000", 
    17 => "1100111001001110111001010111000001011101001001110001111011100010", 
    18 => "1100110011110010110011100000111111010000101111111101010011111101", 
    19 => "1100111000010000110111101111000111110010111100011110001011101101", 
    20 => "1110110100100001000111111011110100010010100111111101001111001100", 
    21 => "0000111000010000011000110001001101010001011111010111111001100001", 
    22 => "0100000111100000011000010100010100100010011111010110001000100010", 
    23 => "0111001100101110001100010001111000110011010100000100111100000000" );


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

entity convDSPOpt_5_convbyn is
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

architecture arch of convDSPOpt_5_convbyn is
    component convDSPOpt_5_convbyn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbyn_rom_U :  component convDSPOpt_5_convbyn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


