// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_2_convdqG_H__
#define __convDSPOpt_2_convdqG_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_2_convdqG_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_2_convdqG_ram) {
        ram[0] = "0b00100101010001101011";
        ram[1] = "0b00100001010000001010";
        ram[2] = "0b00000111101111110011";
        ram[3] = "0b00110111100101011000";
        ram[4] = "0b00100111000100101001";
        ram[5] = "0b01001000011111101010";
        ram[6] = "0b00010111000000011000";
        ram[7] = "0b00101111111101100000";
        ram[8] = "0b00111001001001111011";
        ram[9] = "0b00011010101110001000";
        ram[10] = "0b11111100000001001011";
        ram[11] = "0b00011011001001011101";
        ram[12] = "0b00001101111100101011";
        ram[13] = "0b00000011110110100101";
        ram[14] = "0b00011100010010011011";
        ram[15] = "0b00001000000010011110";
        ram[16] = "0b00011010000001011101";
        ram[17] = "0b11110111011101010101";
        ram[18] = "0b00110101101001000011";
        ram[19] = "0b00100111010110111011";
        ram[20] = "0b00101101001111111111";
        ram[21] = "0b00110000100000100001";
        ram[22] = "0b00010101100000010010";
        ram[23] = "0b00101001011111010111";
        ram[24] = "0b00101110011000100001";
        ram[25] = "0b00011101011111111001";
        ram[26] = "0b00011101111111000101";
        ram[27] = "0b00101111000110011110";
        ram[28] = "0b00010010010111100011";
        ram[29] = "0b00101100101011110100";
        ram[30] = "0b00000010011000110111";
        ram[31] = "0b00000000100011000100";


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


SC_MODULE(convDSPOpt_2_convdqG) {


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


convDSPOpt_2_convdqG_ram* meminst;


SC_CTOR(convDSPOpt_2_convdqG) {
meminst = new convDSPOpt_2_convdqG_ram("convDSPOpt_2_convdqG_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_2_convdqG() {
    delete meminst;
}


};//endmodule
#endif
