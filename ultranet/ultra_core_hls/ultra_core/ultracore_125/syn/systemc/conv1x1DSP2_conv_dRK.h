// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __conv1x1DSP2_conv_dRK_H__
#define __conv1x1DSP2_conv_dRK_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv1x1DSP2_conv_dRK_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
  static const unsigned AddressRange = 18;
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


   SC_CTOR(conv1x1DSP2_conv_dRK_ram) {
        ram[0] = "0b0000011011101";
        ram[1] = "0b1101110011110";
        ram[2] = "0b0101110111111";
        ram[3] = "0b0000011011110";
        ram[4] = "0b1101110011110";
        ram[5] = "0b0101111000011";
        ram[6] = "0b0000011011110";
        ram[7] = "0b1101110011101";
        ram[8] = "0b0101111000010";
        ram[9] = "0b0000011011111";
        ram[10] = "0b1101110011101";
        ram[11] = "0b0101111000101";
        ram[12] = "0b0000011011110";
        ram[13] = "0b1101110011101";
        ram[14] = "0b0101111000101";
        ram[15] = "0b0000011011110";
        ram[16] = "0b1101110011101";
        ram[17] = "0b0101111000100";


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


SC_MODULE(conv1x1DSP2_conv_dRK) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 18;
static const unsigned AddressWidth = 5;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv1x1DSP2_conv_dRK_ram* meminst;


SC_CTOR(conv1x1DSP2_conv_dRK) {
meminst = new conv1x1DSP2_conv_dRK_ram("conv1x1DSP2_conv_dRK_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~conv1x1DSP2_conv_dRK() {
    delete meminst;
}


};//endmodule
#endif
