// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_5_convbAo_H__
#define __convDSPOpt_5_convbAo_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_5_convbAo_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 63;
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


   SC_CTOR(convDSPOpt_5_convbAo_ram) {
        ram[0] = "0b001010000110000000111100100110101010011011100110100001101110011";
        ram[1] = "0b011001011111110001010100010100100010100011011110000001000100110";
        ram[2] = "0b001101100000010110000011110111000101101100111101001101110101111";
        ram[3] = "0b001000100000000001111110000000000010001110100101101001000101111";
        ram[4] = "0b101000100001111111000010000111100000011100100010111001000010000";
        ram[5] = "0b001000000110000101000000010111011011111001000001111000100000000";
        ram[6] = "0b001001000101110110000010000001000101110110011101001110100010000";
        ram[7] = "0b110001000011101101011000000000100100000000011101001111100110000";
        ram[8] = "0b111000100101110000000000000000000101111111011101001111100100000";
        ram[9] = "0b100010000111101000000110010111000000101001000000001001111010110";
        ram[10] = "0b001111000110001111011101101101111011101110000011110101111110001";
        ram[11] = "0b000101111010001110111101001101111101010101100001101101000101001";
        ram[12] = "0b101000011110011000010011111111111101011110000010000110111011111";
        ram[13] = "0b010000000011110000111101111000000011111110000000001001101001101";
        ram[14] = "0b011000000001110001001110011000100010000001000110011001111111110";
        ram[15] = "0b010111000011101111000101111001001011100001111011111111010101101";
        ram[16] = "0b000110111111101110011011111111100111011001111010100110110011101";
        ram[17] = "0b010101110101101101010111110000100001010010100100010101010011101";
        ram[18] = "0b010000111100000101100011111110000010010110111101110000001000000";
        ram[19] = "0b011000011010001010000110000111111100010010101000001001100101111";
        ram[20] = "0b011111011000010001100000001110100000101010111100000011011101101";
        ram[21] = "0b111110100001111101011101110101110100000001011011110001110101101";
        ram[22] = "0b101110100010001111000001011101011001110001011011100000110101100";
        ram[23] = "0b101110111010100110111101100110100010010000000001100111111101111";


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


SC_MODULE(convDSPOpt_5_convbAo) {


static const unsigned DataWidth = 63;
static const unsigned AddressRange = 24;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_5_convbAo_ram* meminst;


SC_CTOR(convDSPOpt_5_convbAo) {
meminst = new convDSPOpt_5_convbAo_ram("convDSPOpt_5_convbAo_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_5_convbAo() {
    delete meminst;
}


};//endmodule
#endif
