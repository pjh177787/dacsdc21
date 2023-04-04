// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_1_convdFJ_H__
#define __convDSPOpt_1_convdFJ_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_1_convdFJ_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 22;
  static const unsigned AddressRange = 32;
  static const unsigned AddressWidth = 5;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(convDSPOpt_1_convdFJ_ram) {
        ram[0] = "0b1111101100010111111001";
        ram[1] = "0b1111101000111001110110";
        ram[2] = "0b0000110100111101011011";
        ram[3] = "0b0000101010011010010101";
        ram[4] = "0b0000001100110100001011";
        ram[5] = "0b1101101100001100010011";
        ram[6] = "0b0100011000111010000110";
        ram[7] = "0b0011101101110101011010";
        ram[8] = "0b0000101110111011001010";
        ram[9] = "0b0001010010101110001000";
        ram[10] = "0b0001011011111111110100";
        ram[11] = "0b0001000100000010011000";
        ram[12] = "0b0000111000101001101100";
        ram[13] = "0b0000100101001010001011";
        ram[14] = "0b1110010001110011010110";
        ram[15] = "0b0000100111011011010010";
        ram[16] = "0b0000111001111110001001";
        ram[17] = "0b0010101011010001010110";
        ram[18] = "0b1111101110110010000011";
        ram[19] = "0b0001010000011010000001";
        ram[20] = "0b0011001001111110001111";
        ram[21] = "0b0101010000111011110001";
        ram[22] = "0b0001100010011000101111";
        ram[23] = "0b1110100011101000101111";
        ram[24] = "0b0000110111110110110111";
        ram[25] = "0b0010010010100000100001";
        ram[26] = "0b0011001101111001001111";
        ram[27] = "0b0000101011110100000101";
        ram[28] = "0b0001010110011110010011";
        ram[29] = "0b0000110011011000000110";
        ram[30] = "0b0001001100111001000100";
        ram[31] = "0b0000011010001111011100";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
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


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(convDSPOpt_1_convdFJ) {


static const unsigned DataWidth = 22;
static const unsigned AddressRange = 32;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_1_convdFJ_ram* meminst;


SC_CTOR(convDSPOpt_1_convdFJ) {
meminst = new convDSPOpt_1_convdFJ_ram("convDSPOpt_1_convdFJ_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_1_convdFJ() {
    delete meminst;
}


};//endmodule
#endif
