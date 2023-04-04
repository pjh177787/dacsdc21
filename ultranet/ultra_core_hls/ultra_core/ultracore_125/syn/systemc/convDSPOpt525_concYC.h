// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt525_concYC_H__
#define __convDSPOpt525_concYC_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt525_concYC_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 11;
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


   SC_CTOR(convDSPOpt525_concYC_ram) {
        ram[0] = "0b10000010111";
        ram[1] = "0b01100000111";
        ram[2] = "0b01010000000";
        ram[3] = "0b01010110101";
        ram[4] = "0b01000100010";
        ram[5] = "0b01101111000";
        ram[6] = "0b01100101100";
        ram[7] = "0b01010111110";
        ram[8] = "0b00111111111";
        ram[9] = "0b01100011000";
        ram[10] = "0b01010110100";
        ram[11] = "0b01001110000";
        ram[12] = "0b01011011111";
        ram[13] = "0b01100011000";
        ram[14] = "0b01011111110";
        ram[15] = "0b01000000001";
        ram[16] = "0b01000000011";
        ram[17] = "0b01001011011";
        ram[18] = "0b01001000100";
        ram[19] = "0b01101001101";
        ram[20] = "0b01101100010";
        ram[21] = "0b01010000101";
        ram[22] = "0b01001001101";
        ram[23] = "0b10001011101";
        ram[24] = "0b01011101001";
        ram[25] = "0b11000111010";
        ram[26] = "0b01001000000";
        ram[27] = "0b01001110101";
        ram[28] = "0b01001000010";
        ram[29] = "0b01010000100";
        ram[30] = "0b01111011000";
        ram[31] = "0b10000010010";


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


SC_MODULE(convDSPOpt525_concYC) {


static const unsigned DataWidth = 11;
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


convDSPOpt525_concYC_ram* meminst;


SC_CTOR(convDSPOpt525_concYC) {
meminst = new convDSPOpt525_concYC_ram("convDSPOpt525_concYC_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt525_concYC() {
    delete meminst;
}


};//endmodule
#endif
