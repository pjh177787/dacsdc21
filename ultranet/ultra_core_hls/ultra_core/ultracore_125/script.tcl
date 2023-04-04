############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ultra_core
set_top ultra_net
add_files ./src/ultranet.cpp -cflags "-std=c++11" -csimflags "-std=c++11"
open_solution "ultracore_125"
set_part {xczu3eg-sbva484-1-e}
create_clock -period 4 -name default
config_export -format ip_catalog -rtl verilog
#source "./ultra_core/ultracore_125/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
