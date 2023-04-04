-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity convDSPOpt_5_convbxn_rom is 
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


architecture rtl of convDSPOpt_5_convbxn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001010000110001011011110001111100000001011111110111000110010000", 
    1 => "1110111011011110111011101111111011111011110001110111101110010001", 
    2 => "1110111011010010101000100000000100001101100101111111110101110001", 
    3 => "0001111100111111000011100001111111111111010100100010111100001101", 
    4 => "0000001101001111111111110100110111110000001100110010001000010010", 
    5 => "0001000000100000111011110110111000000000010101000110001001010000", 
    6 => "0011111100000011111100100001001011100010111111001010001000010011", 
    7 => "1100110010110000110100001100110010011011001011101100110011001011", 
    8 => "0000001011010000110111110000001110010010011100001010110111100000", 
    9 => "0110000011000000001101011110110110110100101011000000000100000100", 
    10 => "0011111111110011010000110000001010010101100100001011001111110100", 
    11 => "0010010101010000010101000010010110110111110100100000010100010111", 
    12 => "0000000011010001001111110000111011100010001111100010110100100010", 
    13 => "0000111010110001111111001111101100101110000111100011000101001111", 
    14 => "0001111111001111101101100001110000111111110100111001111100001110", 
    15 => "1101111100001111111011111111000011001111001100000010001011000000", 
    16 => "1101111011110011001101001101001000011100001000010011111011001101", 
    17 => "0100000100000000001011111101000000110000000001100001001100110001", 
    18 => "1110000100101110100111100011000111110001001100111011000101100000", 
    19 => "1110001001001111001000100011001100000010001110111101000101000010", 
    20 => "1100001101010000011001000010001100001110100111100101000011011110", 
    21 => "1111000011100001110011100010010000110010011011010010000011101100", 
    22 => "1110000000000001111111000100000100110011000011010001001100001100", 
    23 => "1111110100110000000011100001000001000000101100001111111100001110" );


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

entity convDSPOpt_5_convbxn is
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

architecture arch of convDSPOpt_5_convbxn is
    component convDSPOpt_5_convbxn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    convDSPOpt_5_convbxn_rom_U :  component convDSPOpt_5_convbxn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


