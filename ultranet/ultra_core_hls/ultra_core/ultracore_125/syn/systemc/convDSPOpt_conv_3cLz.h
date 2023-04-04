// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __convDSPOpt_conv_3cLz_H__
#define __convDSPOpt_conv_3cLz_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct convDSPOpt_conv_3cLz_ram : public sc_core::sc_module {

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


   SC_CTOR(convDSPOpt_conv_3cLz_ram) {
        ram[0] = "0b11100001000100100001110000010010";
        ram[1] = "0b00010010000111100001111100010000";
        ram[2] = "0b11110100000100010001000111110000";
        ram[3] = "0b11100001001011110011000011111111";
        ram[4] = "0b00100011110100011111110111110001";
        ram[5] = "0b11101011000000001111001000010000";
        ram[6] = "0b00010000111111110001000011110000";
        ram[7] = "0b00000000110000010000111000001110";
        ram[8] = "0b11000100111100110001111001000010";
        ram[9] = "0b01000001111111100000000000100100";
        ram[10] = "0b11110000000111011100111100101110";
        ram[11] = "0b00000001001100010100111011111111";
        ram[12] = "0b00100010111110110010110010110000";
        ram[13] = "0b11111100000100001111000000100001";
        ram[14] = "0b00010000111100010001111100101101";
        ram[15] = "0b00011111110100100000000011000000";
        ram[16] = "0b10100001000100000001110100000001";
        ram[17] = "0b00100001111110111001111100000001";
        ram[18] = "0b11011111001111001100000000011001";
        ram[19] = "0b11100001111111110100000111101101";
        ram[20] = "0b00010011111111010000110011111010";
        ram[21] = "0b10111010000100101100010101101111";
        ram[22] = "0b00101101111000010100110100011110";
        ram[23] = "0b00101100111001001111001011010001";
        ram[24] = "0b00000001000111110001111111110001";
        ram[25] = "0b11110001000000000001111000010000";
        ram[26] = "0b11110001001100010001001100000000";
        ram[27] = "0b00010000000100010001000100110001";
        ram[28] = "0b11110000000000001111001000100000";
        ram[29] = "0b11100000000111100000000000000000";
        ram[30] = "0b00011110111100010000000000010000";
        ram[31] = "0b11110010000111101111110100001111";
        ram[32] = "0b11101101000110111111101111110010";
        ram[33] = "0b00001111111000000000111101101001";
        ram[34] = "0b00001111101000000010001000111101";
        ram[35] = "0b11110010111100001101000000101110";
        ram[36] = "0b00000001000111110001001011100001";
        ram[37] = "0b00010000111111110010001100011100";
        ram[38] = "0b11111111111101001110000000000010";
        ram[39] = "0b00101101111000000000111100111110";
        ram[40] = "0b11101110000000111110101100110000";
        ram[41] = "0b00000000111100100011110101110001";
        ram[42] = "0b00101111001010111111111000101110";
        ram[43] = "0b01001110111100000000010010111110";
        ram[44] = "0b11110000110100111111001011111101";
        ram[45] = "0b00100011000100011111001000100000";
        ram[46] = "0b11101110111000110001000001000010";
        ram[47] = "0b00010010000000000100110101100011";
        ram[48] = "0b11101111000011100001111100100001";
        ram[49] = "0b00110001111100001111000001011001";
        ram[50] = "0b00100001110011110011111100001001";
        ram[51] = "0b11010001000111110000001000011101";
        ram[52] = "0b00001111000011011110001110100000";
        ram[53] = "0b11101100111100000001000100001101";
        ram[54] = "0b00000001111111010000001000000001";
        ram[55] = "0b00101111001000001111001101001110";
        ram[56] = "0b01000010000001110001010111111101";
        ram[57] = "0b11110000110000100000100100010001";
        ram[58] = "0b00110011011111100010110010100011";
        ram[59] = "0b00011100000000000111000110010110";
        ram[60] = "0b00001001000011111110011100100001";
        ram[61] = "0b00010111111011011101000011000110";
        ram[62] = "0b11110000111100001011111011001101";
        ram[63] = "0b11011001000011101110001100110000";
        ram[64] = "0b11011111001001010000110111111110";
        ram[65] = "0b00011101111011100110101100011111";
        ram[66] = "0b11110000110011001110110011100010";
        ram[67] = "0b11100001000011101101001100000100";
        ram[68] = "0b00001111111011000011100100000001";
        ram[69] = "0b11000111111000001111000100010010";
        ram[70] = "0b11001111110000011100110000001111";
        ram[71] = "0b00011010111100100100001011000010";
        ram[72] = "0b00111100010001110000110111011010";
        ram[73] = "0b00000011000101010010111111001111";
        ram[74] = "0b00010001110011110001111111100011";
        ram[75] = "0b00001100000100010111000011110011";
        ram[76] = "0b00011111000111010000001000110001";
        ram[77] = "0b11101111001111101100111011110101";
        ram[78] = "0b10110000110100101101101100100001";
        ram[79] = "0b11011111000000011111110000000010";
        ram[80] = "0b10101101010111011110110011110010";
        ram[81] = "0b00101110111010110101111100101011";
        ram[82] = "0b11110001001111010000000000010001";
        ram[83] = "0b00100100110111101011001111010000";
        ram[84] = "0b11111110010010110000110100100001";
        ram[85] = "0b00111101101101001001110111111011";
        ram[86] = "0b00011111111011101100110100001110";
        ram[87] = "0b00111100000100100010101111001111";
        ram[88] = "0b11110000010011011100000000001110";
        ram[89] = "0b00011101111111001111000000010100";
        ram[90] = "0b00001101111000010001001000000100";
        ram[91] = "0b11110000000000000110001000011100";
        ram[92] = "0b00000000000111011111110100011100";
        ram[93] = "0b00000011111100001011111100000011";
        ram[94] = "0b00011101001111111111000111111100";
        ram[95] = "0b01001101111000101111110100000000";
        ram[96] = "0b00000010000011100010111000010001";
        ram[97] = "0b00001111111000001110111101001100";
        ram[98] = "0b11101110111011001101111111010001";
        ram[99] = "0b00011111000011110000000000001100";
        ram[100] = "0b00100011001011100000111111011101";
        ram[101] = "0b11110001000111010010111100011111";
        ram[102] = "0b00010010111011011111000000001110";
        ram[103] = "0b00011111111100001110000000100001";
        ram[104] = "0b11100010111001000001101000100000";
        ram[105] = "0b01000000111100111110000001011110";
        ram[106] = "0b00011110111110100000111000111101";
        ram[107] = "0b11111111110111100000000011101100";
        ram[108] = "0b00000000001111011100001011101101";
        ram[109] = "0b00000110111011011111101100110001";
        ram[110] = "0b00000011110111111110000100101111";
        ram[111] = "0b00011111101100011111000100111111";
        ram[112] = "0b11110010000101100001110111101111";
        ram[113] = "0b01101111110111111111111101001010";
        ram[114] = "0b11010001101011101111110011101100";
        ram[115] = "0b10111111111011101111000100001111";
        ram[116] = "0b11101101111000010000111000010000";
        ram[117] = "0b11101110101100101100000000101111";
        ram[118] = "0b11100000111111110000110100011111";
        ram[119] = "0b00101110001000010101111100001110";
        ram[120] = "0b11110100111000010011001111110000";
        ram[121] = "0b11110111000111111110111011000100";
        ram[122] = "0b00001101111100110010000111100010";
        ram[123] = "0b00000000000011010000110000011111";
        ram[124] = "0b00011011000100001001110101010010";
        ram[125] = "0b11111111100111111110110100001010";
        ram[126] = "0b00110010110000000011111000111100";
        ram[127] = "0b00110000111011110001110011011001";
        ram[128] = "0b11010100010011100100000111100000";
        ram[129] = "0b11100101111011110001001100000000";
        ram[130] = "0b00100001110110111101111000110000";
        ram[131] = "0b11110010001000010000110100111101";
        ram[132] = "0b00001011011000011110001000010010";
        ram[133] = "0b00110001100111011110000111111110";
        ram[134] = "0b01010001101011110101111011111111";
        ram[135] = "0b01100000001011100000001010011001";
        ram[136] = "0b11010010001011110010000000001011";
        ram[137] = "0b00110001110000001100111100000101";
        ram[138] = "0b11000001110111100010111000000000";
        ram[139] = "0b00001100000100000001101011001011";
        ram[140] = "0b00101110011011110010011000011110";
        ram[141] = "0b11101110111111000011001011111101";
        ram[142] = "0b11111110111111100010111100011011";
        ram[143] = "0b01111111001000100000000010111111";
        ram[144] = "0b00100000000100000000000011111111";
        ram[145] = "0b11100011000000111101111101110001";
        ram[146] = "0b11110000110111100010111111110000";
        ram[147] = "0b00101111111100010001000000101100";
        ram[148] = "0b11010000010100010000111000010000";
        ram[149] = "0b00111001001111100010110011111111";
        ram[150] = "0b00001111111100001111000100000000";
        ram[151] = "0b00111111000000000001111110100000";
        ram[152] = "0b00010000111110111110000000100010";
        ram[153] = "0b11110001000100001011000101011101";
        ram[154] = "0b11010000101011110000000100111101";
        ram[155] = "0b00101101111111001110010001011100";
        ram[156] = "0b00000011111001011111000011011111";
        ram[157] = "0b00001001000111111111000111110001";
        ram[158] = "0b00011111110000000010000100001111";
        ram[159] = "0b00010001111100100000111011100010";
        ram[160] = "0b00001101111110100001111000111111";
        ram[161] = "0b11110001001011111110000100101110";
        ram[162] = "0b00000000000111100000001111100010";
        ram[163] = "0b00000001000000000010001100101101";
        ram[164] = "0b11000010111100010000000111101111";
        ram[165] = "0b00001001111111110001111111111111";
        ram[166] = "0b00011110111111100001000101011111";
        ram[167] = "0b11101111111000100000110111111110";
        ram[168] = "0b11110100110000101111000100100001";
        ram[169] = "0b00001111000000011101111110010111";
        ram[170] = "0b00010010010001000001010010101101";
        ram[171] = "0b00100110000100101111111100101111";
        ram[172] = "0b00011101001100111111110111110000";
        ram[173] = "0b00100101010000110001101100011101";
        ram[174] = "0b11101101111000000000000100000010";
        ram[175] = "0b11101110000111110001110100011101";
        ram[176] = "0b00110010000001100000111111010001";
        ram[177] = "0b00101011110100110001000110110001";
        ram[178] = "0b11111111110000101110001000011110";
        ram[179] = "0b00000010000100110011001000001101";
        ram[180] = "0b00000000001001101111000111110000";
        ram[181] = "0b00101100111111110000111100100001";
        ram[182] = "0b00000000110000011101000111111111";
        ram[183] = "0b00000010111100010001110100011101";
        ram[184] = "0b00000011111101010010010011001101";
        ram[185] = "0b01011100110100100100111111111110";
        ram[186] = "0b11101111111000100000000000110010";
        ram[187] = "0b11111111000100110010111011110010";
        ram[188] = "0b00100100000000111011001100001111";
        ram[189] = "0b00011110110010100000111011010101";
        ram[190] = "0b00000011001000000100111111000000";
        ram[191] = "0b00011111111101111100001011100000";
        ram[192] = "0b11111111000111111111111101100001";
        ram[193] = "0b00100000000011010101111011111111";
        ram[194] = "0b10100001101011100010110011101110";
        ram[195] = "0b11111110110011111100000000000000";
        ram[196] = "0b00100001111011001110111100001111";
        ram[197] = "0b01000001111001100001110111010001";
        ram[198] = "0b10111011111000100001000100000011";
        ram[199] = "0b00010010110100000000111000010010";
        ram[200] = "0b00000001111111001111111100010010";
        ram[201] = "0b00000001010011001101111001001111";
        ram[202] = "0b11001111110100000000111011101101";
        ram[203] = "0b11101101111100101100000000001110";
        ram[204] = "0b11010000111010111111110101001110";
        ram[205] = "0b00011111111100110001111011101111";
        ram[206] = "0b10111011000000000011110100001100";
        ram[207] = "0b00010010111000011110110000010001";
        ram[208] = "0b00100001111011011101111011100001";
        ram[209] = "0b00010001000111011010110101001101";
        ram[210] = "0b10101110110100011110111100000000";
        ram[211] = "0b11001101000000000000000100101101";
        ram[212] = "0b10110010110011010001110011111101";
        ram[213] = "0b11101111101100000011110111100000";
        ram[214] = "0b11011010110100011101001011101011";
        ram[215] = "0b00010001001001001110110011110011";
        ram[216] = "0b11101111010101001111111101011101";
        ram[217] = "0b00011110100100000001110111100100";
        ram[218] = "0b01000000001011100000001100000110";
        ram[219] = "0b00011011111110100111000011011111";
        ram[220] = "0b00001100000011101111011001101110";
        ram[221] = "0b01101100111001111101111100010100";
        ram[222] = "0b11001100111011100001111100001011";
        ram[223] = "0b11100010000000001111010100000000";
        ram[224] = "0b11110000000011010001111101000010";
        ram[225] = "0b00011101111000001111111111011111";
        ram[226] = "0b11110001110011100000001011011110";
        ram[227] = "0b11111111111010101101001100101111";
        ram[228] = "0b00010000110000100011001000111100";
        ram[229] = "0b11011110111100110000010101011011";
        ram[230] = "0b00001110110011010010110000010001";
        ram[231] = "0b00101111010111100100001111011111";
        ram[232] = "0b00011110111011110001000001010100";
        ram[233] = "0b11100001001100100011000000110000";
        ram[234] = "0b10111101111011110000111110111111";
        ram[235] = "0b00001111111111011101001011101110";
        ram[236] = "0b00011111111101010001000011111100";
        ram[237] = "0b11111111000100100010111100001110";
        ram[238] = "0b11110000101100101111110000010001";
        ram[239] = "0b01000000111011111101001100100010";
        ram[240] = "0b01001101110111101101000100011111";
        ram[241] = "0b11111111001100000001111001001110";
        ram[242] = "0b00000001010000000101111011101111";
        ram[243] = "0b01111110110111001110110011110111";
        ram[244] = "0b11111110010011100010011100000011";
        ram[245] = "0b00010001000011011111111010110010";
        ram[246] = "0b00001111101111110001000110100011";
        ram[247] = "0b11101110110100101110100111100000";
        ram[248] = "0b01011100110000011111001011000000";
        ram[249] = "0b11111110110111100011111101010000";
        ram[250] = "0b11011100011011100111100100110111";
        ram[251] = "0b00000011111111111101110011000110";
        ram[252] = "0b00001110010010110011010011101111";
        ram[253] = "0b00100111111010010000100110010011";
        ram[254] = "0b00000011101000111100110111000000";
        ram[255] = "0b11111011111111111110100110011100";
        ram[256] = "0b00111100110011011111111000110001";
        ram[257] = "0b11101111000100011101000000000011";
        ram[258] = "0b00001101111111100100110011110001";
        ram[259] = "0b11111110111111110000111000001111";
        ram[260] = "0b00111100001001000100001100000010";
        ram[261] = "0b11111111111011100000000010110001";
        ram[262] = "0b00010101110100001101111100001111";
        ram[263] = "0b00001111000000000000000011001101";
        ram[264] = "0b11110000110111111111000011111111";
        ram[265] = "0b00100010001100010010111000111110";
        ram[266] = "0b11100000111000101110000101001100";
        ram[267] = "0b11101101000000010010001000111111";
        ram[268] = "0b00000000000010110010110110101111";
        ram[269] = "0b11001101111001100001000000100001";
        ram[270] = "0b00000011111101011101110111110000";
        ram[271] = "0b11111101110100001100110100101110";
        ram[272] = "0b11110001110100100011110011111111";
        ram[273] = "0b11001111111011111111000001011110";
        ram[274] = "0b11100100111000111011110000111111";
        ram[275] = "0b11011101000001000101111111101111";
        ram[276] = "0b11001110111111110000110110110001";
        ram[277] = "0b11101110000111011101000111110010";
        ram[278] = "0b11010000000111110000111011110000";
        ram[279] = "0b11000011010100010000010000101101";
        ram[280] = "0b01001110111011110001101000101110";
        ram[281] = "0b11001001010000110001111001000010";
        ram[282] = "0b10100001101001000010110110101110";
        ram[283] = "0b11010011111100011100111011111010";
        ram[284] = "0b00100010000011010000110010010010";
        ram[285] = "0b01111010110110100101000111011110";
        ram[286] = "0b00110001110110110010111100010101";
        ram[287] = "0b10010010011111000001001000000000";
        ram[288] = "0b00101111000000010011010100111101";
        ram[289] = "0b00001101000100001100000100110000";
        ram[290] = "0b00001110010100000001001011010001";
        ram[291] = "0b00000010000111100010110011100000";
        ram[292] = "0b00011111111111010001001000000011";
        ram[293] = "0b00110000011000000000110100001100";
        ram[294] = "0b11100001110000010010110000100101";
        ram[295] = "0b00010001001011100000001111110011";
        ram[296] = "0b00100001000100000011010011101100";
        ram[297] = "0b00011101111100101011001000010010";
        ram[298] = "0b11111111001100000001111011010000";
        ram[299] = "0b00101111001011000000110110100000";
        ram[300] = "0b00110000101111010011000100111101";
        ram[301] = "0b01001110000100001101000001000001";
        ram[302] = "0b01001111111111010110110100000011";
        ram[303] = "0b00000000010011101111101111000101";
        ram[304] = "0b00010000000111110010011011100000";
        ram[305] = "0b11111110010000101011000100000000";
        ram[306] = "0b00110000010000010001111011010001";
        ram[307] = "0b00101111000010110010001010100010";
        ram[308] = "0b01001111110111100010000101001010";
        ram[309] = "0b00111101001111100001111100111111";
        ram[310] = "0b00110010110111001110111111100101";
        ram[311] = "0b00011111010100010000110111010011";
        ram[312] = "0b11111110000100001111110111100001";
        ram[313] = "0b10110010101111011111111000011111";
        ram[314] = "0b00011100000011111111000000000001";
        ram[315] = "0b11001111000011110010000011010000";
        ram[316] = "0b11010010111111110011110100011101";
        ram[317] = "0b11011111010000101100111111110000";
        ram[318] = "0b11100001111011011110111000000000";
        ram[319] = "0b00010000101100000100000000101011";
        ram[320] = "0b11100001000000101110111011010000";
        ram[321] = "0b11100010100111001100110100101101";
        ram[322] = "0b11111100111110111011111100011111";
        ram[323] = "0b10100010110111011111000000011110";
        ram[324] = "0b11110010111110110001110111011110";
        ram[325] = "0b11011111000111111110110111111101";
        ram[326] = "0b11100000110011110000000011110000";
        ram[327] = "0b11100000110101000011000000001100";
        ram[328] = "0b00010010001000101101111010101100";
        ram[329] = "0b00110010101100001011110100000000";
        ram[330] = "0b00001101010011101101111000110001";
        ram[331] = "0b11011101111010010010010011011101";
        ram[332] = "0b11100000001011001101110010110010";
        ram[333] = "0b11000010010000000001110111101100";
        ram[334] = "0b00000000110100000010110011011100";
        ram[335] = "0b11011100110001000101111000111110";
        ram[336] = "0b00010011000100000000001100011101";
        ram[337] = "0b00000001000100010001000101000000";
        ram[338] = "0b00000010000000000011000000000011";
        ram[339] = "0b00101111111100100001000100001001";
        ram[340] = "0b11100001000111110000000000110000";
        ram[341] = "0b01001011111100011101111100001111";
        ram[342] = "0b11100001111000100011111100010001";
        ram[343] = "0b11111111111000011101000000001111";
        ram[344] = "0b00100001000011001110000001001101";
        ram[345] = "0b11110000000111111111001100000000";
        ram[346] = "0b00000000000100010001111111100000";
        ram[347] = "0b00001100111111100010001011111010";
        ram[348] = "0b00001110001000000000011100001110";
        ram[349] = "0b00011101000100000010110000001111";
        ram[350] = "0b11110000000111100010000011111111";
        ram[351] = "0b00011111010000101001111100001101";
        ram[352] = "0b00000000000000101101111100101110";
        ram[353] = "0b00000000111011110001001011110000";
        ram[354] = "0b11011110000011110001000100110001";
        ram[355] = "0b11110000000011101110000111101100";
        ram[356] = "0b00010001000100010001010011101100";
        ram[357] = "0b00110000110111101111000011101101";
        ram[358] = "0b11100011111111001101000011111110";
        ram[359] = "0b11101111000100101100001011010001";
        ram[360] = "0b00111111111111100001111010011111";
        ram[361] = "0b00101101101111010000110101101110";
        ram[362] = "0b00001111000011011100110100010011";
        ram[363] = "0b01001111001000000010000011011100";
        ram[364] = "0b11101101001111101100101111011110";
        ram[365] = "0b00011101111011010010110011110010";
        ram[366] = "0b00000101101111010011001100011011";
        ram[367] = "0b11111111111111111101000111111111";
        ram[368] = "0b11010011000100100100111111111110";
        ram[369] = "0b11100100100100111100001101011100";
        ram[370] = "0b10100100111100011101101100011101";
        ram[371] = "0b00101100000000001110001011000010";
        ram[372] = "0b11110000000010110010111111100010";
        ram[373] = "0b11010001000011110110000011110010";
        ram[374] = "0b00010001011110100011000111111011";
        ram[375] = "0b11000011000000001100011001000000";
        ram[376] = "0b00010010111001110000111001111111";
        ram[377] = "0b10110011110101000000111100010111";
        ram[378] = "0b10100010001011110010111011010010";
        ram[379] = "0b00011100001011100010000010110111";
        ram[380] = "0b00111001011110110111111010010101";
        ram[381] = "0b10110100001111110101000000110110";
        ram[382] = "0b00101001011011110000110111111010";
        ram[383] = "0b10010010001011011111010011101110";


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


SC_MODULE(convDSPOpt_conv_3cLz) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 384;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


convDSPOpt_conv_3cLz_ram* meminst;


SC_CTOR(convDSPOpt_conv_3cLz) {
meminst = new convDSPOpt_conv_3cLz_ram("convDSPOpt_conv_3cLz_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~convDSPOpt_conv_3cLz() {
    delete meminst;
}


};//endmodule
#endif
