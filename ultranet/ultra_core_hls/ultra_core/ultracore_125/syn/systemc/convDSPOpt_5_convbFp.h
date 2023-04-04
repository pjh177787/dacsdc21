// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbFp_H__
#define __convDSPOpt_5_convbFp_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbFp_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbFp_ram) {
        ram[0] = "0b1010001011000001110111101001110000101011011101001100110110111001";
        ram[1] = "0b1111001011100000111010111010110001001110000100101011110111101011";
        ram[2] = "0b1111111100001101001111011101110101011101111000000011110000011011";
        ram[3] = "0b1110010001100010010000010010000011110011110100101001010001111101";
        ram[4] = "0b1100000100100010111100010011111111111101001001111110000010111101";
        ram[5] = "0b1111000000010000111100000010000000011110111101000100001010111110";
        ram[6] = "0b1110111100000000000100110001000100000010011111000101111010111110";
        ram[7] = "0b0110001000010001101011000000000111111110010100100111000110010010";
        ram[8] = "0b0010000100101111101011000000111100000010000000000000010010100001";
        ram[9] = "0b0001000011010000001011111010111000010100111100110001110000010101";
        ram[10] = "0b0000111111000010110111111100000111110011000100110001111000100111";
        ram[11] = "0b0010110011000000111011011010111111000000111100000001101111110110";
        ram[12] = "0b1101111011101110110111110001111100111011000111111100110100101101";
        ram[13] = "0b0010111110110000000111011101100110101010011011111100111011101010";
        ram[14] = "0b0111001001001111001111010011111010011101111111110100010011001001";
        ram[15] = "0b0010111000100001000100011010110111001100000010110010111000001100";
        ram[16] = "0b0010001000110001001000000000110011000001111011100010110100101011";
        ram[17] = "0b1011001011111100010010110100110111110100000100000101001000110111";
        ram[18] = "0b0001000000011111101100010000001000010010110000011001000001111110";
        ram[19] = "0b1111001000101110001001001111010000010010011110010110111110010000";
        ram[20] = "0b0010001101001111011111011111000011100100010100010111001010010001";
        ram[21] = "0b0011000000110010011100110001001111010100011100100101010111000001";
        ram[22] = "0b1110110000000001001100101001010111011111000000110100110110111011";
        ram[23] = "0b1101001100111101110110101111000100001111111011011010111001111010";


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


SC_MODULE(convDSPOpt_5_convbFp) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbFp_ram* meminst;


SC_CTOR(convDSPOpt_5_convbFp) {
meminst = new convDSPOpt_5_convbFp_ram("convDSPOpt_5_convbFp_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbFp() {
    delete meminst;
}


};//endmodule
#endif
