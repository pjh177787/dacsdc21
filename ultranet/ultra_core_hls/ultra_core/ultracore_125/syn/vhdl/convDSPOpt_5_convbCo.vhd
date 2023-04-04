-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbCo_rom is 
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


architecture rtl of convDSPOpt_5_convbCo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1011111010110000010111011110111010010001101110110100000001000010", 
    1 => "0000000011001111001110010001111010110000000010100100001100000011", 
    2 => "0011010101001101010100110010110000000101010000000100011001010110", 
    3 => "0000111011011100000010011110000011001111001101011111110110100000", 
    4 => "0000110011001101111101011110110100011101111000001110110110111110", 
    5 => "0111111100011111110101110001111100100101101111101100010110010010", 
    6 => "0101110100001110101111110001001101111110000111101011110011000001", 
    7 => "1101000100111110010001000000001100110001010000010111000110010010", 
    8 => "1101111100000000010011001101001100000100010111110110010010100010", 
    9 => "0111000100011110000010101111110001100100101100010000001110100101", 
    10 => "0111001101111111100101100111001011110010000011111001010101000011", 
    11 => "1010111100101101010101110001011011011101011111011101110100011101", 
    12 => "1101001100110000000000010111001100100001111100011110111111100101", 
    13 => "0010000000001111011100100111001101101110000001000010111010110111", 
    14 => "0000000100011110010100000111001101011110111100001010000011100110", 
    15 => "1100101011000000110000001001000000111001111011001011101011111001", 
    16 => "1110111000111110111100001010010000111011010011000001111011011001", 
    17 => "0111001100101111001010100011000101010100111000110000000000110110", 
    18 => "0000111100010010001011110001001000010100111000010000001000110001", 
    19 => "0011000111111110111111100011001100110110110000111010101110110111", 
    20 => "1101000011111100000010110000001000000111110001110010101111100111", 
    21 => "1101111100001111011100000001111011111111110010100110001000010010", 
    22 => "1100000000010001010100110011110111100010011100010011000111101111", 
    23 => "0110001011101111110000100011000000010100010001001010001110010010" );


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

entity convDSPOpt_5_convbCo is
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

architecture arch of convDSPOpt_5_convbCo is
    component convDSPOpt_5_convbCo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbCo_rom_U :  component convDSPOpt_5_convbCo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


