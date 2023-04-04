// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_4_convchv_H__
#define __convDSPOpt_4_convchv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_4_convchv_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_4_convchv_ram) {
        ram[0] = "0b11111010101001000011111010111111";
        ram[1] = "0b01111101010000101101110100000001";
        ram[2] = "0b11000001000111110100111110101110";
        ram[3] = "0b00001101111011110000101000100101";
        ram[4] = "0b11000001111011000000001000000011";
        ram[5] = "0b11111111001011000101111100000011";
        ram[6] = "0b10100111000100001110000111111111";
        ram[7] = "0b11100011111000100111010011101111";
        ram[8] = "0b00010100000011011010110100010001";
        ram[9] = "0b11110001000111010100000011011110";
        ram[10] = "0b11100010001000000011011000010000";
        ram[11] = "0b00010010110100011110000111011100";
        ram[12] = "0b10110010011111000001111000110110";
        ram[13] = "0b00111111010000001111110101110010";
        ram[14] = "0b00110000001110110100000110101100";
        ram[15] = "0b11111001001100010011110111100000";
        ram[16] = "0b00010110111011011011111101110010";
        ram[17] = "0b00001100011000001110111000001111";
        ram[18] = "0b00111010101111010010000100101110";
        ram[19] = "0b11101111010001110101111100000101";
        ram[20] = "0b11010010100100001010101000011110";
        ram[21] = "0b10110001001100111101111110110000";
        ram[22] = "0b11000100110001000101001001100001";
        ram[23] = "0b00100010111000100100011111010010";
        ram[24] = "0b11010011100110110100101000101011";
        ram[25] = "0b11101110000000001110110110011110";
        ram[26] = "0b10110111111100011101111000010001";
        ram[27] = "0b00010001111011110000111010011111";
        ram[28] = "0b11010011000110011001110000101001";
        ram[29] = "0b11101111000100010010001011011100";
        ram[30] = "0b11000010111000011001001001100011";
        ram[31] = "0b11101101110011110001001011100000";
        ram[32] = "0b00111010010011111010110100000001";
        ram[33] = "0b00101111111111100100111110100100";
        ram[34] = "0b10101110110000011100000101010010";
        ram[35] = "0b11101111101111110011111011100011";
        ram[36] = "0b11100010000101010100111100000010";
        ram[37] = "0b00111101110100001100000011110001";
        ram[38] = "0b01000000110111010010000100001100";
        ram[39] = "0b00011111000100001101010111010000";
        ram[40] = "0b01000001110101001111000100000011";
        ram[41] = "0b11111011110100000011110110110100";
        ram[42] = "0b01010000111011000010000000011110";
        ram[43] = "0b00010000111000001101011111010011";
        ram[44] = "0b11010010111000010110000011110001";
        ram[45] = "0b00011001111111111111111110100110";
        ram[46] = "0b11101111010000010000110100100001";
        ram[47] = "0b00011011010111011111101011101110";
        ram[48] = "0b01000011011111000100000100010100";
        ram[49] = "0b00101101010010010100010000101110";
        ram[50] = "0b00101011001011101100001010100010";
        ram[51] = "0b11010011111111100010000011011101";
        ram[52] = "0b11010101110110101100111100011110";
        ram[53] = "0b00010011001111011111000011111101";
        ram[54] = "0b11111110000011111111001000010111";
        ram[55] = "0b10100010110111101100010011101100";
        ram[56] = "0b10010010101111111110110100001111";
        ram[57] = "0b00100010000011111111111100000000";
        ram[58] = "0b00001110000000000011111011101111";
        ram[59] = "0b11111111110000101101010000001011";
        ram[60] = "0b11111100001011001010111000101011";
        ram[61] = "0b11010001110000000101001100011111";
        ram[62] = "0b11101111111100011001010000000011";
        ram[63] = "0b00000000111001000000110110111011";
        ram[64] = "0b11100101001110111010111100111111";
        ram[65] = "0b00000010000010100001111011011110";
        ram[66] = "0b11000000110000111001000111100101";
        ram[67] = "0b11110010111000010001000010011110";
        ram[68] = "0b10011010001111010000101111001110";
        ram[69] = "0b11011101000110110001000000010100";
        ram[70] = "0b10111110000100100000101000001010";
        ram[71] = "0b01110010110111000011100100100001";
        ram[72] = "0b00001111000111110000101111000000";
        ram[73] = "0b10111110111011101100000100100010";
        ram[74] = "0b11110111000100010010111111100001";
        ram[75] = "0b00000001111100001110000100111101";
        ram[76] = "0b01010011111100010001111111100001";
        ram[77] = "0b11001011000100000010001100001110";
        ram[78] = "0b11100101001000110001001010101111";
        ram[79] = "0b00110000011000101111000100111100";
        ram[80] = "0b11011011001111100000101111111011";
        ram[81] = "0b11111111001000000101001001010001";
        ram[82] = "0b11011110001100110000000110110011";
        ram[83] = "0b00101101000101000001000100101110";
        ram[84] = "0b00010001110100100100111011011100";
        ram[85] = "0b10100010111111101111000011001111";
        ram[86] = "0b11011100010000100010000000100000";
        ram[87] = "0b00100011110111010000111100000100";
        ram[88] = "0b01010001110000001100110111001111";
        ram[89] = "0b10110100000011110000111011110110";
        ram[90] = "0b11011101000100100101000111110011";
        ram[91] = "0b00011111001011010100101011100101";
        ram[92] = "0b01110000110000101011000011000001";
        ram[93] = "0b11110011000011100000000010100010";
        ram[94] = "0b00011101010101001100001100000010";
        ram[95] = "0b00000100011000110010111100110011";


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


SC_MODULE(convDSPOpt_4_convchv) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_4_convchv_ram* meminst;


SC_CTOR(convDSPOpt_4_convchv) {
meminst = new convDSPOpt_4_convchv_ram("convDSPOpt_4_convchv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_4_convchv() {
    delete meminst;
}


};//endmodule
#endif