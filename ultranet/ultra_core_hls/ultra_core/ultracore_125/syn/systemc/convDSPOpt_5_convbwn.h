// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbwn_H__
#define __convDSPOpt_5_convbwn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbwn_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbwn_ram) {
        ram[0] = "0b0000010101010001000100010001111100000100111001110010010010100001";
        ram[1] = "0b0000001000001110101000111111000111110000110001111001000001110010";
        ram[2] = "0b0001000000000010000000100000000100000010011010111001010001110001";
        ram[3] = "0b0001110111110000111011110010101010111101111100001110000011010000";
        ram[4] = "0b0001111011000010111000000100100110010001110111111101000100010010";
        ram[5] = "0b0000110111110000111100000010100110011101111011011101111000001111";
        ram[6] = "0b1111111011010001000000101011110110100000001000001011111011010000";
        ram[7] = "0b1100110011011111000011101001111110011100110000011110110011011011";
        ram[8] = "0b0001010001000001111101000000011100010011011111000010010000010001";
        ram[9] = "0b0000000011001111000011010000111010010011111001001110111100010011";
        ram[10] = "0b1111001011100001000011110001001010010010111000111111111000010001";
        ram[11] = "0b0000010001011111000111110010001000000101000000101110001011000010";
        ram[12] = "0b1100001011100011010111001111010100001101001011110111110110010010";
        ram[13] = "0b0010000010111111111110100001110001101110101001110111001010111010";
        ram[14] = "0b0110001011111110100101100001111100101111101001011001111000001110";
        ram[15] = "0b0001111001000001111100001111000111111100000111101111111100100011";
        ram[16] = "0b1100111100100011000000101011111100001001001011100000110010100001";
        ram[17] = "0b0011000000000010111111110000001100100000001101000010111011000001";
        ram[18] = "0b0111000000011110111000100000000111000010011111111100000101010001";
        ram[19] = "0b0010001100011110001001000010001111000001111010110001000100100001";
        ram[20] = "0b1100010001011111010000000010001000010001100110110110000011110000";
        ram[21] = "0b0001001100011111110011110011000100100000011011110100001111110000";
        ram[22] = "0b0010010100010010111011100100010100100010010111100001001111110000";
        ram[23] = "0b0011111011110000111100100000010000111101000011010100111000010000";


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


SC_MODULE(convDSPOpt_5_convbwn) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbwn_ram* meminst;


SC_CTOR(convDSPOpt_5_convbwn) {
meminst = new convDSPOpt_5_convbwn_ram("convDSPOpt_5_convbwn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbwn() {
    delete meminst;
}


};//endmodule
#endif
