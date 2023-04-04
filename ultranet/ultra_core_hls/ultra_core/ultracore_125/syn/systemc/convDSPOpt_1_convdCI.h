// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_1_convdCI_H__
#define __convDSPOpt_1_convdCI_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_1_convdCI_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 12;
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


   SC_CTOR(convDSPOpt_1_convdCI_ram) {
        ram[0] = "0b000100010100";
        ram[1] = "0b100001101001";
        ram[2] = "0b010101101001";
        ram[3] = "0b000101101001";
        ram[4] = "0b000110000110";
        ram[5] = "0b000100001101";
        ram[6] = "0b001010001101";
        ram[7] = "0b001011101001";
        ram[8] = "0b001111100111";
        ram[9] = "0b000101111001";
        ram[10] = "0b001101011001";
        ram[11] = "0b010010010001";
        ram[12] = "0b011110101100";
        ram[13] = "0b000101111011";
        ram[14] = "0b010011000001";
        ram[15] = "0b001010011101";
        ram[16] = "0b101000000101";
        ram[17] = "0b011111100101";
        ram[18] = "0b101000101110";
        ram[19] = "0b000101001100";
        ram[20] = "0b000110111111";
        ram[21] = "0b000100100100";
        ram[22] = "0b001000001100";
        ram[23] = "0b000100010100";
        ram[24] = "0b001001100100";
        ram[25] = "0b011101010011";
        ram[26] = "0b000101110101";
        ram[27] = "0b000110100100";
        ram[28] = "0b000110111100";
        ram[29] = "0b101110101000";
        ram[30] = "0b010110101011";
        ram[31] = "0b000110011101";


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


SC_MODULE(convDSPOpt_1_convdCI) {


static const unsigned DataWidth = 12;
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


convDSPOpt_1_convdCI_ram* meminst;


SC_CTOR(convDSPOpt_1_convdCI) {
meminst = new convDSPOpt_1_convdCI_ram("convDSPOpt_1_convdCI_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_1_convdCI() {
    delete meminst;
}


};//endmodule
#endif
