// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbEo_H__
#define __convDSPOpt_5_convbEo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbEo_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 64;
  static const unsigned AddressRange = 24;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(convDSPOpt_5_convbEo_ram) {
        ram[0] = "0b1001001100010000000100101100110000111100001001000001111111011010";
        ram[1] = "0b1100010000101111000011011011110000101101111000001100111011101010";
        ram[2] = "0b1111000000011110001011111011110100101111110111010011110000111111";
        ram[3] = "0b0100001101000000111000000000111111110010110100011001010101111111";
        ram[4] = "0b1111111100010000100111110011111000000000010100001001111101110010";
        ram[5] = "0b1110111000010001100100010010111111111110000111011001111101110000";
        ram[6] = "0b1101110100110100011000100010000000110000011111100101000010100010";
        ram[7] = "0b0000000111111111110111010001000000010000010101110111000010010000";
        ram[8] = "0b0011001011111111110011111111000011110000110100010110000110011111";
        ram[9] = "0b1101010011101111000011011110110110110110100111100000101100100110";
        ram[10] = "0b0010010011010001110100000001000011110101101100010000111000100110";
        ram[11] = "0b1111111111101111111000100000110011100011000000100000111011110111";
        ram[12] = "0b1111111011011110110111101110000001011010101111001011101101001101";
        ram[13] = "0b1110111011000001000111011010110010101001010000011100101111101100";
        ram[14] = "0b1110111100000000001111011100111010101100101101100100000110101110";
        ram[15] = "0b1110111000000001001001101011000111111010111011000100111011101100";
        ram[16] = "0b1100110011011111000000101011111010011101111110100100111111011001";
        ram[17] = "0b1110000000001111111100001011110010100000101111111111111111101010";
        ram[18] = "0b0001001101000000110000101111000000000010100110111001000101111111";
        ram[19] = "0b1110001001101110001100000001000000000011001111101101001001000001";
        ram[20] = "0b1101010001011110011111110001111100000100000100110111001110010000";
        ram[21] = "0b0000111000011110001000111111001111100011010001010011001111110011";
        ram[22] = "0b1110110000000001001100011001010110101110110000100001110010101010";
        ram[23] = "0b1111001000111100101111011101010011000001101000001010111001101011";


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


SC_MODULE(convDSPOpt_5_convbEo) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbEo_ram* meminst;


SC_CTOR(convDSPOpt_5_convbEo) {
meminst = new convDSPOpt_5_convbEo_ram("convDSPOpt_5_convbEo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbEo() {
    delete meminst;
}


};//endmodule
#endif
