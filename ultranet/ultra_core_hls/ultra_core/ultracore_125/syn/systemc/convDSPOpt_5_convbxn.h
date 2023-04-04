// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbxn_H__
#define __convDSPOpt_5_convbxn_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbxn_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbxn_ram) {
        ram[0] = "0b0001010000110001011011110001111100000001011111110111000110010000";
        ram[1] = "0b1110111011011110111011101111111011111011110001110111101110010001";
        ram[2] = "0b1110111011010010101000100000000100001101100101111111110101110001";
        ram[3] = "0b0001111100111111000011100001111111111111010100100010111100001101";
        ram[4] = "0b0000001101001111111111110100110111110000001100110010001000010010";
        ram[5] = "0b0001000000100000111011110110111000000000010101000110001001010000";
        ram[6] = "0b0011111100000011111100100001001011100010111111001010001000010011";
        ram[7] = "0b1100110010110000110100001100110010011011001011101100110011001011";
        ram[8] = "0b0000001011010000110111110000001110010010011100001010110111100000";
        ram[9] = "0b0110000011000000001101011110110110110100101011000000000100000100";
        ram[10] = "0b0011111111110011010000110000001010010101100100001011001111110100";
        ram[11] = "0b0010010101010000010101000010010110110111110100100000010100010111";
        ram[12] = "0b0000000011010001001111110000111011100010001111100010110100100010";
        ram[13] = "0b0000111010110001111111001111101100101110000111100011000101001111";
        ram[14] = "0b0001111111001111101101100001110000111111110100111001111100001110";
        ram[15] = "0b1101111100001111111011111111000011001111001100000010001011000000";
        ram[16] = "0b1101111011110011001101001101001000011100001000010011111011001101";
        ram[17] = "0b0100000100000000001011111101000000110000000001100001001100110001";
        ram[18] = "0b1110000100101110100111100011000111110001001100111011000101100000";
        ram[19] = "0b1110001001001111001000100011001100000010001110111101000101000010";
        ram[20] = "0b1100001101010000011001000010001100001110100111100101000011011110";
        ram[21] = "0b1111000011100001110011100010010000110010011011010010000011101100";
        ram[22] = "0b1110000000000001111111000100000100110011000011010001001100001100";
        ram[23] = "0b1111110100110000000011100001000001000000101100001111111100001110";


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


SC_MODULE(convDSPOpt_5_convbxn) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbxn_ram* meminst;


SC_CTOR(convDSPOpt_5_convbxn) {
meminst = new convDSPOpt_5_convbxn_ram("convDSPOpt_5_convbxn_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbxn() {
    delete meminst;
}


};//endmodule
#endif
