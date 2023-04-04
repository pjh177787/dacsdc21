// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_1_convdDI_H__
#define __convDSPOpt_1_convdDI_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_1_convdDI_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_1_convdDI_ram) {
        ram[0] = "0b001001110100111010101";
        ram[1] = "0b000111011101100001001";
        ram[2] = "0b001001100011011100000";
        ram[3] = "0b001100101000100011110";
        ram[4] = "0b001000001100111111011";
        ram[5] = "0b000110110111000001111";
        ram[6] = "0b000110110110001011000";
        ram[7] = "0b111001110000101001001";
        ram[8] = "0b000111110110101001001";
        ram[9] = "0b000110011110010010111";
        ram[10] = "0b000011111111101011011";
        ram[11] = "0b010001010101000001010";
        ram[12] = "0b111011101000111001011";
        ram[13] = "0b000110100110000100110";
        ram[14] = "0b010101110110010001000";
        ram[15] = "0b001000101011001000111";
        ram[16] = "0b011010001000100111101";
        ram[17] = "0b110111101101011111001";
        ram[18] = "0b110101010001001001011";
        ram[19] = "0b000000101011011100100";
        ram[20] = "0b000110001111010110110";
        ram[21] = "0b000100101011001011100";
        ram[22] = "0b000100010000111101100";
        ram[23] = "0b000101111010011101000";
        ram[24] = "0b001000010101111100001";
        ram[25] = "0b001111110100111001001";
        ram[26] = "0b001001100010111001101";
        ram[27] = "0b000110110000010100010";
        ram[28] = "0b000101101101010010011";
        ram[29] = "0b010101010010010110010";
        ram[30] = "0b111110110000000111011";
        ram[31] = "0b000111100100110011101";


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


SC_MODULE(convDSPOpt_1_convdDI) {


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


convDSPOpt_1_convdDI_ram* meminst;


SC_CTOR(convDSPOpt_1_convdDI) {
meminst = new convDSPOpt_1_convdDI_ram("convDSPOpt_1_convdDI_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_1_convdDI() {
    delete meminst;
}


};//endmodule
#endif
