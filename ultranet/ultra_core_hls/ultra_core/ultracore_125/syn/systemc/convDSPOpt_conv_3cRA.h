// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_conv_3cRA_H__
#define __convDSPOpt_conv_3cRA_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_conv_3cRA_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 384;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(convDSPOpt_conv_3cRA_ram) {
        ram[0] = "0b00111100001011100000001000110101";
        ram[1] = "0b00101110111011000010110100110001";
        ram[2] = "0b00011110111111010011011011111111";
        ram[3] = "0b11010001111000001111111010010000";
        ram[4] = "0b01001101000100100000001011111111";
        ram[5] = "0b11110000010100101111111100010001";
        ram[6] = "0b11110010000100001111111111111100";
        ram[7] = "0b11000001110100011110000111100000";
        ram[8] = "0b00101100001000001110000111011111";
        ram[9] = "0b00001111101000000011000100011110";
        ram[10] = "0b00100011000100100011001100011011";
        ram[11] = "0b11101111110101001011110110110001";
        ram[12] = "0b01010000010011110000001000100011";
        ram[13] = "0b00100100000100000000000101000010";
        ram[14] = "0b11011101000100001110001001011110";
        ram[15] = "0b11010010111100010001110100010000";
        ram[16] = "0b00111100001100111110001011111111";
        ram[17] = "0b00100001000100011111001111100001";
        ram[18] = "0b11010011010100000101110101000000";
        ram[19] = "0b00101110000001000000000011010001";
        ram[20] = "0b00011010011100001111111100100110";
        ram[21] = "0b00110010101111001111000011100100";
        ram[22] = "0b11101100101000110011000101111110";
        ram[23] = "0b00010100011011100001010000000001";
        ram[24] = "0b11101100001100011110111111110000";
        ram[25] = "0b00010000000100001111001011111100";
        ram[26] = "0b11011111000100100001000000010000";
        ram[27] = "0b11110001000000000000000101101110";
        ram[28] = "0b00010001001000110000110011100001";
        ram[29] = "0b11101111111100010000000011110001";
        ram[30] = "0b00001110000100100001001000100010";
        ram[31] = "0b00101111111100000000000111111100";
        ram[32] = "0b11100110110011001101001100001110";
        ram[33] = "0b00110110111000001110110001001110";
        ram[34] = "0b00110010111011101110111100111001";
        ram[35] = "0b00101111000011011111001111011011";
        ram[36] = "0b11111111110100001110011110011100";
        ram[37] = "0b00001100000000000010111111110000";
        ram[38] = "0b11011101000011110010000011110000";
        ram[39] = "0b11111011000100101101000001110010";
        ram[40] = "0b00010000111100001101010011110000";
        ram[41] = "0b11101010111000110001110011000110";
        ram[42] = "0b11111111011100000000101010100101";
        ram[43] = "0b00101110001011100110111111010101";
        ram[44] = "0b11101001001100111111010101000010";
        ram[45] = "0b00110100000011001111000011100011";
        ram[46] = "0b00010001001111101111111000111011";
        ram[47] = "0b11010000000111110010000001001111";
        ram[48] = "0b00100000111100011111010001001100";
        ram[49] = "0b10110100001100101001010100101101";
        ram[50] = "0b00010110110100000000000100111101";
        ram[51] = "0b11111110000011101101010010010111";
        ram[52] = "0b00001101001001011111001000010001";
        ram[53] = "0b11000111101010011100001111010001";
        ram[54] = "0b00011101011011011111000100100101";
        ram[55] = "0b00010101000111101101111000011001";
        ram[56] = "0b00110001101111100000010100110111";
        ram[57] = "0b10111100111000001011011100010000";
        ram[58] = "0b00100101101011001101111100100000";
        ram[59] = "0b00100010000011001101010010110011";
        ram[60] = "0b11011001110100010011011011110010";
        ram[61] = "0b00010111101010011011101110110111";
        ram[62] = "0b00110010010001111111111000000101";
        ram[63] = "0b00100111011100001110101011111100";
        ram[64] = "0b00001101111100010001010000011100";
        ram[65] = "0b11011011001100011101000000011111";
        ram[66] = "0b00110000001000100000101101111111";
        ram[67] = "0b11111110001000001100000000001101";
        ram[68] = "0b00011010000011011111000100101100";
        ram[69] = "0b01111010111011001111001100001111";
        ram[70] = "0b00010000111100110100110110010010";
        ram[71] = "0b00010000111100101010101100000001";
        ram[72] = "0b00011111111010110010101011111110";
        ram[73] = "0b00110000000011111111000001111110";
        ram[74] = "0b00100001000011010010111000011110";
        ram[75] = "0b11001110000100001111010011011100";
        ram[76] = "0b00011111001010101111011110111011";
        ram[77] = "0b11110110001100010010110000000010";
        ram[78] = "0b11111110110000010010000011110000";
        ram[79] = "0b01011011110100011111111100101100";
        ram[80] = "0b00101111111100110001110100001010";
        ram[81] = "0b00011101111111110010000011100010";
        ram[82] = "0b00010000000111011101100111010101";
        ram[83] = "0b11101111111000111111010111101101";
        ram[84] = "0b11100001001011100000011000011100";
        ram[85] = "0b11110111110111101010110100100110";
        ram[86] = "0b11100001000010111101110111111110";
        ram[87] = "0b00111010101000010001101100000000";
        ram[88] = "0b11111100111011010001111000011111";
        ram[89] = "0b00001101000100001011110111101100";
        ram[90] = "0b00100000000111100000000000001110";
        ram[91] = "0b00010001000000000001001100111101";
        ram[92] = "0b11111111000000010001000001001110";
        ram[93] = "0b11111010111111111101001000110001";
        ram[94] = "0b00010000111111010001111100101100";
        ram[95] = "0b11110000111100001111000000000001";
        ram[96] = "0b11101110110000001001110010101111";
        ram[97] = "0b00001011101000101001010100111001";
        ram[98] = "0b11001111110010011110101100101101";
        ram[99] = "0b00010010001111010001001111111111";
        ram[100] = "0b01001100110010101101110011100111";
        ram[101] = "0b00111111110100010101001111110001";
        ram[102] = "0b11111101000011100011010011111111";
        ram[103] = "0b11100010110100101110110110110000";
        ram[104] = "0b00010010111011111100110111010001";
        ram[105] = "0b00000001100111101101111100001101";
        ram[106] = "0b11111111010111011100110100100101";
        ram[107] = "0b11110000000111000001010000111110";
        ram[108] = "0b00001111000100010000110111000011";
        ram[109] = "0b00100001111011010100000000101110";
        ram[110] = "0b11011100111000010100111100010111";
        ram[111] = "0b11011111000000100001101010111110";
        ram[112] = "0b11011110110111111100111100010000";
        ram[113] = "0b00011101110000001111110111110000";
        ram[114] = "0b00001101000111101010001101011111";
        ram[115] = "0b11011110000011111111001000010011";
        ram[116] = "0b00011111000011111101000010100000";
        ram[117] = "0b11100001010110110000111111101101";
        ram[118] = "0b00010001110100101011001100010011";
        ram[119] = "0b11011110111100010001101010110010";
        ram[120] = "0b00001101110111100000110111100001";
        ram[121] = "0b00000011110111011101111011110000";
        ram[122] = "0b00011111111011111011011000011111";
        ram[123] = "0b00011111000011111111010011101111";
        ram[124] = "0b11111101110101001111000111100010";
        ram[125] = "0b11001110000100000100001111101111";
        ram[126] = "0b11101110111111111100110011101100";
        ram[127] = "0b11101100000011101110000011110000";
        ram[128] = "0b11000010111111110101111011001111";
        ram[129] = "0b11100011000111111110111000010000";
        ram[130] = "0b00011111110100010010001100001110";
        ram[131] = "0b01011101010000010010010011101111";
        ram[132] = "0b11100001111100011111010000101100";
        ram[133] = "0b11001100011000100101001100001110";
        ram[134] = "0b00111111111111101100110011011111";
        ram[135] = "0b11001111000111110011110111011110";
        ram[136] = "0b11100100000011110010010011110001";
        ram[137] = "0b00101111111011110000000111100011";
        ram[138] = "0b11011100110000010000110111111101";
        ram[139] = "0b01111110111000000110110111100001";
        ram[140] = "0b00100011111000010011011111110001";
        ram[141] = "0b00010001000100011011111111001011";
        ram[142] = "0b00110000111011111001000101011110";
        ram[143] = "0b01011111111100000001111011111111";
        ram[144] = "0b11010101111111100001001011111100";
        ram[145] = "0b00110011000100000000000001001100";
        ram[146] = "0b11111111111100110000000100111110";
        ram[147] = "0b11110001000100100001001000001100";
        ram[148] = "0b11100010001011100000010011110000";
        ram[149] = "0b11101111000011110000110100101111";
        ram[150] = "0b00011100001011101111000011110000";
        ram[151] = "0b11111100010000011100111000011111";
        ram[152] = "0b00110111111101000111011111110000";
        ram[153] = "0b11001111111101110000011111100011";
        ram[154] = "0b11100010110101110100101111000100";
        ram[155] = "0b00110011001101010010111111000100";
        ram[156] = "0b11111100000100110001001100100010";
        ram[157] = "0b01110100111110010001101011100110";
        ram[158] = "0b01110111011110110001110101111101";
        ram[159] = "0b00100111011010101010110101001110";
        ram[160] = "0b11111100111000101111111111110100";
        ram[161] = "0b00011001011101010000001111010010";
        ram[162] = "0b11100000110101000001110011010001";
        ram[163] = "0b00100001010100011110000010110010";
        ram[164] = "0b00001110000010110010110011110010";
        ram[165] = "0b11010110111011000011111111100011";
        ram[166] = "0b00000001010001001111111111111111";
        ram[167] = "0b11110101010100010010000011100000";
        ram[168] = "0b11111110000100011111111011110010";
        ram[169] = "0b00000001111100000010110011110000";
        ram[170] = "0b00000000001011111111000100001110";
        ram[171] = "0b00100001000000000001000000001110";
        ram[172] = "0b00010000000100001110111111010010";
        ram[173] = "0b00011001001011100000001000000000";
        ram[174] = "0b11100001000000000001000100101111";
        ram[175] = "0b00010000111111100010000000001110";
        ram[176] = "0b00001111000011111111101100000001";
        ram[177] = "0b00100010111111111111110101110100";
        ram[178] = "0b00001111000011100000111100011111";
        ram[179] = "0b00010010111111110010111000011110";
        ram[180] = "0b11110001000100011110111111100001";
        ram[181] = "0b11101001001100110001001000001111";
        ram[182] = "0b11101111000111100010000100100000";
        ram[183] = "0b00101111111100001111001111110000";
        ram[184] = "0b00011110111111100001111011111101";
        ram[185] = "0b00000001111100000000110100111111";
        ram[186] = "0b11100000000011100000001000001111";
        ram[187] = "0b11110001000000000000111100011110";
        ram[188] = "0b11111111000011101110000111111111";
        ram[189] = "0b11011010000000100011001000001101";
        ram[190] = "0b00000000111100110000111000000001";
        ram[191] = "0b00111111111111110010000111100001";
        ram[192] = "0b10110010001011011111111000101110";
        ram[193] = "0b11000010110100001111110110101110";
        ram[194] = "0b10110000110010111001111100101100";
        ram[195] = "0b11001110001011101101001100100010";
        ram[196] = "0b00101011111001101011111111100001";
        ram[197] = "0b11011111101000100011000000111101";
        ram[198] = "0b11001010010010101101010000000100";
        ram[199] = "0b11111111110011100001011111011001";
        ram[200] = "0b11110010000111001111110101011101";
        ram[201] = "0b11111111111011010010111110011111";
        ram[202] = "0b11011110110111111001110100001100";
        ram[203] = "0b00001111111111111110011000001110";
        ram[204] = "0b00100010111001001011101111111101";
        ram[205] = "0b10110000111101001111000100101110";
        ram[206] = "0b00111100001010111110111011000011";
        ram[207] = "0b11110000101111010010011110101110";
        ram[208] = "0b11011111000011110001110101000001";
        ram[209] = "0b00011110001000100001111110010011";
        ram[210] = "0b00110001110000001001111011010000";
        ram[211] = "0b00100010001000000001000011101111";
        ram[212] = "0b00110011010000001101110100011110";
        ram[213] = "0b11000110001100000010000111110100";
        ram[214] = "0b00010010000011101110001011100000";
        ram[215] = "0b11010010101000001101111111001111";
        ram[216] = "0b01000010000001011111000011100100";
        ram[217] = "0b00110010001101001111000100010001";
        ram[218] = "0b11111101000000001101000000110010";
        ram[219] = "0b00011100001000010011110000010001";
        ram[220] = "0b11010000010100000001000111100000";
        ram[221] = "0b00100000000111100001000011110110";
        ram[222] = "0b00100010000000111111001000001111";
        ram[223] = "0b00100011111100001110010011011110";
        ram[224] = "0b11010000001000000001111000001101";
        ram[225] = "0b01000001001011001111111100111010";
        ram[226] = "0b00100001100111111011001001001111";
        ram[227] = "0b10111111111111111111001111101101";
        ram[228] = "0b00011110111100001110000100101110";
        ram[229] = "0b00001110111000011111000100011110";
        ram[230] = "0b11001101000000000000111101001110";
        ram[231] = "0b11111101111100110001111100001111";
        ram[232] = "0b10110000001011100010111111110010";
        ram[233] = "0b00000000111000000001111011110001";
        ram[234] = "0b00000010000111011101001100010000";
        ram[235] = "0b00000001000100001110000011111110";
        ram[236] = "0b11111110111100010001001000010010";
        ram[237] = "0b00011110000000011110001000011110";
        ram[238] = "0b11101111111100111111111000110010";
        ram[239] = "0b00100011111011100001000100101110";
        ram[240] = "0b11111100010011011011000000010100";
        ram[241] = "0b00001110111111011100101011001111";
        ram[242] = "0b00110010110111101010000000100001";
        ram[243] = "0b11010000111000110010000100100010";
        ram[244] = "0b00001001001011100001100111110001";
        ram[245] = "0b00111110110011111100110011100110";
        ram[246] = "0b11100010101011101011111100111011";
        ram[247] = "0b11001110101000101100110000101011";
        ram[248] = "0b11111100000010111111110101000000";
        ram[249] = "0b11100000101011101111110111111011";
        ram[250] = "0b00100001111000000000110111110000";
        ram[251] = "0b11001110110100010011001100101111";
        ram[252] = "0b00101100110111100010101011000001";
        ram[253] = "0b00111110111000000000111111100010";
        ram[254] = "0b11010001001110101110111101011011";
        ram[255] = "0b10111110010011100000001000001101";
        ram[256] = "0b11101111000011010001101101100011";
        ram[257] = "0b11110001000111011101000111011111";
        ram[258] = "0b00011101111100000000111111101111";
        ram[259] = "0b11101011000011010001001100110000";
        ram[260] = "0b11101010111101010011101011010000";
        ram[261] = "0b01011110110111100000111110110101";
        ram[262] = "0b01001100110100000100000000111010";
        ram[263] = "0b11101110010011000010010000101100";
        ram[264] = "0b01001101110000001111111000000011";
        ram[265] = "0b00100001110111001101001000010100";
        ram[266] = "0b00011110000111101111000100101011";
        ram[267] = "0b00010001111011101110000001001011";
        ram[268] = "0b00000001000011100000000100000010";
        ram[269] = "0b00001101001000110110001100010000";
        ram[270] = "0b00101111000100010011000100011100";
        ram[271] = "0b00001110000000111110111100010010";
        ram[272] = "0b00001111111111110010110111110000";
        ram[273] = "0b01100001111011011111101100010100";
        ram[274] = "0b11110001010111101011110011110001";
        ram[275] = "0b11100011111100011111111011111101";
        ram[276] = "0b00011101011010111101111100111111";
        ram[277] = "0b11100010010000000101001000011110";
        ram[278] = "0b00100000111111011101111100001101";
        ram[279] = "0b11100000110100110100011000010001";
        ram[280] = "0b00001111010100110110111011111101";
        ram[281] = "0b01100011000100011111111100000100";
        ram[282] = "0b00000000111111111110101110100001";
        ram[283] = "0b00010011000100100010000111101101";
        ram[284] = "0b00001111000100011110101000001111";
        ram[285] = "0b11010100111100010100100100001111";
        ram[286] = "0b11111100111011001001111011010000";
        ram[287] = "0b00010001111101010110001111110100";
        ram[288] = "0b00001010000011010001111111110011";
        ram[289] = "0b00011010110011100000000000111110";
        ram[290] = "0b00000001001000001010111000100000";
        ram[291] = "0b10110000000011110000101000011010";
        ram[292] = "0b11100100000000011111000100001001";
        ram[293] = "0b00011111111000000001100111010001";
        ram[294] = "0b00011111110011111101000100000001";
        ram[295] = "0b00101101000000100001001111110001";
        ram[296] = "0b11111101110111100000001000010010";
        ram[297] = "0b01001010110100101111111000111101";
        ram[298] = "0b00011110010011001110001011111101";
        ram[299] = "0b00011011000000001101101101001110";
        ram[300] = "0b11110011111100001111111011101100";
        ram[301] = "0b00011111000100101111100100001110";
        ram[302] = "0b00010000110100101101010000010000";
        ram[303] = "0b00101110000111110011000100010110";
        ram[304] = "0b11110000110111100000001011101110";
        ram[305] = "0b00111111000001011111111000101111";
        ram[306] = "0b00111111011011000000000111100010";
        ram[307] = "0b01001110001000001101110100010000";
        ram[308] = "0b00010001111000110000111010110000";
        ram[309] = "0b01001011111000001111000100000010";
        ram[310] = "0b00101110111111101111001101011111";
        ram[311] = "0b11110010110100000010101100110010";
        ram[312] = "0b11001100110110111110111100011101";
        ram[313] = "0b11110000010000000111000011010000";
        ram[314] = "0b11110000010011110000000100010100";
        ram[315] = "0b11010000111000100000110110010100";
        ram[316] = "0b01011110001000101111010000110101";
        ram[317] = "0b01000111111100001100011010011110";
        ram[318] = "0b00111011111100101111111111110001";
        ram[319] = "0b11011110111011010001000011101111";
        ram[320] = "0b00111011000101110010001011000100";
        ram[321] = "0b11011111111111100101101100000111";
        ram[322] = "0b00000011110111000011111000001110";
        ram[323] = "0b00000011000000100010000011101101";
        ram[324] = "0b00101111010011010011101000100010";
        ram[325] = "0b10010011111111001001110111011010";
        ram[326] = "0b00111110110101011100111110100010";
        ram[327] = "0b11111101001100110111000111101101";
        ram[328] = "0b00011110001000111111001000000010";
        ram[329] = "0b11110011111100011011111110100011";
        ram[330] = "0b11100000110111010010000100001110";
        ram[331] = "0b00101110000100000000001000101111";
        ram[332] = "0b11100001000011110000000000101110";
        ram[333] = "0b11111110001011011110000100001111";
        ram[334] = "0b00011111000000111011111111101100";
        ram[335] = "0b01011111101000000000101100000010";
        ram[336] = "0b00011101000000001101111000111110";
        ram[337] = "0b00111001000011100110110100111111";
        ram[338] = "0b00111011000001011100111000011101";
        ram[339] = "0b11101110110100011111000000001100";
        ram[340] = "0b00010110000011010011000010101011";
        ram[341] = "0b10100010101011110011110000001111";
        ram[342] = "0b00010011010000010101101111001110";
        ram[343] = "0b00011101101100011110000100010000";
        ram[344] = "0b00101101110100101101110100010001";
        ram[345] = "0b11011111110011100101110000010011";
        ram[346] = "0b01010001010000001011111100000000";
        ram[347] = "0b11011111110100100001000100101111";
        ram[348] = "0b00000011000011000100111100001100";
        ram[349] = "0b10100110000000101101111100101110";
        ram[350] = "0b00001101011001000011111111111101";
        ram[351] = "0b00001110101100101100100100111111";
        ram[352] = "0b00011111111000111110000100010001";
        ram[353] = "0b10111101111100011111001011101101";
        ram[354] = "0b00000010110101011001000100101101";
        ram[355] = "0b10011110110101011111110101000000";
        ram[356] = "0b11100001000100010100110100101011";
        ram[357] = "0b10110001000011111011111000011110";
        ram[358] = "0b00011111010001100011111110110010";
        ram[359] = "0b11100000110100111100110000100100";
        ram[360] = "0b01010100111011100010111110011111";
        ram[361] = "0b11110011111001001111111100010011";
        ram[362] = "0b00101100000100010010001100001101";
        ram[363] = "0b01100100001000100001111101001101";
        ram[364] = "0b00010001110011000011000100101110";
        ram[365] = "0b11110000111011101111000011111110";
        ram[366] = "0b01010001101111111100001100100100";
        ram[367] = "0b00101010000000011101000011010110";
        ram[368] = "0b00100000111101000100000110111101";
        ram[369] = "0b00010011001100011110110000100010";
        ram[370] = "0b01000011110100001010000000010001";
        ram[371] = "0b00010100001011110111000011100101";
        ram[372] = "0b11111101101100001110000101110001";
        ram[373] = "0b11100010111100111011001011100011";
        ram[374] = "0b10110011110110111100000000111111";
        ram[375] = "0b10110001110000010000111000010001";
        ram[376] = "0b11011111110011110100001011011101";
        ram[377] = "0b11111011111111110001000001010001";
        ram[378] = "0b00001111001011001001111100010000";
        ram[379] = "0b00000111111100011100001111000001";
        ram[380] = "0b11100000111111111111001101011101";
        ram[381] = "0b00010011111100011110110100000000";
        ram[382] = "0b11111111000011110000111000111110";
        ram[383] = "0b00010000111100011111110100011011";


SC_METHOD(prc_write_0);
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


}; //endmodule


SC_MODULE(convDSPOpt_conv_3cRA) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 384;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_conv_3cRA_ram* meminst;


SC_CTOR(convDSPOpt_conv_3cRA) {
meminst = new convDSPOpt_conv_3cRA_ram("convDSPOpt_conv_3cRA_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_conv_3cRA() {
    delete meminst;
}


};//endmodule
#endif
