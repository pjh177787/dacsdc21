// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbGp_H__
#define __convDSPOpt_5_convbGp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbGp_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbGp_ram) {
        ram[0] = "0b1100000110100010111010101010101100011110010100100011111111111110";
        ram[1] = "0b1101001011001111000110111100101000010000110111101101000000101101";
        ram[2] = "0b1110000000001110011011110000110111101111101111010101111100101011";
        ram[3] = "0b1110010101100001011000000000001000000101001011000111010010010000";
        ram[4] = "0b0100001000001111011111011111001111110011111111010111001110010000";
        ram[5] = "0b0011000100001111011110011111000011110001110111000111001010011111";
        ram[6] = "0b0000110111000001101000100000000011011111101000101001000001011111";
        ram[7] = "0b0001000011110010111111110001000111110010000011101001000100100001";
        ram[8] = "0b1111111100101101010111100000000100000000110111111001000100010010";
        ram[9] = "0b1111111000000000000100011011101011010011010111101110110011100010";
        ram[10] = "0b0001101111001111000110111001100110010001010100100000110111000001";
        ram[11] = "0b0011101010111101000011001001101010100001110011101110101111100001";
        ram[12] = "0b1101110111010000111001000011111101011010111110111111110100110000";
        ram[13] = "0b0011111100000010001000101111111000011010001111111111111011101101";
        ram[14] = "0b0101001000011111000101010001001000011011000111110000001100111100";
        ram[15] = "0b0000001101001110001111101101001001011110001101011100111000011111";
        ram[16] = "0b0111010100111100110111010101000101110101010001111011000100000111";
        ram[17] = "0b0100010100111111000001010010011101100100011000101010000000000100";
        ram[18] = "0b0000111111111111101111100000000111110001111111001001000001100000";
        ram[19] = "0b1111111011100000110100111111000111010000000111111010111011110000";
        ram[20] = "0b0011001100100000100110110001000111100011000100010110000010010001";
        ram[21] = "0b0110001101001111011100110000001111110011011011100110010111001110";
        ram[22] = "0b1100111011100011000100101011010010111111110100100000000111001010";
        ram[23] = "0b0000010000101111110010100000001110110000110111011001000001111010";


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


SC_MODULE(convDSPOpt_5_convbGp) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbGp_ram* meminst;


SC_CTOR(convDSPOpt_5_convbGp) {
meminst = new convDSPOpt_5_convbGp_ram("convDSPOpt_5_convbGp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbGp() {
    delete meminst;
}


};//endmodule
#endif
