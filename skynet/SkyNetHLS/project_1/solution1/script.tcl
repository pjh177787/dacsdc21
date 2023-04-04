############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_1
set_top SkyNet
add_files net_hls.h
add_files net_hls.cc
add_files dwconv3x3.cc
add_files conv1x1.cc
open_solution "solution1"
set_part {xczu3eg-sbva484-1-e}
create_clock -period 4 -name default
config_export -format ip_catalog
#source "./project_1/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
