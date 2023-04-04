// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbvn_H__
#define __convDSPOpt_5_convbvn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbvn_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbvn_ram) {
        ram[0] = "0b0000001100010000001111111111000111110011101000011010001011100000";
        ram[1] = "0b0010111011000000000011110001000111111101010110011111111001001111";
        ram[2] = "0b0010110111000001010111011111000011101101111010010100110111110001";
        ram[3] = "0b0010111100000000000000000011101110100001000100101101000011010001";
        ram[4] = "0b0000000111100010111100000000100110010001000100101100001011000010";
        ram[5] = "0b0000111000000010110111111111100110011101110000001011111011011110";
        ram[6] = "0b1110111011100010000000101011000110110001101100111010000000101111";
        ram[7] = "0b0001110011100000110111011011001111001110000011011100111001011101";
        ram[8] = "0b0010001100110001110100010010010011100011011101001100001101000010";
        ram[9] = "0b1101110010110001000110101111000111000101010011110100000000010011";
        ram[10] = "0b0000111100000001001011100000000111110010011011000010000100000001";
        ram[11] = "0b0000001101011111000100100000101111010110011011111011011011100010";
        ram[12] = "0b1101000011110001111011110010111000011101010000110111111000000000";
        ram[13] = "0b0001111011011110000111010010101100010010101101001011000011111101";
        ram[14] = "0b0011111011000001111011110000111011110010111011101001000001010010";
        ram[15] = "0b0011111001000011000111110001010000111100001011101110111101110100";
        ram[16] = "0b1100111100100010111100011101111111111010001011011011111110110010";
        ram[17] = "0b1111000000000001111011010000001000111110001000100011111010100000";
        ram[18] = "0b0000000011111111111111110001001011010001101011101110000111011110";
        ram[19] = "0b1111000100011111000100010010001011010011100100010110000111010001";
        ram[20] = "0b1100001100110001001111100010111011100001100100010111001000110000";
        ram[21] = "0b0000000100011111001000010101000000100000001111110010111111111101";
        ram[22] = "0b1111001011101110001011100011000111000011001111100010010111111011";
        ram[23] = "0b1011110011010001000011110100000011100000000011100100001111011101";


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


SC_MODULE(convDSPOpt_5_convbvn) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbvn_ram* meminst;


SC_CTOR(convDSPOpt_5_convbvn) {
meminst = new convDSPOpt_5_convbvn_ram("convDSPOpt_5_convbvn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbvn() {
    delete meminst;
}


};//endmodule
#endif
