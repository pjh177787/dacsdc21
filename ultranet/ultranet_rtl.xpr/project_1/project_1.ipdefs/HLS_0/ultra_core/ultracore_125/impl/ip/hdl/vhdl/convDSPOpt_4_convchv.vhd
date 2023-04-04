-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_4_convchv_rom is 
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


architecture rtl of convDSPOpt_4_convchv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111010101001000011111010111111", 
    1 => "01111101010000101101110100000001", 
    2 => "11000001000111110100111110101110", 
    3 => "00001101111011110000101000100101", 
    4 => "11000001111011000000001000000011", 
    5 => "11111111001011000101111100000011", 
    6 => "10100111000100001110000111111111", 
    7 => "11100011111000100111010011101111", 
    8 => "00010100000011011010110100010001", 
    9 => "11110001000111010100000011011110", 
    10 => "11100010001000000011011000010000", 
    11 => "00010010110100011110000111011100", 
    12 => "10110010011111000001111000110110", 
    13 => "00111111010000001111110101110010", 
    14 => "00110000001110110100000110101100", 
    15 => "11111001001100010011110111100000", 
    16 => "00010110111011011011111101110010", 
    17 => "00001100011000001110111000001111", 
    18 => "00111010101111010010000100101110", 
    19 => "11101111010001110101111100000101", 
    20 => "11010010100100001010101000011110", 
    21 => "10110001001100111101111110110000", 
    22 => "11000100110001000101001001100001", 
    23 => "00100010111000100100011111010010", 
    24 => "11010011100110110100101000101011", 
    25 => "11101110000000001110110110011110", 
    26 => "10110111111100011101111000010001", 
    27 => "00010001111011110000111010011111", 
    28 => "11010011000110011001110000101001", 
    29 => "11101111000100010010001011011100", 
    30 => "11000010111000011001001001100011", 
    31 => "11101101110011110001001011100000", 
    32 => "00111010010011111010110100000001", 
    33 => "00101111111111100100111110100100", 
    34 => "10101110110000011100000101010010", 
    35 => "11101111101111110011111011100011", 
    36 => "11100010000101010100111100000010", 
    37 => "00111101110100001100000011110001", 
    38 => "01000000110111010010000100001100", 
    39 => "00011111000100001101010111010000", 
    40 => "01000001110101001111000100000011", 
    41 => "11111011110100000011110110110100", 
    42 => "01010000111011000010000000011110", 
    43 => "00010000111000001101011111010011", 
    44 => "11010010111000010110000011110001", 
    45 => "00011001111111111111111110100110", 
    46 => "11101111010000010000110100100001", 
    47 => "00011011010111011111101011101110", 
    48 => "01000011011111000100000100010100", 
    49 => "00101101010010010100010000101110", 
    50 => "00101011001011101100001010100010", 
    51 => "11010011111111100010000011011101", 
    52 => "11010101110110101100111100011110", 
    53 => "00010011001111011111000011111101", 
    54 => "11111110000011111111001000010111", 
    55 => "10100010110111101100010011101100", 
    56 => "10010010101111111110110100001111", 
    57 => "00100010000011111111111100000000", 
    58 => "00001110000000000011111011101111", 
    59 => "11111111110000101101010000001011", 
    60 => "11111100001011001010111000101011", 
    61 => "11010001110000000101001100011111", 
    62 => "11101111111100011001010000000011", 
    63 => "00000000111001000000110110111011", 
    64 => "11100101001110111010111100111111", 
    65 => "00000010000010100001111011011110", 
    66 => "11000000110000111001000111100101", 
    67 => "11110010111000010001000010011110", 
    68 => "10011010001111010000101111001110", 
    69 => "11011101000110110001000000010100", 
    70 => "10111110000100100000101000001010", 
    71 => "01110010110111000011100100100001", 
    72 => "00001111000111110000101111000000", 
    73 => "10111110111011101100000100100010", 
    74 => "11110111000100010010111111100001", 
    75 => "00000001111100001110000100111101", 
    76 => "01010011111100010001111111100001", 
    77 => "11001011000100000010001100001110", 
    78 => "11100101001000110001001010101111", 
    79 => "00110000011000101111000100111100", 
    80 => "11011011001111100000101111111011", 
    81 => "11111111001000000101001001010001", 
    82 => "11011110001100110000000110110011", 
    83 => "00101101000101000001000100101110", 
    84 => "00010001110100100100111011011100", 
    85 => "10100010111111101111000011001111", 
    86 => "11011100010000100010000000100000", 
    87 => "00100011110111010000111100000100", 
    88 => "01010001110000001100110111001111", 
    89 => "10110100000011110000111011110110", 
    90 => "11011101000100100101000111110011", 
    91 => "00011111001011010100101011100101", 
    92 => "01110000110000101011000011000001", 
    93 => "11110011000011100000000010100010", 
    94 => "00011101010101001100001100000010", 
    95 => "00000100011000110010111100110011" );


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

entity convDSPOpt_4_convchv is
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

architecture arch of convDSPOpt_4_convchv is
    component convDSPOpt_4_convchv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_4_convchv_rom_U :  component convDSPOpt_4_convchv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

