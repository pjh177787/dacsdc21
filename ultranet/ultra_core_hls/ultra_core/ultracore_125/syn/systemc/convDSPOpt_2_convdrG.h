// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_2_convdrG_H__
#define __convDSPOpt_2_convdrG_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_2_convdrG_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_2_convdrG_ram) {
        ram[0] = "0b01011011011";
        ram[1] = "0b01001000110";
        ram[2] = "0b01011001000";
        ram[3] = "0b01100011011";
        ram[4] = "0b01000000000";
        ram[5] = "0b01000101011";
        ram[6] = "0b01010101110";
        ram[7] = "0b11000010000";
        ram[8] = "0b01010000001";
        ram[9] = "0b01111100100";
        ram[10] = "0b01110001001";
        ram[11] = "0b01000000001";
        ram[12] = "0b01100001100";
        ram[13] = "0b01011000001";
        ram[14] = "0b01011010011";
        ram[15] = "0b00111000011";
        ram[16] = "0b01011101010";
        ram[17] = "0b01000100101";
        ram[18] = "0b00110010101";
        ram[19] = "0b01001000011";
        ram[20] = "0b00110110010";
        ram[21] = "0b01001011100";
        ram[22] = "0b00111100101";
        ram[23] = "0b00101100011";
        ram[24] = "0b01011000010";
        ram[25] = "0b01101110101";
        ram[26] = "0b01000010101";
        ram[27] = "0b01001110010";
        ram[28] = "0b01001010101";
        ram[29] = "0b01010011110";
        ram[30] = "0b01101101110";
        ram[31] = "0b01100100011";


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


SC_MODULE(convDSPOpt_2_convdrG) {


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


convDSPOpt_2_convdrG_ram* meminst;


SC_CTOR(convDSPOpt_2_convdrG) {
meminst = new convDSPOpt_2_convdrG_ram("convDSPOpt_2_convdrG_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_2_convdrG() {
    delete meminst;
}


};//endmodule
#endif
