-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_4_convcgu_rom is 
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


architecture rtl of convDSPOpt_4_convcgu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11101010101000010010110110101101", 
    1 => "01011100001100001001111111010011", 
    2 => "10110001101111010100111110111101", 
    3 => "00001110111010110011100111100001", 
    4 => "00100000000011101110110111010000", 
    5 => "11101111000110100001100100001101", 
    6 => "00000111000111001111000110110000", 
    7 => "11100111101111100100011011101101", 
    8 => "11000011111111011001000011101101", 
    9 => "11100001001111100010111011110000", 
    10 => "00000000001011101111010100100000", 
    11 => "00010011101111111110000011100000", 
    12 => "11011011011100101110001100110011", 
    13 => "00010000110100101110111011011011", 
    14 => "00011011110011001101110101011111", 
    15 => "00011010010111001110000100001111", 
    16 => "11100101000000100011000001011110", 
    17 => "00011111101000000010110110010000", 
    18 => "00101011100111110001111001101111", 
    19 => "01100001000100001011001001010100", 
    20 => "00010100101000110000110100110001", 
    21 => "11011110110100110100111111000101", 
    22 => "11010100100100100001000101100001", 
    23 => "00101110000000001110010110111111", 
    24 => "01011111101000011111111100010001", 
    25 => "11111110001101011111101000110000", 
    26 => "00001111001011000010001001010011", 
    27 => "00011111000101010010000100101110", 
    28 => "00010100111100011010000000101101", 
    29 => "00011101000100100100111111111111", 
    30 => "11011101101011110001010001110101", 
    31 => "11111111110000110010000100111111", 
    32 => "11101111000101111100111100000001", 
    33 => "00000010110000000100010100010110", 
    34 => "11101110110011100000001101000011", 
    35 => "11011101110100000101110100010000", 
    36 => "11101101001011111111110011001111", 
    37 => "11101100000011011101010011011111", 
    38 => "11010000000000010010110100011110", 
    39 => "11111101110110100001101100110010", 
    40 => "10110000001000010101101111001110", 
    41 => "00101010100101000000001010101111", 
    42 => "10010010010000110110110110101110", 
    43 => "11111010000111011100101100111011", 
    44 => "10101111000110110000101010011100", 
    45 => "00011011100101001110110111001110", 
    46 => "10010000001000000010111011001101", 
    47 => "11111011001000001101100100111100", 
    48 => "00101001010000010010000100010011", 
    49 => "00101111000110111101000111011111", 
    50 => "00110001001011111011111110101100", 
    51 => "11100001111011101011111111011110", 
    52 => "00001100000000000001110111000010", 
    53 => "01101011000111011111000100010001", 
    54 => "01110010110100111111000000101110", 
    55 => "10110011110011111111001011111110", 
    56 => "11011111000010110011101011000000", 
    57 => "01110000001011100011000100010100", 
    58 => "01100001111001001110000000001100", 
    59 => "11001110000011010011011110111101", 
    60 => "00101101111000011001111101011110", 
    61 => "00000000000011100001001000100001", 
    62 => "00101110110011111010010011010001", 
    63 => "00000000110101110000000011101100", 
    64 => "01010000000111101001001000100100", 
    65 => "00011110001100000011110111010101", 
    66 => "00001001100111101011111100110110", 
    67 => "01000100101100010000000110110011", 
    68 => "10011011010111110011101110010000", 
    69 => "00001001000110011111000011110111", 
    70 => "10101111110100100000110111111001", 
    71 => "01010001110011100011100100110001", 
    72 => "01010010101110011011001000100111", 
    73 => "01101110101111011011000111001110", 
    74 => "11100001010111011111000000001100", 
    75 => "00000001111000101100000011100011", 
    76 => "01111011111010011111000000100011", 
    77 => "10111100010111111101111000000001", 
    78 => "10011100010010111110011100100010", 
    79 => "11100011000000001110110011000001", 
    80 => "11111110001110110011101111111010", 
    81 => "10011010000000000100001011100110", 
    82 => "11001101101000000010001100111110", 
    83 => "00110010111011100010101011011011", 
    84 => "11010010111111110010110000010000", 
    85 => "11000000001011101100111011111100", 
    86 => "11011111111011110011110000100000", 
    87 => "00100100111111101011111011111100", 
    88 => "11010010010000000000110110111110", 
    89 => "11001110110111011011100100101111", 
    90 => "11101101110011100011111011011010", 
    91 => "00010001000111011101101111101101", 
    92 => "01100001001001111110000011010011", 
    93 => "11100101000011001110110011001111", 
    94 => "11111111000000101111000011110100", 
    95 => "01000011000000000100110100010101" );


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

entity convDSPOpt_4_convcgu is
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

architecture arch of convDSPOpt_4_convcgu is
    component convDSPOpt_4_convcgu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_4_convcgu_rom_U :  component convDSPOpt_4_convcgu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


