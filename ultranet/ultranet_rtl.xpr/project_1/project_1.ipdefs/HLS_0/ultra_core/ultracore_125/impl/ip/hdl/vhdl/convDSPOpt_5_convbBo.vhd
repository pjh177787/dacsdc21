-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbBo_rom is 
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


architecture rtl of convDSPOpt_5_convbBo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010111111000000001100110000000100001111011101000110001010100001", 
    1 => "0111010100011101101001010101111101001110011101111101000110010001", 
    2 => "0100010100111110101101100010010100010001011101010011001110010011", 
    3 => "0010000011111101111011011110001111110000001101000011110011110001", 
    4 => "0000111111101111001101011110000100111110010011100001101101100100", 
    5 => "0111110011111111010001001110000000111101110011111110111100110010", 
    6 => "1111110011111111101000000000000111101100001011111001110100011110", 
    7 => "1110111011111111111011000001001100011110101100101100000110111111", 
    8 => "0001111011100001101100001111011100101111101011011101000100001110", 
    9 => "1011001011111101001111101011110011011110111111110010101111101101", 
    10 => "0111001011001011111010011110101001000110100100100000111110110111", 
    11 => "0110101111110001111111000010111111101100111100000011111100110001", 
    12 => "1111000100000001110100100110110100001101000100000010111011010011", 
    13 => "0001111111101110110000100111000000011101110111010000110111110101", 
    14 => "1111000011111101101100010011110100001111000000001110000111010111", 
    15 => "1111111011000011111100011010000000011010000011110010101111111011", 
    16 => "1110001000101110001011111011000111111110000111110000111111011011", 
    17 => "0011010000111100001011001110010100010011001111100010111100111111", 
    18 => "1110110111110011110111101110110100001110001011111111110000101101", 
    19 => "1111101111010010000011001110101111111011001111100010101000110000", 
    20 => "1100101010111101000011011101111111011010010000010100101000101101", 
    21 => "0100000011010001110101010000000111110000100111011001001100000001", 
    22 => "0000111111110000110000111111111011100010101110101001111001000000", 
    23 => "1110000111110001110011010100110111110101111111101001001110110100" );


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

entity convDSPOpt_5_convbBo is
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

architecture arch of convDSPOpt_5_convbBo is
    component convDSPOpt_5_convbBo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbBo_rom_U :  component convDSPOpt_5_convbBo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


