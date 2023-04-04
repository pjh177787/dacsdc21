// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_3_convddE_H__
#define __convDSPOpt_3_convddE_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_3_convddE_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 21;
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


   SC_CTOR(convDSPOpt_3_convddE_ram) {
        ram[0] = "0b000111001000000101001";
        ram[1] = "0b000100011111011001010";
        ram[2] = "0b111100111100001010000";
        ram[3] = "0b000100001101100011110";
        ram[4] = "0b000000011001111001011";
        ram[5] = "0b000011111101010011010";
        ram[6] = "0b000101111010001000101";
        ram[7] = "0b001001011010010101000";
        ram[8] = "0b001000101001011010100";
        ram[9] = "0b000101110100101110010";
        ram[10] = "0b000100010111111000111";
        ram[11] = "0b000100100100010000000";
        ram[12] = "0b000110101111111010010";
        ram[13] = "0b000010101110110001001";
        ram[14] = "0b001010001000001011100";
        ram[15] = "0b000000100101101101000";
        ram[16] = "0b000000101100011011100";
        ram[17] = "0b000111010101001111101";
        ram[18] = "0b000000000110110010110";
        ram[19] = "0b010001010010011111110";
        ram[20] = "0b000011111000100110110";
        ram[21] = "0b000011100111010100000";
        ram[22] = "0b000110110001000010001";
        ram[23] = "0b000110110011001101000";
        ram[24] = "0b000100101111111110010";
        ram[25] = "0b000001110111001001001";
        ram[26] = "0b000001100000001101110";
        ram[27] = "0b000100000101100001110";
        ram[28] = "0b000101011010100100111";
        ram[29] = "0b111111000000001011101";
        ram[30] = "0b001101011110010000111";
        ram[31] = "0b000011001001010000011";


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


SC_MODULE(convDSPOpt_3_convddE) {


static const unsigned DataWidth = 21;
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


convDSPOpt_3_convddE_ram* meminst;


SC_CTOR(convDSPOpt_3_convddE) {
meminst = new convDSPOpt_3_convddE_ram("convDSPOpt_3_convddE_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_3_convddE() {
    delete meminst;
}


};//endmodule
#endif
