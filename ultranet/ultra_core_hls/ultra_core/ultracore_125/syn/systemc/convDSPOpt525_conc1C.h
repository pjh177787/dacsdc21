// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt525_conc1C_H__
#define __convDSPOpt525_conc1C_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt525_conc1C_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt525_conc1C_ram) {
        ram[0] = "0b00011011011101011101";
        ram[1] = "0b00001101011010100000";
        ram[2] = "0b00001001110111010010";
        ram[3] = "0b00000111011100101110";
        ram[4] = "0b00011100000010110000";
        ram[5] = "0b11110001101010101010";
        ram[6] = "0b11111011100101011000";
        ram[7] = "0b00010010100010011110";
        ram[8] = "0b11110001001010110011";
        ram[9] = "0b00000111010101101010";
        ram[10] = "0b11001101010000011110";
        ram[11] = "0b11111110000010010101";
        ram[12] = "0b00011010011000110000";
        ram[13] = "0b00011000010011111000";
        ram[14] = "0b00000001011010110111";
        ram[15] = "0b11110001001110011110";
        ram[16] = "0b00000000101011101001";
        ram[17] = "0b00100001011100101100";
        ram[18] = "0b01010010010111001101";
        ram[19] = "0b00001011110101110001";
        ram[20] = "0b00000000100101011100";
        ram[21] = "0b00011001000000010110";
        ram[22] = "0b00000000000010101011";
        ram[23] = "0b00011000010101111101";
        ram[24] = "0b00011001110110110111";
        ram[25] = "0b00100110101001100000";
        ram[26] = "0b11101111110001001010";
        ram[27] = "0b00110111000001111000";
        ram[28] = "0b00001011110010110010";
        ram[29] = "0b00000000101000011001";
        ram[30] = "0b00000111001101001011";
        ram[31] = "0b00011101101000111110";


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


SC_MODULE(convDSPOpt525_conc1C) {


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


convDSPOpt525_conc1C_ram* meminst;


SC_CTOR(convDSPOpt525_conc1C) {
meminst = new convDSPOpt525_conc1C_ram("convDSPOpt525_conc1C_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt525_conc1C() {
    delete meminst;
}


};//endmodule
#endif
