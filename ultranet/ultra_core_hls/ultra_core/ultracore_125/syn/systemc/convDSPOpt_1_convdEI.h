// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_1_convdEI_H__
#define __convDSPOpt_1_convdEI_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_1_convdEI_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_1_convdEI_ram) {
        ram[0] = "0b001110001110";
        ram[1] = "0b001111100111";
        ram[2] = "0b100000011100";
        ram[3] = "0b100000101010";
        ram[4] = "0b001010101100";
        ram[5] = "0b100101111101";
        ram[6] = "0b101110111111";
        ram[7] = "0b011110011001";
        ram[8] = "0b000100111111";
        ram[9] = "0b000110100011";
        ram[10] = "0b001000111000";
        ram[11] = "0b001011101110";
        ram[12] = "0b000100000110";
        ram[13] = "0b000101100110";
        ram[14] = "0b011110110011";
        ram[15] = "0b000101100100";
        ram[16] = "0b001000010111";
        ram[17] = "0b110001000100";
        ram[18] = "0b010010101011";
        ram[19] = "0b010100000001";
        ram[20] = "0b011100100001";
        ram[21] = "0b101101110111";
        ram[22] = "0b000100101100";
        ram[23] = "0b101111110111";
        ram[24] = "0b000111100100";
        ram[25] = "0b100010111010";
        ram[26] = "0b100000100010";
        ram[27] = "0b000101101110";
        ram[28] = "0b000110100000";
        ram[29] = "0b000111000000";
        ram[30] = "0b010011010000";
        ram[31] = "0b000101010110";


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


SC_MODULE(convDSPOpt_1_convdEI) {


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


convDSPOpt_1_convdEI_ram* meminst;


SC_CTOR(convDSPOpt_1_convdEI) {
meminst = new convDSPOpt_1_convdEI_ram("convDSPOpt_1_convdEI_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_1_convdEI() {
    delete meminst;
}


};//endmodule
#endif
