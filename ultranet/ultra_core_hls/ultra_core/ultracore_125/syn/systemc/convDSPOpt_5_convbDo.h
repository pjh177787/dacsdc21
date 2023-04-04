// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbDo_H__
#define __convDSPOpt_5_convbDo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbDo_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbDo_ram) {
        ram[0] = "0b1111111111010010111011111101110000000000110011001011110100100001";
        ram[1] = "0b1011110110110010001010101110110010011110101110101010111001000001";
        ram[2] = "0b1111000100000001010110100000111010010001100110101010010101100011";
        ram[3] = "0b0001111000101110110110110010111000011101010100100010000101001110";
        ram[4] = "0b0001110100010001111101011111110000101101110111110000111110111100";
        ram[5] = "0b0110111011110010111001110000111011110010110000001011001110100001";
        ram[6] = "0b0100110111001101100111010000010011101111101111001001111011100001";
        ram[7] = "0b1100001011001100001101111111001011100000111011110010101111100100";
        ram[8] = "0b0000111000011111010110101111001000100010111111000110111011010101";
        ram[9] = "0b0010110111101111000000110000001110100000000100001101001100001110";
        ram[10] = "0b1001111111011110000101110001001110101011011011110001111000001101";
        ram[11] = "0b1100101111010001001011011111111011001011000000010111101100111111";
        ram[12] = "0b1110001011110000111011100110000011100001001000110011001001000110";
        ram[13] = "0b0001000000001111001011110101110010111111000111010000111000110110";
        ram[14] = "0b1110000100001110111000110001110011000010000111101110010000110000";
        ram[15] = "0b1100101110110010101100011001001001001001110011001010100111011001";
        ram[16] = "0b0000111000101111111111101101011000111101001000100100110000001010";
        ram[17] = "0b0111000011101111001000000010000100110011000001000001001100110011";
        ram[18] = "0b0000000000000001001011110001111111110000111111000000000000101101";
        ram[19] = "0b0111000111011110110001100000111011101101000011111010001110101111";
        ram[20] = "0b0111001111101011110001110010111100001101000111101110001111001101";
        ram[21] = "0b1110111100011110010101111111111100110000000100010111000111111100";
        ram[22] = "0b1101000000100001010100000001001011111111011000000111111111001111";
        ram[23] = "0b0110111100110001101011110001111101001110000101110000000110011110";


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


SC_MODULE(convDSPOpt_5_convbDo) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbDo_ram* meminst;


SC_CTOR(convDSPOpt_5_convbDo) {
meminst = new convDSPOpt_5_convbDo_ram("convDSPOpt_5_convbDo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbDo() {
    delete meminst;
}


};//endmodule
#endif
