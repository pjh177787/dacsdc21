// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbBo_H__
#define __convDSPOpt_5_convbBo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbBo_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_5_convbBo_ram) {
        ram[0] = "0b0010111111000000001100110000000100001111011101000110001010100001";
        ram[1] = "0b0111010100011101101001010101111101001110011101111101000110010001";
        ram[2] = "0b0100010100111110101101100010010100010001011101010011001110010011";
        ram[3] = "0b0010000011111101111011011110001111110000001101000011110011110001";
        ram[4] = "0b0000111111101111001101011110000100111110010011100001101101100100";
        ram[5] = "0b0111110011111111010001001110000000111101110011111110111100110010";
        ram[6] = "0b1111110011111111101000000000000111101100001011111001110100011110";
        ram[7] = "0b1110111011111111111011000001001100011110101100101100000110111111";
        ram[8] = "0b0001111011100001101100001111011100101111101011011101000100001110";
        ram[9] = "0b1011001011111101001111101011110011011110111111110010101111101101";
        ram[10] = "0b0111001011001011111010011110101001000110100100100000111110110111";
        ram[11] = "0b0110101111110001111111000010111111101100111100000011111100110001";
        ram[12] = "0b1111000100000001110100100110110100001101000100000010111011010011";
        ram[13] = "0b0001111111101110110000100111000000011101110111010000110111110101";
        ram[14] = "0b1111000011111101101100010011110100001111000000001110000111010111";
        ram[15] = "0b1111111011000011111100011010000000011010000011110010101111111011";
        ram[16] = "0b1110001000101110001011111011000111111110000111110000111111011011";
        ram[17] = "0b0011010000111100001011001110010100010011001111100010111100111111";
        ram[18] = "0b1110110111110011110111101110110100001110001011111111110000101101";
        ram[19] = "0b1111101111010010000011001110101111111011001111100010101000110000";
        ram[20] = "0b1100101010111101000011011101111111011010010000010100101000101101";
        ram[21] = "0b0100000011010001110101010000000111110000100111011001001100000001";
        ram[22] = "0b0000111111110000110000111111111011100010101110101001111001000000";
        ram[23] = "0b1110000111110001110011010100110111110101111111101001001110110100";


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


SC_MODULE(convDSPOpt_5_convbBo) {


static const unsigned DataWidth = 64;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbBo_ram* meminst;


SC_CTOR(convDSPOpt_5_convbBo) {
meminst = new convDSPOpt_5_convbBo_ram("convDSPOpt_5_convbBo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbBo() {
    delete meminst;
}


};//endmodule
#endif
