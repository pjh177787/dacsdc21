// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_4_convcgu_H__
#define __convDSPOpt_4_convcgu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_4_convcgu_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_4_convcgu_ram) {
        ram[0] = "0b11101010101000010010110110101101";
        ram[1] = "0b01011100001100001001111111010011";
        ram[2] = "0b10110001101111010100111110111101";
        ram[3] = "0b00001110111010110011100111100001";
        ram[4] = "0b00100000000011101110110111010000";
        ram[5] = "0b11101111000110100001100100001101";
        ram[6] = "0b00000111000111001111000110110000";
        ram[7] = "0b11100111101111100100011011101101";
        ram[8] = "0b11000011111111011001000011101101";
        ram[9] = "0b11100001001111100010111011110000";
        ram[10] = "0b00000000001011101111010100100000";
        ram[11] = "0b00010011101111111110000011100000";
        ram[12] = "0b11011011011100101110001100110011";
        ram[13] = "0b00010000110100101110111011011011";
        ram[14] = "0b00011011110011001101110101011111";
        ram[15] = "0b00011010010111001110000100001111";
        ram[16] = "0b11100101000000100011000001011110";
        ram[17] = "0b00011111101000000010110110010000";
        ram[18] = "0b00101011100111110001111001101111";
        ram[19] = "0b01100001000100001011001001010100";
        ram[20] = "0b00010100101000110000110100110001";
        ram[21] = "0b11011110110100110100111111000101";
        ram[22] = "0b11010100100100100001000101100001";
        ram[23] = "0b00101110000000001110010110111111";
        ram[24] = "0b01011111101000011111111100010001";
        ram[25] = "0b11111110001101011111101000110000";
        ram[26] = "0b00001111001011000010001001010011";
        ram[27] = "0b00011111000101010010000100101110";
        ram[28] = "0b00010100111100011010000000101101";
        ram[29] = "0b00011101000100100100111111111111";
        ram[30] = "0b11011101101011110001010001110101";
        ram[31] = "0b11111111110000110010000100111111";
        ram[32] = "0b11101111000101111100111100000001";
        ram[33] = "0b00000010110000000100010100010110";
        ram[34] = "0b11101110110011100000001101000011";
        ram[35] = "0b11011101110100000101110100010000";
        ram[36] = "0b11101101001011111111110011001111";
        ram[37] = "0b11101100000011011101010011011111";
        ram[38] = "0b11010000000000010010110100011110";
        ram[39] = "0b11111101110110100001101100110010";
        ram[40] = "0b10110000001000010101101111001110";
        ram[41] = "0b00101010100101000000001010101111";
        ram[42] = "0b10010010010000110110110110101110";
        ram[43] = "0b11111010000111011100101100111011";
        ram[44] = "0b10101111000110110000101010011100";
        ram[45] = "0b00011011100101001110110111001110";
        ram[46] = "0b10010000001000000010111011001101";
        ram[47] = "0b11111011001000001101100100111100";
        ram[48] = "0b00101001010000010010000100010011";
        ram[49] = "0b00101111000110111101000111011111";
        ram[50] = "0b00110001001011111011111110101100";
        ram[51] = "0b11100001111011101011111111011110";
        ram[52] = "0b00001100000000000001110111000010";
        ram[53] = "0b01101011000111011111000100010001";
        ram[54] = "0b01110010110100111111000000101110";
        ram[55] = "0b10110011110011111111001011111110";
        ram[56] = "0b11011111000010110011101011000000";
        ram[57] = "0b01110000001011100011000100010100";
        ram[58] = "0b01100001111001001110000000001100";
        ram[59] = "0b11001110000011010011011110111101";
        ram[60] = "0b00101101111000011001111101011110";
        ram[61] = "0b00000000000011100001001000100001";
        ram[62] = "0b00101110110011111010010011010001";
        ram[63] = "0b00000000110101110000000011101100";
        ram[64] = "0b01010000000111101001001000100100";
        ram[65] = "0b00011110001100000011110111010101";
        ram[66] = "0b00001001100111101011111100110110";
        ram[67] = "0b01000100101100010000000110110011";
        ram[68] = "0b10011011010111110011101110010000";
        ram[69] = "0b00001001000110011111000011110111";
        ram[70] = "0b10101111110100100000110111111001";
        ram[71] = "0b01010001110011100011100100110001";
        ram[72] = "0b01010010101110011011001000100111";
        ram[73] = "0b01101110101111011011000111001110";
        ram[74] = "0b11100001010111011111000000001100";
        ram[75] = "0b00000001111000101100000011100011";
        ram[76] = "0b01111011111010011111000000100011";
        ram[77] = "0b10111100010111111101111000000001";
        ram[78] = "0b10011100010010111110011100100010";
        ram[79] = "0b11100011000000001110110011000001";
        ram[80] = "0b11111110001110110011101111111010";
        ram[81] = "0b10011010000000000100001011100110";
        ram[82] = "0b11001101101000000010001100111110";
        ram[83] = "0b00110010111011100010101011011011";
        ram[84] = "0b11010010111111110010110000010000";
        ram[85] = "0b11000000001011101100111011111100";
        ram[86] = "0b11011111111011110011110000100000";
        ram[87] = "0b00100100111111101011111011111100";
        ram[88] = "0b11010010010000000000110110111110";
        ram[89] = "0b11001110110111011011100100101111";
        ram[90] = "0b11101101110011100011111011011010";
        ram[91] = "0b00010001000111011101101111101101";
        ram[92] = "0b01100001001001111110000011010011";
        ram[93] = "0b11100101000011001110110011001111";
        ram[94] = "0b11111111000000101111000011110100";
        ram[95] = "0b01000011000000000100110100010101";


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


SC_MODULE(convDSPOpt_4_convcgu) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_4_convcgu_ram* meminst;


SC_CTOR(convDSPOpt_4_convcgu) {
meminst = new convDSPOpt_4_convcgu_ram("convDSPOpt_4_convcgu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_4_convcgu() {
    delete meminst;
}


};//endmodule
#endif