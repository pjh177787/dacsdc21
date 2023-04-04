// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_2_convdsG_H__
#define __convDSPOpt_2_convdsG_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_2_convdsG_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 20;
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


   SC_CTOR(convDSPOpt_2_convdsG_ram) {
        ram[0] = "0b01000010101010010011";
        ram[1] = "0b00100011111010010101";
        ram[2] = "0b00101010000110000011";
        ram[3] = "0b11111101111001111000";
        ram[4] = "0b00100001111111101010";
        ram[5] = "0b00101001011000000110";
        ram[6] = "0b01010101110010011110";
        ram[7] = "0b01101100100001111011";
        ram[8] = "0b00011001001100000100";
        ram[9] = "0b11101000111101110101";
        ram[10] = "0b00000100111100111000";
        ram[11] = "0b00000010000101011101";
        ram[12] = "0b00110001001010000101";
        ram[13] = "0b11101110001001011010";
        ram[14] = "0b00010111101110111110";
        ram[15] = "0b00011100110101100001";
        ram[16] = "0b00010110010001101110";
        ram[17] = "0b00011100101100100100";
        ram[18] = "0b00101000100111100110";
        ram[19] = "0b00110000010000000001";
        ram[20] = "0b11110111100001100110";
        ram[21] = "0b00001111100010101010";
        ram[22] = "0b00101000100010011001";
        ram[23] = "0b00110101111000100000";
        ram[24] = "0b00110000111011111011";
        ram[25] = "0b00100110011011101011";
        ram[26] = "0b11110101010001101011";
        ram[27] = "0b00100111000100001101";
        ram[28] = "0b00011101001000000011";
        ram[29] = "0b00001110001100000111";
        ram[30] = "0b00010011001100110111";
        ram[31] = "0b00010100001011001101";


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


SC_MODULE(convDSPOpt_2_convdsG) {


static const unsigned DataWidth = 20;
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


convDSPOpt_2_convdsG_ram* meminst;


SC_CTOR(convDSPOpt_2_convdsG) {
meminst = new convDSPOpt_2_convdsG_ram("convDSPOpt_2_convdsG_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_2_convdsG() {
    delete meminst;
}


};//endmodule
#endif
