vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_6
vlib riviera/zynq_ultra_ps_e_vip_v1_0_6
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_19
vlib riviera/axi_register_slice_v2_1_20
vlib riviera/axi_protocol_converter_v2_1_20
vlib riviera/axi_clock_converter_v2_1_19
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_dwidth_converter_v2_1_20
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlconstant_v1_1_6
vlib riviera/smartconnect_v1_0

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 riviera/axi_vip_v1_1_6
vmap zynq_ultra_ps_e_vip_v1_0_6 riviera/zynq_ultra_ps_e_vip_v1_0_6
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 riviera/axi_data_fifo_v2_1_19
vmap axi_register_slice_v2_1_20 riviera/axi_register_slice_v2_1_20
vmap axi_protocol_converter_v2_1_20 riviera/axi_protocol_converter_v2_1_20
vmap axi_clock_converter_v2_1_19 riviera/axi_clock_converter_v2_1_19
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_20 riviera/axi_dwidth_converter_v2_1_20
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6
vmap smartconnect_v1_0 riviera/smartconnect_v1_0

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/compute_bounding_box.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/compute_engine_16.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/CONV_1x1_bias.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/DW_CONV_3x3_bias.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_and_reorg.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_and_reorg_part.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_bias_from_axi.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_buf_from_DDR.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_dw1_pool_from_D.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_dw2_pool_from_D.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_image_chunk_bkb.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_image_chunk_nor.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_weight_1x1_from.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_weight_3x3_from.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/load_weights.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/local_buf_copy.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/MAC_16_16.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/Relu_Convert_FIX.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/relu_copy_buf_to_DDR.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/relu_copy_buf_to_DDR_1.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/relu_max.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/Relu_Max_Pooling.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/relu_single.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_AXILiteS_s_axi.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_bias_buf_V_0.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_BUS32_m_axi.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_BUS512_m_axi.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_DDR256_m_axi.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_FM_buf1_V_0.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_FM_buf2_V_0.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_FM_buf_accb8t.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_FM_buf_accbSr.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_IMG_m_axi.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdeOg.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdg8j.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdibs.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdkbM.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdlbW.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdmb6.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdncg.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdocq.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdpcA.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdrcU.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mac_muladdtde.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mul_mul_7nsc4.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mul_mul_8nqcK.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mul_mul_9sfYi.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mul_mul_11dEe.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_mul_mul_11hbi.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_urem_10ns_jbC.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_urem_12ns_cud.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_weight_bufbml.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet_weight_bufudo.v" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/6b4c/hdl/verilog/SkyNet.v" \
"../../../bd/design_1/ip/design_1_SkyNet_0_0/sim/design_1_SkyNet_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_6  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim/design_1_zynq_ultra_ps_e_0_1_vip_wrapper.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_19  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_20  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_ds_2/sim/design_1_auto_ds_2.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps8_0_299M_0/sim/design_1_rst_ps8_0_299M_0.vhd" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_0/sim/bd_ac03_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_1/sim/bd_ac03_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/2508/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_2/sim/bd_ac03_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_3/sim/bd_ac03_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/9d43/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_4/sim/bd_ac03_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_5/sim/bd_ac03_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_6/sim/bd_ac03_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_7/sim/bd_ac03_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_8/sim/bd_ac03_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_9/sim/bd_ac03_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_10/sim/bd_ac03_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_11/sim/bd_ac03_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/901a/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/ip/ip_12/sim/bd_ac03_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/bd_0/sim/bd_ac03.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_5/sim/design_1_axi_smc_5.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_0/sim/bd_69f9_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_1/sim/bd_69f9_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_2/sim/bd_69f9_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_3/sim/bd_69f9_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_4/sim/bd_69f9_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_5/sim/bd_69f9_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_6/sim/bd_69f9_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_7/sim/bd_69f9_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_8/sim/bd_69f9_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_9/sim/bd_69f9_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_10/sim/bd_69f9_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_11/sim/bd_69f9_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/ip/ip_12/sim/bd_69f9_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/bd_0/sim/bd_69f9.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_2/sim/design_1_axi_smc_1_2.v" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_0/sim/bd_6909_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_1/sim/bd_6909_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_2/sim/bd_6909_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_3/sim/bd_6909_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_4/sim/bd_6909_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_5/sim/bd_6909_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_6/sim/bd_6909_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_7/sim/bd_6909_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_8/sim/bd_6909_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_9/sim/bd_6909_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_10/sim/bd_6909_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_11/sim/bd_6909_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/ip/ip_12/sim/bd_6909_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/bd_0/sim/bd_6909.v" \
"../../../bd/design_1/ip/design_1_axi_smc_2_2/sim/design_1_axi_smc_2_2.v" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_0/sim/bd_a958_one_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_1/sim/bd_a958_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_2/sim/bd_a958_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_3/sim/bd_a958_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_4/sim/bd_a958_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_5/sim/bd_a958_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_6/sim/bd_a958_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_7/sim/bd_a958_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_8/sim/bd_a958_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_9/sim/bd_a958_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_10/sim/bd_a958_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_11/sim/bd_a958_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/ip/ip_12/sim/bd_a958_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/0eaf/hdl" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1/sim_tlm" "+incdir+../../../../Skynet.srcs/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_1" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/bd_0/sim/bd_a958.v" \
"../../../bd/design_1/ip/design_1_axi_smc_3_2/sim/design_1_axi_smc_3_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

