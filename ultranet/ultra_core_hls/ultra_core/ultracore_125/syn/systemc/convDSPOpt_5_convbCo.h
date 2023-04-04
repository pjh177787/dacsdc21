// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbCo_H__
#define __convDSPOpt_5_convbCo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbCo_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbCo_ram) {
        ram[0] = "0b1011111010110000010111011110111010010001101110110100000001000010";
        ram[1] = "0b0000000011001111001110010001111010110000000010100100001100000011";
        ram[2] = "0b0011010101001101010100110010110000000101010000000100011001010110";
        ram[3] = "0b0000111011011100000010011110000011001111001101011111110110100000";
        ram[4] = "0b0000110011001101111101011110110100011101111000001110110110111110";
        ram[5] = "0b0111111100011111110101110001111100100101101111101100010110010010";
        ram[6] = "0b0101110100001110101111110001001101111110000111101011110011000001";
        ram[7] = "0b1101000100111110010001000000001100110001010000010111000110010010";
        ram[8] = "0b1101111100000000010011001101001100000100010111110110010010100010";
        ram[9] = "0b0111000100011110000010101111110001100100101100010000001110100101";
        ram[10] = "0b0111001101111111100101100111001011110010000011111001010101000011";
        ram[11] = "0b1010111100101101010101110001011011011101011111011101110100011101";
        ram[12] = "0b1101001100110000000000010111001100100001111100011110111111100101";
        ram[13] = "0b0010000000001111011100100111001101101110000001000010111010110111";
        ram[14] = "0b0000000100011110010100000111001101011110111100001010000011100110";
        ram[15] = "0b1100101011000000110000001001000000111001111011001011101011111001";
        ram[16] = "0b1110111000111110111100001010010000111011010011000001111011011001";
        ram[17] = "0b0111001100101111001010100011000101010100111000110000000000110110";
        ram[18] = "0b0000111100010010001011110001001000010100111000010000001000110001";
        ram[19] = "0b0011000111111110111111100011001100110110110000111010101110110111";
        ram[20] = "0b1101000011111100000010110000001000000111110001110010101111100111";
        ram[21] = "0b1101111100001111011100000001111011111111110010100110001000010010";
        ram[22] = "0b1100000000010001010100110011110111100010011100010011000111101111";
        ram[23] = "0b0110001011101111110000100011000000010100010001001010001110010010";


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


SC_MODULE(convDSPOpt_5_convbCo) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbCo_ram* meminst;


SC_CTOR(convDSPOpt_5_convbCo) {
meminst = new convDSPOpt_5_convbCo_ram("convDSPOpt_5_convbCo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbCo() {
    delete meminst;
}


};//endmodule
#endif
