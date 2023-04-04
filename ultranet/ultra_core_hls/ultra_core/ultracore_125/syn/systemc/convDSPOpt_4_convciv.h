// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_4_convciv_H__
#define __convDSPOpt_4_convciv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_4_convciv_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_4_convciv_ram) {
        ram[0] = "0b11101011110111111111110010111101";
        ram[1] = "0b01001110010100011011110000001011";
        ram[2] = "0b00001110111011000000000011011111";
        ram[3] = "0b11101100110110100011110111110100";
        ram[4] = "0b11011101111100110100011110011101";
        ram[5] = "0b00101110001000011100101000110100";
        ram[6] = "0b11010001010111010011111100011101";
        ram[7] = "0b11101100110110110001000111100001";
        ram[8] = "0b01000010010111001110001111000001";
        ram[9] = "0b00000000111100000011111010011101";
        ram[10] = "0b00011111001110111110001100101110";
        ram[11] = "0b11001101111111010010011011100010";
        ram[12] = "0b00010000001100111110110001010000";
        ram[13] = "0b00001011001111100010100101111100";
        ram[14] = "0b00011001000110010010111111011010";
        ram[15] = "0b11111110000100100000111011011101";
        ram[16] = "0b11100111110111101101101001101111";
        ram[17] = "0b00011110001111111101110110101011";
        ram[18] = "0b00011001111111010010110111111111";
        ram[19] = "0b00110000011011110000111100011100";
        ram[20] = "0b10100100101111100001100100111101";
        ram[21] = "0b11010000001100011110110010011010";
        ram[22] = "0b10010000000000100100111100111110";
        ram[23] = "0b11000011111110111111001111000001";
        ram[24] = "0b11010001111111111100001001000001";
        ram[25] = "0b00110101001000101111001011011100";
        ram[26] = "0b00110110111111011111000100000010";
        ram[27] = "0b11000010001011110011000100011011";
        ram[28] = "0b00010011111111000001000101001111";
        ram[29] = "0b11110110000111010010111011101100";
        ram[30] = "0b00000011000000111100000100100010";
        ram[31] = "0b00000010000001000010000100101100";
        ram[32] = "0b00011010010000110101111100000100";
        ram[33] = "0b01000011000111010100000000100011";
        ram[34] = "0b00000101001001001101000000001111";
        ram[35] = "0b11011111111100100010110000011100";
        ram[36] = "0b00001110110111111100110100010011";
        ram[37] = "0b11101110000011110001111101101111";
        ram[38] = "0b01000011111011101100010100000011";
        ram[39] = "0b11010110111101000011010000000001";
        ram[40] = "0b01110000000011111001111000010111";
        ram[41] = "0b10010111011011110010001101101101";
        ram[42] = "0b01110000110111011001011100100100";
        ram[43] = "0b11010010101101110010011110100100";
        ram[44] = "0b11110011111000001100000000110001";
        ram[45] = "0b11001110010000000101001101010110";
        ram[46] = "0b01001100101111111100000100100101";
        ram[47] = "0b00010010101000010101000011110010";
        ram[48] = "0b00001110010111001111001000010000";
        ram[49] = "0b00101011110010111111101011000001";
        ram[50] = "0b00001001101110011101110101000010";
        ram[51] = "0b10011111000100000001000011000010";
        ram[52] = "0b11010100110000111100010000001011";
        ram[53] = "0b00110001111000001101110111010101";
        ram[54] = "0b11101001110011110010111001001101";
        ram[55] = "0b10110001010000011111001011101111";
        ram[56] = "0b11011111110001011111011000001101";
        ram[57] = "0b11111111110111000010110000100001";
        ram[58] = "0b00001011001000000010001101001110";
        ram[59] = "0b11110011000101001111010011110011";
        ram[60] = "0b01001111110100100001010100111111";
        ram[61] = "0b00001111110100000001111100111111";
        ram[62] = "0b00011011001100001100001011010000";
        ram[63] = "0b11101111000001110001111111011101";
        ram[64] = "0b00100111111111111101111101010000";
        ram[65] = "0b00100111001011011110110111110000";
        ram[66] = "0b11111100001001100000110111000000";
        ram[67] = "0b00011100001000101111110010111110";
        ram[68] = "0b10101010000000010010100110011100";
        ram[69] = "0b11101110110111011111000011111111";
        ram[70] = "0b10111101010001100101111111011001";
        ram[71] = "0b01100100000100000000101100000010";
        ram[72] = "0b11100000001110101001101010010011";
        ram[73] = "0b11101100001110111101001111011011";
        ram[74] = "0b11010011111011100000010011100001";
        ram[75] = "0b00000000110110110100100100101100";
        ram[76] = "0b10111111111011111100111110010010";
        ram[77] = "0b01011011111000010000111010011101";
        ram[78] = "0b10100110010010110001110110011101";
        ram[79] = "0b11101110001110101100101101001100";
        ram[80] = "0b00001111000011011111110010011110";
        ram[81] = "0b11011010110111010100111000011101";
        ram[82] = "0b10010001111010101111110011010000";
        ram[83] = "0b00011101111011001111110000001100";
        ram[84] = "0b00111010110111111111110110101110";
        ram[85] = "0b10110011001111010000010011110010";
        ram[86] = "0b00011111111100011111000100001110";
        ram[87] = "0b00011111000011110010110111010001";
        ram[88] = "0b00111011101111101010111110111101";
        ram[89] = "0b10101110111000111111001100000011";
        ram[90] = "0b11100010000000110000001110111110";
        ram[91] = "0b00001101111111110101101011100000";
        ram[92] = "0b00111111101100100010111011000001";
        ram[93] = "0b11100001000100000001110110101111";
        ram[94] = "0b00000000111101001100000111110010";
        ram[95] = "0b00000001000100110010111100111110";


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


SC_MODULE(convDSPOpt_4_convciv) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_4_convciv_ram* meminst;


SC_CTOR(convDSPOpt_4_convciv) {
meminst = new convDSPOpt_4_convciv_ram("convDSPOpt_4_convciv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_4_convciv() {
    delete meminst;
}


};//endmodule
#endif
