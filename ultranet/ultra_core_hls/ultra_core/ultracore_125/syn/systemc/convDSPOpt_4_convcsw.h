// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_4_convcsw_H__
#define __convDSPOpt_4_convcsw_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_4_convcsw_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_4_convcsw_ram) {
        ram[0] = "0b00000001101111110011111111101110";
        ram[1] = "0b11110010001100101111000100001011";
        ram[2] = "0b01011110110111100011000000011100";
        ram[3] = "0b00011101111111111110010000111010";
        ram[4] = "0b11100000111100111111000000001111";
        ram[5] = "0b11010100001000101111001110111100";
        ram[6] = "0b00000011101100000011110100001001";
        ram[7] = "0b11111111110100010001011101011001";
        ram[8] = "0b11101111110100100001001011100010";
        ram[9] = "0b00100000000000100100111111110010";
        ram[10] = "0b11010011001011100001000011101110";
        ram[11] = "0b01000000001111101100000100001110";
        ram[12] = "0b00011111111000110101111000000101";
        ram[13] = "0b01011010111100000000001100101101";
        ram[14] = "0b00001111001011011101101101101111";
        ram[15] = "0b00000100101100011111001111010001";
        ram[16] = "0b10011001000110100111110111000011";
        ram[17] = "0b00111001101111011101001111111111";
        ram[18] = "0b10100001000011000010111000101011";
        ram[19] = "0b01010000110010111111101110011100";
        ram[20] = "0b10011111110011110001111110111100";
        ram[21] = "0b00001100101111100011110100111011";
        ram[22] = "0b11101110111100010010111100000001";
        ram[23] = "0b00001101110111000000000111111101";
        ram[24] = "0b01000101001100010000010000000100";
        ram[25] = "0b00111101000011100000111100110001";
        ram[26] = "0b00001101011011010001000000011111";
        ram[27] = "0b11111101001100101111010001000000";
        ram[28] = "0b00110110001000000010010000000010";
        ram[29] = "0b00110000000100001111000100110010";
        ram[30] = "0b00101100010011110010001111101101";
        ram[31] = "0b11110010010100011110010000100001";
        ram[32] = "0b00100100000011100001010000010000";
        ram[33] = "0b01100001000111110011001000010001";
        ram[34] = "0b00101100010011110000010011111110";
        ram[35] = "0b00010100000011010010111001001111";
        ram[36] = "0b11101110010011111111000100001110";
        ram[37] = "0b11101110111011110001111100100011";
        ram[38] = "0b11011101001100010010110111101101";
        ram[39] = "0b00011110000111011110100100000011";
        ram[40] = "0b11101011000000100000000011011010";
        ram[41] = "0b11100000111111111011001000101111";
        ram[42] = "0b01101010110100000001101111101001";
        ram[43] = "0b01001101011011011100111000010001";
        ram[44] = "0b00111110000001110111111100000001";
        ram[45] = "0b00110000110111110011000110010000";
        ram[46] = "0b01110010111100110001110111011011";
        ram[47] = "0b00011111001000111101011111111011";
        ram[48] = "0b11101110011001000110001000111110";
        ram[49] = "0b11011111000011001010111011111001";
        ram[50] = "0b01010100111001000100101110100001";
        ram[51] = "0b00100100111111111101111100100111";
        ram[52] = "0b11100001001101010110000000101001";
        ram[53] = "0b11000000000111100000111111001100";
        ram[54] = "0b00111111001000010101000111010010";
        ram[55] = "0b11010111111100111110111000010001";
        ram[56] = "0b10111101001001001101111011011001";
        ram[57] = "0b10111110001011010110000011101101";
        ram[58] = "0b00101110000100010100001100010011";
        ram[59] = "0b10010010101100100010111111110000";
        ram[60] = "0b00110001111111111011111111100000";
        ram[61] = "0b00110010111111111011111010111100";
        ram[62] = "0b11111011010010110001111111001101";
        ram[63] = "0b11110100110010010000110100010100";
        ram[64] = "0b00011100110011011100111000010100";
        ram[65] = "0b00110001111111011100001110011100";
        ram[66] = "0b01010000111010110001000000001110";
        ram[67] = "0b00101110111110100000111111110000";
        ram[68] = "0b01000001110100001001000000010001";
        ram[69] = "0b11100010011011111110010011011010";
        ram[70] = "0b11101100111011000100001100000000";
        ram[71] = "0b11010011000000001100001001100010";
        ram[72] = "0b00000100110111110000111100001111";
        ram[73] = "0b00011111111111110000101000001110";
        ram[74] = "0b10010001111011111111000011110010";
        ram[75] = "0b11010100110000101110101111011101";
        ram[76] = "0b00000101100110101001000011110111";
        ram[77] = "0b10110101111010010000100100001001";
        ram[78] = "0b00110010110111111011011101100110";
        ram[79] = "0b11010001111000100000011110101111";
        ram[80] = "0b11110101111011111100111011001111";
        ram[81] = "0b10100111011000010001111011101110";
        ram[82] = "0b11001001110111011011011100110011";
        ram[83] = "0b01010010110100011101000111110110";
        ram[84] = "0b00000010111000000000110000011110";
        ram[85] = "0b00100101010000101011011011100000";
        ram[86] = "0b01100100001000100000000101010001";
        ram[87] = "0b11101111001000010001011111000101";
        ram[88] = "0b01100010011101000011000011110011";
        ram[89] = "0b11100011111000011111011010011011";
        ram[90] = "0b00111001111000000001010011100011";
        ram[91] = "0b10010101000101011111011111101110";
        ram[92] = "0b00000010101011110010111000000100";
        ram[93] = "0b11100001000100001010001010101101";
        ram[94] = "0b11111101000100110100001011100101";
        ram[95] = "0b11110110110100111111011100000001";


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


SC_MODULE(convDSPOpt_4_convcsw) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_4_convcsw_ram* meminst;


SC_CTOR(convDSPOpt_4_convcsw) {
meminst = new convDSPOpt_4_convcsw_ram("convDSPOpt_4_convcsw_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_4_convcsw() {
    delete meminst;
}


};//endmodule
#endif