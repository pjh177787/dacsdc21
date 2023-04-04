// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_3_convdfE_H__
#define __convDSPOpt_3_convdfE_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_3_convdfE_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_3_convdfE_ram) {
        ram[0] = "0b00001111100000101001";
        ram[1] = "0b00010101101100110101";
        ram[2] = "0b01001001011000110100";
        ram[3] = "0b00101111011100010001";
        ram[4] = "0b00111100000101000101";
        ram[5] = "0b11110011101010010111";
        ram[6] = "0b01001110100101010001";
        ram[7] = "0b00100100101000010001";
        ram[8] = "0b00100100111011001111";
        ram[9] = "0b11011001110110011010";
        ram[10] = "0b01000011001010011010";
        ram[11] = "0b00000101111111010110";
        ram[12] = "0b01001000101110101001";
        ram[13] = "0b00110001110111011110";
        ram[14] = "0b01001101010010101011";
        ram[15] = "0b00010001110110010111";
        ram[16] = "0b01011111001101010000";
        ram[17] = "0b00000111110010110110";
        ram[18] = "0b11111111011110110010";
        ram[19] = "0b00110011011111010010";
        ram[20] = "0b00011110001101100010";
        ram[21] = "0b00101010110001011001";
        ram[22] = "0b00000000111111000010";
        ram[23] = "0b00011101010011001100";
        ram[24] = "0b00000111100010101111";
        ram[25] = "0b00111101101110100010";
        ram[26] = "0b00110011010111001111";
        ram[27] = "0b00011011111010010010";
        ram[28] = "0b01001000001000000100";
        ram[29] = "0b11011010110010010010";
        ram[30] = "0b00000100110111101111";
        ram[31] = "0b00110001000010111110";


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


SC_MODULE(convDSPOpt_3_convdfE) {


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


convDSPOpt_3_convdfE_ram* meminst;


SC_CTOR(convDSPOpt_3_convdfE) {
meminst = new convDSPOpt_3_convdfE_ram("convDSPOpt_3_convdfE_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_3_convdfE() {
    delete meminst;
}


};//endmodule
#endif
