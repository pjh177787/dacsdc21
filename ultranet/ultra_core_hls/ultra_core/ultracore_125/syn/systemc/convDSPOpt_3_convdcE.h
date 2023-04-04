// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_3_convdcE_H__
#define __convDSPOpt_3_convdcE_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_3_convdcE_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
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


   SC_CTOR(convDSPOpt_3_convdcE_ram) {
        ram[0] = "0b1001011001";
        ram[1] = "0b0111001100";
        ram[2] = "0b0111011000";
        ram[3] = "0b1100011010";
        ram[4] = "0b1000100100";
        ram[5] = "0b1100111111";
        ram[6] = "0b1010111101";
        ram[7] = "0b0111110001";
        ram[8] = "0b1100110110";
        ram[9] = "0b1000101101";
        ram[10] = "0b1001000011";
        ram[11] = "0b1000010000";
        ram[12] = "0b0111011011";
        ram[13] = "0b1001010011";
        ram[14] = "0b1101111011";
        ram[15] = "0b1001001111";
        ram[16] = "0b1001010101";
        ram[17] = "0b1000101000";
        ram[18] = "0b1011111111";
        ram[19] = "0b1110110011";
        ram[20] = "0b1010011101";
        ram[21] = "0b1010111001";
        ram[22] = "0b1011101111";
        ram[23] = "0b1110100101";
        ram[24] = "0b1001010011";
        ram[25] = "0b0111010010";
        ram[26] = "0b0111010011";
        ram[27] = "0b1010111001";
        ram[28] = "0b1001110110";
        ram[29] = "0b0111110101";
        ram[30] = "0b1010101101";
        ram[31] = "0b0111100110";


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


SC_MODULE(convDSPOpt_3_convdcE) {


static const unsigned DataWidth = 10;
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


convDSPOpt_3_convdcE_ram* meminst;


SC_CTOR(convDSPOpt_3_convdcE) {
meminst = new convDSPOpt_3_convdcE_ram("convDSPOpt_3_convdcE_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_3_convdcE() {
    delete meminst;
}


};//endmodule
#endif
