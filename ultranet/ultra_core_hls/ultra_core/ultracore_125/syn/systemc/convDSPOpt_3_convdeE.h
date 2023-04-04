// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_3_convdeE_H__
#define __convDSPOpt_3_convdeE_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_3_convdeE_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_3_convdeE_ram) {
        ram[0] = "0b1000000100";
        ram[1] = "0b1001010011";
        ram[2] = "0b1011001010";
        ram[3] = "0b1010111100";
        ram[4] = "0b0111001110";
        ram[5] = "0b1000010011";
        ram[6] = "0b1100101000";
        ram[7] = "0b0111111100";
        ram[8] = "0b1001111110";
        ram[9] = "0b0110010110";
        ram[10] = "0b1010000010";
        ram[11] = "0b1011101111";
        ram[12] = "0b1110100100";
        ram[13] = "0b0111101101";
        ram[14] = "0b1011000110";
        ram[15] = "0b1001001110";
        ram[16] = "0b1011111111";
        ram[17] = "0b1010100111";
        ram[18] = "0b1001001011";
        ram[19] = "0b1010010000";
        ram[20] = "0b1001011000";
        ram[21] = "0b1100101011";
        ram[22] = "0b1001001000";
        ram[23] = "0b1000010110";
        ram[24] = "0b1001010111";
        ram[25] = "0b1100010110";
        ram[26] = "0b1011000100";
        ram[27] = "0b0111111000";
        ram[28] = "0b1001101101";
        ram[29] = "0b0110110000";
        ram[30] = "0b1000010011";
        ram[31] = "0b1010100000";


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


SC_MODULE(convDSPOpt_3_convdeE) {


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


convDSPOpt_3_convdeE_ram* meminst;


SC_CTOR(convDSPOpt_3_convdeE) {
meminst = new convDSPOpt_3_convdeE_ram("convDSPOpt_3_convdeE_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_3_convdeE() {
    delete meminst;
}


};//endmodule
#endif
