// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbyn_H__
#define __convDSPOpt_5_convbyn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbyn_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbyn_ram) {
        ram[0] = "0b0000001000000000000100101110111100110010000100100000101111110100";
        ram[1] = "0b0101010100011111001011100001111100100001111100100110001111111110";
        ram[2] = "0b0010110100010001101000111110110100011101100110111011110000010000";
        ram[3] = "0b0001000100100010001111110001000011110010111010110001001000110001";
        ram[4] = "0b0000111000000001111100001111000011110000101010011111000101001111";
        ram[5] = "0b0001111011110001101000011111001011100000010111011001110101000010";
        ram[6] = "0b0001000011101111111100101111111011110011110100001011111111010011";
        ram[7] = "0b0010111111011110110011100010001000001110001001001001001000000000";
        ram[8] = "0b0001000111110000101111110001111100001110001011001001000100100000";
        ram[9] = "0b0101011000111100000111010101010001100010010101000000000000000110";
        ram[10] = "0b0000110111110000000000000010001000111111001000010110111100010011";
        ram[11] = "0b1110101011000100111110111001110100001001101100001010100111101001";
        ram[12] = "0b0011000011100000111100100101111101011110000100000000010011111100";
        ram[13] = "0b0010111111110001110101111111010000010001111011111100000011100100";
        ram[14] = "0b0000110011100010010011001100111111101011010010110111101100101111";
        ram[15] = "0b1111111000011111001100010000000000101011100100111111110000011100";
        ram[16] = "0b0000001001001110111100000001000000110000101101111110000000010000";
        ram[17] = "0b1100111001001110111001010111000001011101001001110001111011100010";
        ram[18] = "0b1100110011110010110011100000111111010000101111111101010011111101";
        ram[19] = "0b1100111000010000110111101111000111110010111100011110001011101101";
        ram[20] = "0b1110110100100001000111111011110100010010100111111101001111001100";
        ram[21] = "0b0000111000010000011000110001001101010001011111010111111001100001";
        ram[22] = "0b0100000111100000011000010100010100100010011111010110001000100010";
        ram[23] = "0b0111001100101110001100010001111000110011010100000100111100000000";


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


SC_MODULE(convDSPOpt_5_convbyn) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbyn_ram* meminst;


SC_CTOR(convDSPOpt_5_convbyn) {
meminst = new convDSPOpt_5_convbyn_ram("convDSPOpt_5_convbyn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbyn() {
    delete meminst;
}


};//endmodule
#endif
