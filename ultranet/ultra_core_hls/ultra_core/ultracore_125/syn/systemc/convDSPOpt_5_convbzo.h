// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbzo_H__
#define __convDSPOpt_5_convbzo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbzo_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbzo_ram) {
        ram[0] = "0b0010010000111101010100100001000000110011010100010101111100101111";
        ram[1] = "0b0100010011111101010011010010110100110010000100100110111100110110";
        ram[2] = "0b0000110101001111101100101111110101011100100111001001110011000011";
        ram[3] = "0b0001001000100001111000010001000100010011100111010100001011010010";
        ram[4] = "0b1100110100000000011000000000110011110010100110010111000010010000";
        ram[5] = "0b0011110111010011011100010000111011111111100111110111110110100000";
        ram[6] = "0b0000001101001110100100100000010001000001011001101001110011010001";
        ram[7] = "0b0001001100001101100111000001001000110000011101001001001000010000";
        ram[8] = "0b0000001000110000110010110001000001000010010100001001001000111110";
        ram[9] = "0b0110011000101100000011000010000000010100001011100000010000010110";
        ram[10] = "0b0000000000111110000000001111000100110010111111010001111100101111";
        ram[11] = "0b1011101000000010110110111001111000011001111000101101100111111001";
        ram[12] = "0b1110001011010000111110010001000100001101111011111101010001001101";
        ram[13] = "0b0111000100001101101001110111000101000011111001001001010000101111";
        ram[14] = "0b1111110111111110000001111110001100111100001111110001110010100000";
        ram[15] = "0b0001000000111110001100100000000100111101101111011011111100011011";
        ram[16] = "0b1110001001001110000111100000111000011101101100110000111010010000";
        ram[17] = "0b0000110111100000001011011110111011011100001001010110110010010000";
        ram[18] = "0b0010001000011111110000111110110000000000111011010011001111101101";
        ram[19] = "0b0000001011010000000001001110101111010100011100100011010011011101";
        ram[20] = "0b0010000011010000001000111100110111000101011111011110010011001110";
        ram[21] = "0b1111111000000010110100000010110010100010110101111111000000111111";
        ram[22] = "0b0010001000110000111100010000101110100100110101101101001100000010";
        ram[23] = "0b1101000100100010110100101101110010100100101111101100000100010010";


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


SC_MODULE(convDSPOpt_5_convbzo) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbzo_ram* meminst;


SC_CTOR(convDSPOpt_5_convbzo) {
meminst = new convDSPOpt_5_convbzo_ram("convDSPOpt_5_convbzo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbzo() {
    delete meminst;
}


};//endmodule
#endif
