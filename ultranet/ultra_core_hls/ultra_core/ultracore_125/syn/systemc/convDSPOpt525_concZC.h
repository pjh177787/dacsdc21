// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt525_concZC_H__
#define __convDSPOpt525_concZC_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt525_concZC_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt525_concZC_ram) {
        ram[0] = "0b00011101010110110000";
        ram[1] = "0b00001000111001001000";
        ram[2] = "0b00010001110101000101";
        ram[3] = "0b00010001110101001111";
        ram[4] = "0b00001100000001000010";
        ram[5] = "0b00110011010100111000";
        ram[6] = "0b11110101000111101000";
        ram[7] = "0b00110011000001110100";
        ram[8] = "0b00100110001111111111";
        ram[9] = "0b11111110101110011111";
        ram[10] = "0b00010101010111001011";
        ram[11] = "0b00011110100000100100";
        ram[12] = "0b11110110101001000101";
        ram[13] = "0b11110010000100101001";
        ram[14] = "0b01001000111000100111";
        ram[15] = "0b00101100101101011100";
        ram[16] = "0b00110100000011101001";
        ram[17] = "0b00001001101000100100";
        ram[18] = "0b00010010111010000010";
        ram[19] = "0b00110110110100000000";
        ram[20] = "0b00011000101101100000";
        ram[21] = "0b00001011001011111100";
        ram[22] = "0b00101111110010100010";
        ram[23] = "0b00110001110110100000";
        ram[24] = "0b11111111101101010011";
        ram[25] = "0b00110101100011000001";
        ram[26] = "0b00011011011011000111";
        ram[27] = "0b11111110000011110001";
        ram[28] = "0b00000100000110000010";
        ram[29] = "0b00100111111110100101";
        ram[30] = "0b00110010010010010101";
        ram[31] = "0b11010010101011000100";


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


SC_MODULE(convDSPOpt525_concZC) {


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


convDSPOpt525_concZC_ram* meminst;


SC_CTOR(convDSPOpt525_concZC) {
meminst = new convDSPOpt525_concZC_ram("convDSPOpt525_concZC_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt525_concZC() {
    delete meminst;
}


};//endmodule
#endif
