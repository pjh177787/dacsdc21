// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_4_convcau_H__
#define __convDSPOpt_4_convcau_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_4_convcau_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_4_convcau_ram) {
        ram[0] = "0b11101100100111100011000011101100";
        ram[1] = "0b01010100110010110011001010111110";
        ram[2] = "0b11110100000101010011010000000010";
        ram[3] = "0b00010010000000001111111000010000";
        ram[4] = "0b11011100110010101101111011110000";
        ram[5] = "0b00110100000110110000111000101100";
        ram[6] = "0b11110100110011011111001011000000";
        ram[7] = "0b10110001111000111110110010111101";
        ram[8] = "0b11100110000110011011100101101111";
        ram[9] = "0b00000000010000101100001001001011";
        ram[10] = "0b11010000101111101110001010100111";
        ram[11] = "0b11000001101000010101111010011110";
        ram[12] = "0b00001110000111000011110011111011";
        ram[13] = "0b00001010110110111101000110110011";
        ram[14] = "0b11110011000001101111000011111111";
        ram[15] = "0b00001110000100111111000000000010";
        ram[16] = "0b11110000110011100010110011011101";
        ram[17] = "0b11001100111110100000001000000100";
        ram[18] = "0b11010000101111111101111111101110";
        ram[19] = "0b00101101111011100001101111110001";
        ram[20] = "0b11110000000011010010001011000011";
        ram[21] = "0b11100000111011010000001000010000";
        ram[22] = "0b00010100111001101110001100010100";
        ram[23] = "0b11111110111100110001000111110001";
        ram[24] = "0b00011001100100101110001110110011";
        ram[25] = "0b11101010111000000010101000011110";
        ram[26] = "0b11101101111000000000010000001111";
        ram[27] = "0b00101101000011111101111000101110";
        ram[28] = "0b11011110110101011110000110011111";
        ram[29] = "0b11111010110011110000101111011011";
        ram[30] = "0b11111100001011100101111100001111";
        ram[31] = "0b11111011110011111101111000011011";
        ram[32] = "0b00010001000101000100000010100010";
        ram[33] = "0b11001110001011110101010110100011";
        ram[34] = "0b11010000000100010001111111011101";
        ram[35] = "0b11100000111011000100000011011011";
        ram[36] = "0b00001111110101101101001100000001";
        ram[37] = "0b11100000110101100010110111100001";
        ram[38] = "0b00001111111100011011111110111101";
        ram[39] = "0b10110010110001001101000111001111";
        ram[40] = "0b00100001111001000000010110110011";
        ram[41] = "0b11110001111100101111000111001110";
        ram[42] = "0b00000001111000010000111100011110";
        ram[43] = "0b11110010111101001100010011101111";
        ram[44] = "0b00000010110101000100000011000011";
        ram[45] = "0b10101101000011111011110011000000";
        ram[46] = "0b11110000110000010011110000100011";
        ram[47] = "0b01000010000000010000001000111110";
        ram[48] = "0b11101110111100100001111010100001";
        ram[49] = "0b00101110000111001110001011110101";
        ram[50] = "0b11100000000100000001110111011101";
        ram[51] = "0b00011010000011011011111100101110";
        ram[52] = "0b11010011100100100000001010101110";
        ram[53] = "0b00101010000000000100110011001111";
        ram[54] = "0b10110010000100110000110000100000";
        ram[55] = "0b00011111001000011011111000100001";
        ram[56] = "0b11010110100111110011000010101110";
        ram[57] = "0b10111101001010100100110000011110";
        ram[58] = "0b10110010001000100001001001000000";
        ram[59] = "0b00010010101111100010101111111001";
        ram[60] = "0b11110010110110010100000100000101";
        ram[61] = "0b11000000001011101100111000111110";
        ram[62] = "0b00001110001011010101111111000100";
        ram[63] = "0b11110001001100110001111101000011";
        ram[64] = "0b00001110000010110100110110011111";
        ram[65] = "0b00100000001000101001000111100000";
        ram[66] = "0b11100001111100100111000110110101";
        ram[67] = "0b11010011101000110010000100001111";
        ram[68] = "0b00001110010001011110001111110010";
        ram[69] = "0b00010001011100011111111010110111";
        ram[70] = "0b00000100111000010001000111000010";
        ram[71] = "0b00111110001100010101000111110010";
        ram[72] = "0b11110001001100000100001110110010";
        ram[73] = "0b11110100000100011001010011100011";
        ram[74] = "0b00010110110001110011111100110001";
        ram[75] = "0b00000000000101101111011100110001";
        ram[76] = "0b00011010011100001111111111011011";
        ram[77] = "0b00011111110000001110011111111001";
        ram[78] = "0b00101001000100000001001000001110";
        ram[79] = "0b11100001111000010011111100010111";
        ram[80] = "0b00101011011101101110000111100001";
        ram[81] = "0b00100000110111110001000010101011";
        ram[82] = "0b01001011011101110100010110010011";
        ram[83] = "0b10110101000101101101010011111111";
        ram[84] = "0b00101110110100101101000000001110";
        ram[85] = "0b00011111000111111010111011111110";
        ram[86] = "0b00011111110110100011001100101110";
        ram[87] = "0b00001101110010110000111100011101";
        ram[88] = "0b00010001000000001110111000001111";
        ram[89] = "0b00000000010111101101111101000100";
        ram[90] = "0b11110011111000100101001101001111";
        ram[91] = "0b11110001111011010001111100011111";
        ram[92] = "0b00010000111010110000101100011110";
        ram[93] = "0b11001111000101010000101100001111";
        ram[94] = "0b00010011000100000010001111110001";
        ram[95] = "0b11001101111011110011010111111101";


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


SC_MODULE(convDSPOpt_4_convcau) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_4_convcau_ram* meminst;


SC_CTOR(convDSPOpt_4_convcau) {
meminst = new convDSPOpt_4_convcau_ram("convDSPOpt_4_convcau_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_4_convcau() {
    delete meminst;
}


};//endmodule
#endif
