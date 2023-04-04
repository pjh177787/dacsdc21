// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_4_convb7t_H__
#define __convDSPOpt_4_convb7t_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_4_convb7t_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 96;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(convDSPOpt_4_convb7t_ram) {
        ram[0] = "0b01000100000001000100000000110000";
        ram[1] = "0b11110010000100000010001000111100";
        ram[2] = "0b11010001010000010000001000010000";
        ram[3] = "0b11111111110001101111111100111110";
        ram[4] = "0b01011101111101000010010011100001";
        ram[5] = "0b11111110111100001110000111101011";
        ram[6] = "0b00011010000100001011110111010000";
        ram[7] = "0b10010010110100101010000011001110";
        ram[8] = "0b00010100000011100000000111111101";
        ram[9] = "0b11100101000101000001111011101110";
        ram[10] = "0b11101111000111101101111011000001";
        ram[11] = "0b00100001101100001101011011011111";
        ram[12] = "0b11111001010000110011000011010000";
        ram[13] = "0b00001110000000110000000011110001";
        ram[14] = "0b00100001001000000000111111000101";
        ram[15] = "0b00111001001110101110101011100010";
        ram[16] = "0b11101001010010100011110110110010";
        ram[17] = "0b00101101001000011110010001001011";
        ram[18] = "0b11100101111000110001111100010100";
        ram[19] = "0b00101011111111000000100111101111";
        ram[20] = "0b11111011000011110001110011101101";
        ram[21] = "0b00010000010000110100001011111101";
        ram[22] = "0b00100101000011010011000100001111";
        ram[23] = "0b01001100000110100001110011101110";
        ram[24] = "0b11000011000000101101110100110000";
        ram[25] = "0b00000010111111111110111011110111";
        ram[26] = "0b11110010111010010001000111100001";
        ram[27] = "0b11100011000011101111111100110010";
        ram[28] = "0b00001101111000101101000100110000";
        ram[29] = "0b00011111111011111110110111111110";
        ram[30] = "0b00001110110110010001110100010010";
        ram[31] = "0b11100000111111111100110100000010";
        ram[32] = "0b01000010111000010000000001000000";
        ram[33] = "0b00101111000100001001111111101011";
        ram[34] = "0b00001101111011101111000100010000";
        ram[35] = "0b11101111111111111011111000000011";
        ram[36] = "0b00101110110111101111111111101110";
        ram[37] = "0b11010011110100100001001010111100";
        ram[38] = "0b00010001001100001011111000000000";
        ram[39] = "0b01010010001011010000001111111110";
        ram[40] = "0b00001101010000110011000011010001";
        ram[41] = "0b00111111111100001110000001111110";
        ram[42] = "0b00011001111000000000111011101011";
        ram[43] = "0b11010010000000010001110111100001";
        ram[44] = "0b11010010111000001111000011001111";
        ram[45] = "0b01001101000111101101001000101100";
        ram[46] = "0b00001111001011110010010100100000";
        ram[47] = "0b11110000000111010000000100000011";
        ram[48] = "0b00111101001000101101010110111010";
        ram[49] = "0b11101111110100011011110111110100";
        ram[50] = "0b11111101111000100100000100101001";
        ram[51] = "0b11111110000000100010111101000001";
        ram[52] = "0b00101100110101001110110100100001";
        ram[53] = "0b00010010111000001111111000000011";
        ram[54] = "0b00010001111000011110001000001100";
        ram[55] = "0b00000101111100100101111100111111";
        ram[56] = "0b00001101101001110011000100000000";
        ram[57] = "0b00111110000111100000111100000000";
        ram[58] = "0b01011001001011101011111100001110";
        ram[59] = "0b11000101000000001100111001000000";
        ram[60] = "0b11100010111100110000110111100000";
        ram[61] = "0b01000000111111000000110100011011";
        ram[62] = "0b00011110011111000101110110111011";
        ram[63] = "0b11000011111111110001110001011111";
        ram[64] = "0b00000011001101110000101101000000";
        ram[65] = "0b01001101101000011101110011111100";
        ram[66] = "0b00101010110111010101111001001110";
        ram[67] = "0b11010011000100111110001000110010";
        ram[68] = "0b11111100111000110101000111111100";
        ram[69] = "0b01111011100101010011101010100010";
        ram[70] = "0b10111001110111000010110101111111";
        ram[71] = "0b01001111001011110000110011110010";
        ram[72] = "0b10110000000101010001101110110000";
        ram[73] = "0b01000000000000000100000100001111";
        ram[74] = "0b00111110111100110110111011111010";
        ram[75] = "0b00011011111110111101001111111100";
        ram[76] = "0b11100000001101011110111011001110";
        ram[77] = "0b11000010111111100101111100010000";
        ram[78] = "0b11000001000101000111001011101010";
        ram[79] = "0b01001111111000001110110011111110";
        ram[80] = "0b11110000111001011100010100001010";
        ram[81] = "0b10110010101111000010111011101100";
        ram[82] = "0b10111111000101000001001111101110";
        ram[83] = "0b00110010010001111110001000100100";
        ram[84] = "0b10100001111110101100000111110000";
        ram[85] = "0b00001111010000011110010110100010";
        ram[86] = "0b00000001000110111111010100110001";
        ram[87] = "0b11110000000110101101000111100000";
        ram[88] = "0b10111010010100000000001100010001";
        ram[89] = "0b00001111001111010000110111100010";
        ram[90] = "0b11001110000011101110111000001101";
        ram[91] = "0b00000000001010111011111100010010";
        ram[92] = "0b10101010010011111011110100010000";
        ram[93] = "0b11100011111111111100110100101111";
        ram[94] = "0b00000010110010110000110111101101";
        ram[95] = "0b11111110000010111001111000100001";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(convDSPOpt_4_convb7t) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_4_convb7t_ram* meminst;


SC_CTOR(convDSPOpt_4_convb7t) {
meminst = new convDSPOpt_4_convb7t_ram("convDSPOpt_4_convb7t_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_4_convb7t() {
    delete meminst;
}


};//endmodule
#endif