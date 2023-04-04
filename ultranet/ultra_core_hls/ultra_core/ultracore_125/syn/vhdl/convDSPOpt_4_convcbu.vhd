-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_4_convcbu_rom is 
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


architecture rtl of convDSPOpt_4_convcbu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00001011101100000000010000111110", 
    1 => "11100101111000000000111001000000", 
    2 => "00101111111001000001001011100010", 
    3 => "11001110000101010000111100101100", 
    4 => "01010010101100001111000001011110", 
    5 => "00000011001011100001100101001001", 
    6 => "11101110111000000001010011011110", 
    7 => "10010100111001110011111111101001", 
    8 => "11110011111011101111101011111100", 
    9 => "00100100010000110000000100001100", 
    10 => "11000001000000100001111010010000", 
    11 => "11110010111000110001110100001100", 
    12 => "11111111000111010001110111101111", 
    13 => "00001100111011001110111111100000", 
    14 => "00010011111100011101010011111100", 
    15 => "00101110000100101100111011110000", 
    16 => "11111101110011011101110011111110", 
    17 => "10111111110111011100000000111101", 
    18 => "11100010110011011100111100011110", 
    19 => "00101110000010111110101011101111", 
    20 => "11100000111100011111000111000100", 
    21 => "11100000110111110000111011111100", 
    22 => "11100100111101001111000011110000", 
    23 => "11100001000011101100110111010011", 
    24 => "00001001000100101110010100000011", 
    25 => "11111001101011101110010011101111", 
    26 => "10100001110111100011001000010000", 
    27 => "00000001111100010001100100011111", 
    28 => "00011101001001001100001111010001", 
    29 => "00011001101111110001001000101011", 
    30 => "10010000110000000010000001000001", 
    31 => "11011110110100010001100100101100", 
    32 => "11000010000000100101000010111101", 
    33 => "10111010111101001110001111110001", 
    34 => "10011110010000000011111100000000", 
    35 => "00101100101000001111111000001111", 
    36 => "00101100000000110000001101000111", 
    37 => "11011111000000011110001100100010", 
    38 => "00010100000000011101000000001101", 
    39 => "10101110000100100010111111101110", 
    40 => "01010000101001001010110000010110", 
    41 => "00011110010001000100000010010010", 
    42 => "00101100001011011010011000000000", 
    43 => "11100010010011110000001011010111", 
    44 => "00010010100100111111000111100110", 
    45 => "11010000011000000110010010010010", 
    46 => "11011101111111010101001011110010", 
    47 => "00000110110100010100111100111110", 
    48 => "01010010000100010101001110011111", 
    49 => "11010110001011110001001111011110", 
    50 => "01100010111111110000001011110011", 
    51 => "00100010000111110010010111100000", 
    52 => "00001011010111100001010110010011", 
    53 => "11100100001010101111011010110000", 
    54 => "11101011111111110001001000010010", 
    55 => "00000100001000111100111011110110", 
    56 => "10101111000010111101000000111110", 
    57 => "00000100000111001110000100001100", 
    58 => "11000000000100010011111111110001", 
    59 => "00010101001111110001000101010000", 
    60 => "11011110110010100101101111000001", 
    61 => "11100011000010100000000011111111", 
    62 => "10110100111100010011000010110001", 
    63 => "11110011111011100100100100011110", 
    64 => "00100001111110110001111010011110", 
    65 => "01001111000110110010001000011110", 
    66 => "11100000010000100001000010010010", 
    67 => "00000011111011110101110011101111", 
    68 => "11111111001000110000000011110010", 
    69 => "11001101000011100001101000001111", 
    70 => "11100001101111101100101010010011", 
    71 => "00011110001011111111001111101111", 
    72 => "11000100001000000000111100100000", 
    73 => "11100001000100011110000011000010", 
    74 => "11010010101100101110000000100010", 
    75 => "00001010000000110010010000000010", 
    76 => "11001111011011011101111000101111", 
    77 => "11011110111011010110001011000000", 
    78 => "00001100000011011011000000000000", 
    79 => "00011101010100100100111000000011", 
    80 => "11011110110111111001010010111100", 
    81 => "01011110110100110101110111100000", 
    82 => "00101101000100011111000010110000", 
    83 => "11101011000100100000000000101111", 
    84 => "11101100110000011011000111100001", 
    85 => "00101110000011111111101000001111", 
    86 => "00011101000011000010000000011110", 
    87 => "00011101001010101111110100010000", 
    88 => "00110001101100000000110110101101", 
    89 => "01000000111010101101001011010101", 
    90 => "11111110111111010000110111111001", 
    91 => "11101111000011011111111111011101", 
    92 => "00101101010100001101110011110100", 
    93 => "10101111010000001110001111000010", 
    94 => "00010011111000000000000011010010", 
    95 => "10100111100101000000111011010100" );


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

entity convDSPOpt_4_convcbu is
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

architecture arch of convDSPOpt_4_convcbu is
    component convDSPOpt_4_convcbu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_4_convcbu_rom_U :  component convDSPOpt_4_convcbu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

