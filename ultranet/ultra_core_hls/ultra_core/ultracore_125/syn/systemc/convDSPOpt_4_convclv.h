// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_4_convclv_H__
#define __convDSPOpt_4_convclv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_4_convclv_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_4_convclv_ram) {
        ram[0] = "0b11010111101011101010000100000111";
        ram[1] = "0b00011111000000110001101000100010";
        ram[2] = "0b01000010110111001111000101001111";
        ram[3] = "0b11001110000011111111111011010100";
        ram[4] = "0b00100111101111101001000111000000";
        ram[5] = "0b00010001111100110000110111100000";
        ram[6] = "0b11101001111010011011001111111010";
        ram[7] = "0b10010001000011100001001000010111";
        ram[8] = "0b11110101111000001100110011101001";
        ram[9] = "0b11100101010000010001111111010001";
        ram[10] = "0b11111110101010011101000110011011";
        ram[11] = "0b10111110000010110101001100111110";
        ram[12] = "0b00100000111100010000001111011110";
        ram[13] = "0b11100110110000011110111000000010";
        ram[14] = "0b00001001111111100001111100110000";
        ram[15] = "0b11110001011011110000010011010001";
        ram[16] = "0b01101111001000000001000100001111";
        ram[17] = "0b11010111001100001100000010010000";
        ram[18] = "0b00111111000101000000001000011100";
        ram[19] = "0b00100000010011111110001000011111";
        ram[20] = "0b00001011111001000010111100011100";
        ram[21] = "0b01010110001111111111110011010000";
        ram[22] = "0b01101110111110100000000011001100";
        ram[23] = "0b00011110111111110000110101001111";
        ram[24] = "0b10011101111111110000101010101011";
        ram[25] = "0b11101110000011001101000011111110";
        ram[26] = "0b10110010000000010100111010101101";
        ram[27] = "0b11111100110111101101101100101110";
        ram[28] = "0b11100011110111111111111010011011";
        ram[29] = "0b11100001001100010000000110111100";
        ram[30] = "0b11110100000100011111111110100000";
        ram[31] = "0b00001110111111001101000111111110";
        ram[32] = "0b00110101000110100001111110100011";
        ram[33] = "0b00011110010011110001111011100010";
        ram[34] = "0b11100011010011011101111111001110";
        ram[35] = "0b01001111010111001101001011111101";
        ram[36] = "0b10110001000000101100101101000001";
        ram[37] = "0b00011110000100010100101000011011";
        ram[38] = "0b00101100000100110010110100101100";
        ram[39] = "0b00000001000001001101111100111011";
        ram[40] = "0b10100001001101100001111000111100";
        ram[41] = "0b11111111001011110010101000001010";
        ram[42] = "0b00100010111000010010110011111100";
        ram[43] = "0b11100001111100001100001000011010";
        ram[44] = "0b11100010001000110101111011101111";
        ram[45] = "0b00001101110011100000111011111100";
        ram[46] = "0b11010000010000000010110011110011";
        ram[47] = "0b00011101001011101111110011010011";
        ram[48] = "0b10011100001100010001111110100001";
        ram[49] = "0b11101101000001001111001100010101";
        ram[50] = "0b10110010000100110011111000001111";
        ram[51] = "0b11111100100111000000111000100010";
        ram[52] = "0b00010000000000011101000011010110";
        ram[53] = "0b10110000101000101101101100100000";
        ram[54] = "0b11110010001110110000110000111110";
        ram[55] = "0b00011100000100010000000111100010";
        ram[56] = "0b01000010110000011111111000010010";
        ram[57] = "0b00011111110100100001111000101100";
        ram[58] = "0b00011011000011010010000100011101";
        ram[59] = "0b00001101001100101110000011110001";
        ram[60] = "0b00000000001111010000111111110010";
        ram[61] = "0b00010110001011110010110101001100";
        ram[62] = "0b01100001001011101010001011011110";
        ram[63] = "0b00010001111100110010000111110010";
        ram[64] = "0b00000011110111100000111011111001";
        ram[65] = "0b11110101001110111110100100101011";
        ram[66] = "0b11010000111110101010111110011011";
        ram[67] = "0b00001100000110110001101111001011";
        ram[68] = "0b00000000101111011111111110111101";
        ram[69] = "0b01000010010011001111111110111101";
        ram[70] = "0b00110010111010111110110110101101";
        ram[71] = "0b10011101000010101111111011111011";
        ram[72] = "0b00101111001000011111000000111110";
        ram[73] = "0b11110010000101011101111100000000";
        ram[74] = "0b01010011010100000010001000101110";
        ram[75] = "0b00100001001101000001001000100101";
        ram[76] = "0b00001011110100100100000000000010";
        ram[77] = "0b00000100111100011101000000101111";
        ram[78] = "0b00010111001001000011111101001110";
        ram[79] = "0b00010001000100110010110100101101";
        ram[80] = "0b11111100001100110110000111100010";
        ram[81] = "0b11000001010000010010001011100011";
        ram[82] = "0b00010010001000110001111000001101";
        ram[83] = "0b00010001000100010001001011110000";
        ram[84] = "0b10010010111100000000111111001011";
        ram[85] = "0b00110000000011110100011100000010";
        ram[86] = "0b00011110001011010000001011011110";
        ram[87] = "0b11111111111111101011001000110001";
        ram[88] = "0b10111110111011110000000000001101";
        ram[89] = "0b11111100110100010001001100001110";
        ram[90] = "0b11101011000111010010000010111100";
        ram[91] = "0b11111110111100001001001011011111";
        ram[92] = "0b10111110111111100011111000110010";
        ram[93] = "0b11111101000011110100011111101100";
        ram[94] = "0b11001001000100010000000000100000";
        ram[95] = "0b00110010111001101001001011100000";


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


SC_MODULE(convDSPOpt_4_convclv) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_4_convclv_ram* meminst;


SC_CTOR(convDSPOpt_4_convclv) {
meminst = new convDSPOpt_4_convclv_ram("convDSPOpt_4_convclv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_4_convclv() {
    delete meminst;
}


};//endmodule
#endif
