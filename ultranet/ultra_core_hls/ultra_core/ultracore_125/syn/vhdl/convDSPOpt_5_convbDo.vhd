-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbDo_rom is 
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


architecture rtl of convDSPOpt_5_convbDo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111111111010010111011111101110000000000110011001011110100100001", 
    1 => "1011110110110010001010101110110010011110101110101010111001000001", 
    2 => "1111000100000001010110100000111010010001100110101010010101100011", 
    3 => "0001111000101110110110110010111000011101010100100010000101001110", 
    4 => "0001110100010001111101011111110000101101110111110000111110111100", 
    5 => "0110111011110010111001110000111011110010110000001011001110100001", 
    6 => "0100110111001101100111010000010011101111101111001001111011100001", 
    7 => "1100001011001100001101111111001011100000111011110010101111100100", 
    8 => "0000111000011111010110101111001000100010111111000110111011010101", 
    9 => "0010110111101111000000110000001110100000000100001101001100001110", 
    10 => "1001111111011110000101110001001110101011011011110001111000001101", 
    11 => "1100101111010001001011011111111011001011000000010111101100111111", 
    12 => "1110001011110000111011100110000011100001001000110011001001000110", 
    13 => "0001000000001111001011110101110010111111000111010000111000110110", 
    14 => "1110000100001110111000110001110011000010000111101110010000110000", 
    15 => "1100101110110010101100011001001001001001110011001010100111011001", 
    16 => "0000111000101111111111101101011000111101001000100100110000001010", 
    17 => "0111000011101111001000000010000100110011000001000001001100110011", 
    18 => "0000000000000001001011110001111111110000111111000000000000101101", 
    19 => "0111000111011110110001100000111011101101000011111010001110101111", 
    20 => "0111001111101011110001110010111100001101000111101110001111001101", 
    21 => "1110111100011110010101111111111100110000000100010111000111111100", 
    22 => "1101000000100001010100000001001011111111011000000111111111001111", 
    23 => "0110111100110001101011110001111101001110000101110000000110011110" );


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

entity convDSPOpt_5_convbDo is
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

architecture arch of convDSPOpt_5_convbDo is
    component convDSPOpt_5_convbDo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbDo_rom_U :  component convDSPOpt_5_convbDo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


