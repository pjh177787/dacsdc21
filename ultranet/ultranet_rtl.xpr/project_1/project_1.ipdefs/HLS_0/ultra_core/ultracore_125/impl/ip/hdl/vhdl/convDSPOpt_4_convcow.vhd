-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_4_convcow_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 96
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of convDSPOpt_4_convcow_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111010100100101101110000010000", 
    1 => "01001100000011110000000011100011", 
    2 => "11100011001000001111001011110001", 
    3 => "00000000110100110000111000100010", 
    4 => "00101111111000000000001000010100", 
    5 => "11111010000011100110001100010100", 
    6 => "00011111010000100001010100110011", 
    7 => "10100000000101000011111000000001", 
    8 => "00111100000100110000010011010100", 
    9 => "00000000111111110000101111100000", 
    10 => "00001001110100010010000000110010", 
    11 => "10101111001001000010110100000010", 
    12 => "00110100111100000110010000001110", 
    13 => "11100001001100100011110101000001", 
    14 => "11111010011000100001111011111101", 
    15 => "00101111000111100000110000010001", 
    16 => "11101100111000011100001111011110", 
    17 => "00111110101101000000111111100001", 
    18 => "11101101000000001111111011001100", 
    19 => "00010100000100001011111100100011", 
    20 => "00001110000011111100000000100001", 
    21 => "11111111101001001110111011101010", 
    22 => "11111110000010110100000110111110", 
    23 => "11110011111111101110001100110001", 
    24 => "11011100111001110100110000001010", 
    25 => "10010110010011111011010011110111", 
    26 => "00100011001101101101001001100001", 
    27 => "00000001111101010100001111101111", 
    28 => "01110010011100101100111011100101", 
    29 => "11110001111110100111011101011010", 
    30 => "00001101010000101001010011010011", 
    31 => "10110110001101110111110100001001", 
    32 => "11010011010011110000000110110011", 
    33 => "00010001111111100110000001101100", 
    34 => "00001011010001001011000111010110", 
    35 => "10100110111100111011010000001110", 
    36 => "01000011000011110000011011100010", 
    37 => "10101101001000010100001100111110", 
    38 => "11100100001011110001110110111011", 
    39 => "01011110010000000000111100001110", 
    40 => "11000010111011100010110000101101", 
    41 => "11110100011011001111000000011111", 
    42 => "11100011000100111110111110011100", 
    43 => "01011100000111011101110100011010", 
    44 => "11101100000101011110000011110000", 
    45 => "11101011000000101010001010101101", 
    46 => "10111110111100110000000111010001", 
    47 => "00011110111011100000110101001111", 
    48 => "00111101001111100101000111001111", 
    49 => "00110000111011000001011010011100", 
    50 => "01010100010101000000110100100000", 
    51 => "00110010000100011111000101010101", 
    52 => "01111010001011000111010111101111", 
    53 => "11011111010011011110110110011010", 
    54 => "00000100001100111110111000110101", 
    55 => "00000011010000111001000111000001", 
    56 => "11101010101100000001111011001111", 
    57 => "11001111001111010001110111011100", 
    58 => "10100011111000011110010001110111", 
    59 => "00100110101100111011001011111100", 
    60 => "11010001111001001110001111110000", 
    61 => "11100000001011111110001100000100", 
    62 => "01100001010110011111000000111111", 
    63 => "11110000111010111110010111100001", 
    64 => "10110001111111010000000100100010", 
    65 => "00011111000100011010001100000101", 
    66 => "00100000111111001111111001001111", 
    67 => "00000001110111101111010011100001", 
    68 => "11110010110010111110110100000011", 
    69 => "01001101111000111011000000100110", 
    70 => "00111110010010101110000000101111", 
    71 => "00100010110011010100001011110001", 
    72 => "00010011111100011110111100001110", 
    73 => "00001001111100011101001000110010", 
    74 => "00110010000011000001000000001111", 
    75 => "00001100010111011110000000110000", 
    76 => "00010010000000100001000111110001", 
    77 => "11111010111000011111110111100000", 
    78 => "00101101111010111101000001011110", 
    79 => "00001110001111101101110101010000", 
    80 => "00100101111001110001000010100101", 
    81 => "00011111111100100010111010110001", 
    82 => "00111011110110010000111000011011", 
    83 => "11111110001110110000000100100001", 
    84 => "11011011110111101110000111000010", 
    85 => "01001110000111100011000000110100", 
    86 => "00011110110011011011000000000010", 
    87 => "00000010111111001011001100011111", 
    88 => "00000001110000000000000000000000", 
    89 => "00101110000000101111111000110000", 
    90 => "00110000000011101110110000110100", 
    91 => "00010010010000011111001100011111", 
    92 => "00000100100100100011111100111111", 
    93 => "11110001000011111101111000010000", 
    94 => "11100000000000111111000100101111", 
    95 => "00010101111000100011000100001110" );


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

entity convDSPOpt_4_convcow is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 96;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of convDSPOpt_4_convcow is
    component convDSPOpt_4_convcow_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_4_convcow_rom_U :  component convDSPOpt_4_convcow_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


