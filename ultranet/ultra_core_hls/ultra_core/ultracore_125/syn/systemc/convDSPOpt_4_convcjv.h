// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_4_convcjv_H__
#define __convDSPOpt_4_convcjv_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_4_convcjv_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_4_convcjv_ram) {
        ram[0] = "0b11000000000011111101110011000000";
        ram[1] = "0b10110010111110110010000111001001";
        ram[2] = "0b10110010111001011111010011110000";
        ram[3] = "0b00100000111111110001110110111100";
        ram[4] = "0b00001101001100000010110011100101";
        ram[5] = "0b00010011000000000011000101010001";
        ram[6] = "0b00100011011001010010111011010000";
        ram[7] = "0b01000000001000010000000100011100";
        ram[8] = "0b11011001010000000011110111011100";
        ram[9] = "0b00001111000000010100110111010101";
        ram[10] = "0b00001100110111110011111001000000";
        ram[11] = "0b11111111001111000001110011100010";
        ram[12] = "0b00100111000000000000111100110001";
        ram[13] = "0b11110110000011000001001011010001";
        ram[14] = "0b00010010111111101011110000001111";
        ram[15] = "0b00100010111000100001001011010001";
        ram[16] = "0b00000110111111011110111111100000";
        ram[17] = "0b11000110001011100001000100011110";
        ram[18] = "0b01100100111011011110010011110011";
        ram[19] = "0b00011111110100100010011110110011";
        ram[20] = "0b00111110111011111111001011010010";
        ram[21] = "0b11110000000110111110001000100001";
        ram[22] = "0b00100010001011101100000011000000";
        ram[23] = "0b01011011001101000011110100011101";
        ram[24] = "0b00000001001100011111000110010001";
        ram[25] = "0b00010100111011100011000011111101";
        ram[26] = "0b00010110110000000000110100010011";
        ram[27] = "0b00100100000111010001111111101111";
        ram[28] = "0b00101011110110011111111010110111";
        ram[29] = "0b00010100111100001110000101001111";
        ram[30] = "0b00010000000000011111000000000000";
        ram[31] = "0b00100011111001000001010100000101";
        ram[32] = "0b11110001000111001110000001011110";
        ram[33] = "0b00011110010101011011111101111010";
        ram[34] = "0b11010101111011010011010000110011";
        ram[35] = "0b00000011111000000001101000000110";
        ram[36] = "0b10110010001000100011001111101110";
        ram[37] = "0b00001010001000001100101111110111";
        ram[38] = "0b11000110111101010010000000100001";
        ram[39] = "0b00010001001000110011110111111101";
        ram[40] = "0b00000000100110101001000110110011";
        ram[41] = "0b00010100110101000000010000100100";
        ram[42] = "0b11010101101001010001010101110010";
        ram[43] = "0b00011101110100100110001111010001";
        ram[44] = "0b11111110111111001111001011100100";
        ram[45] = "0b01001100110000101101011000011111";
        ram[46] = "0b00001110111000100000001000110000";
        ram[47] = "0b00000000110011100101101111000111";
        ram[48] = "0b10010011111111011110100110011011";
        ram[49] = "0b01011111111111000000000011111101";
        ram[50] = "0b11000010000000110100101011111011";
        ram[51] = "0b11111110111011001100110000111100";
        ram[52] = "0b00010000001101100100000111000001";
        ram[53] = "0b00000101110111010010000111001111";
        ram[54] = "0b01110101101100110100110111111110";
        ram[55] = "0b11100001111111111100010000001101";
        ram[56] = "0b01110000000001110010001100000100";
        ram[57] = "0b00010011101111010001111100000001";
        ram[58] = "0b00011010001111111110001000011101";
        ram[59] = "0b00110000111000011110000000101111";
        ram[60] = "0b00101101101000111111101000111100";
        ram[61] = "0b00010100111111011110111111010001";
        ram[62] = "0b10110001110001010001110111101011";
        ram[63] = "0b00011111110100000001100100001100";
        ram[64] = "0b00110000000101001110111100100001";
        ram[65] = "0b00000111000010110001110011010100";
        ram[66] = "0b00110101110101011111111010101101";
        ram[67] = "0b00010001111000100000110111010011";
        ram[68] = "0b01000000010111100010000001111110";
        ram[69] = "0b00100111010011001101101100111110";
        ram[70] = "0b00111101111000100000001011001100";
        ram[71] = "0b00100010110101000001111100000101";
        ram[72] = "0b00000001011111011001001111000010";
        ram[73] = "0b01011110000011001011000001000011";
        ram[74] = "0b00001010100110111111111000011101";
        ram[75] = "0b11010011111011111111111111000000";
        ram[76] = "0b11100011101111001100111110100010";
        ram[77] = "0b11100001000000110001111000100010";
        ram[78] = "0b00001101000011000000110011010011";
        ram[79] = "0b11000001101111100010010011001111";
        ram[80] = "0b00000000101011111111111111010000";
        ram[81] = "0b11010000111100110011110110101111";
        ram[82] = "0b00101110101110101110111011111010";
        ram[83] = "0b11110000110111011111011111011100";
        ram[84] = "0b11010011000000011100110000101001";
        ram[85] = "0b11011111111011111111010100100001";
        ram[86] = "0b11101110000110100000000011101110";
        ram[87] = "0b11100010000111111010110000010010";
        ram[88] = "0b11011111001100111011110111011001";
        ram[89] = "0b10111111110011101111000100011111";
        ram[90] = "0b00001010111011100001000111101101";
        ram[91] = "0b11111111000011011001101000100001";
        ram[92] = "0b10111110000100011110110100111100";
        ram[93] = "0b00000011000000100010010000001111";
        ram[94] = "0b11010001000100110010000100011110";
        ram[95] = "0b00000100111000111001000100100100";


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


SC_MODULE(convDSPOpt_4_convcjv) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 96;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_4_convcjv_ram* meminst;


SC_CTOR(convDSPOpt_4_convcjv) {
meminst = new convDSPOpt_4_convcjv_ram("convDSPOpt_4_convcjv_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_4_convcjv() {
    delete meminst;
}


};//endmodule
#endif
