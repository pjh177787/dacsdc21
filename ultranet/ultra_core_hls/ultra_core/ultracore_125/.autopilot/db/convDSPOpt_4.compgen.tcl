# This script segment is generated automatically by AutoPilot

set id 386
set name ultra_net_mul_13ncvx
set corename simcore_mul
set op mul
set stage_num 2
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 13
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 44
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename MulnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 388
set hasByteEnable 0
set MemName convDSPOpt_4_convbRq
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 11
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "01001000100" "01110011101" "01100101010" "11001001011" "01010100111" "10100001001" "01010010000" "01100110000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 389
set hasByteEnable 0
set MemName convDSPOpt_4_convbSr
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 21
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "111101100000101110110" "111111001101000010100" "000000001101011101001" "101101100101111001101" "000011010000001111000" "111110010001010000001" "000010001100100011101" "010101011110110001000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 390
set hasByteEnable 0
set MemName convDSPOpt_4_convbTr
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 11
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "01011001101" "01000110011" "10000010001" "01111011101" "01101010000" "01110101111" "01011011101" "10001010001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 391
set hasByteEnable 0
set MemName convDSPOpt_4_convbUr
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 20
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "11001110100011100000" "01110010110111101111" "11001110111100010110" "11011111001100100111" "11010011100100011010" "00101101001010111010" "10011001011011111110" "01110101111001010101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 392
set hasByteEnable 0
set MemName convDSPOpt_4_convbVr
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 11
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "11110010001" "01011100101" "01110111001" "01111101000" "10100010011" "01110100011" "10100110001" "01101111101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 393
set hasByteEnable 0
set MemName convDSPOpt_4_convbWr
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 21
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "000011010010101100001" "001001101101101010000" "001110011011100010000" "100101001010011001001" "000000100111011111110" "110100011000111010011" "000101000001011100110" "111100110010101111100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 394
set hasByteEnable 0
set MemName convDSPOpt_4_convbXr
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 11
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "01011110111" "01100000000" "01011001011" "01010100110" "01101110100" "01100100011" "01111100010" "10000100011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 395
set hasByteEnable 0
set MemName convDSPOpt_4_convbYs
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 21
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "001110000010110001001" "001000100000011011001" "111000111001111000001" "000010010111000110010" "000110010010011011111" "110111001011011100000" "010001000001101111101" "111010010001001101000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 396
set hasByteEnable 0
set MemName convDSPOpt_4_convbZs
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 11
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "10000101010" "01000011101" "01010001010" "01011010100" "01010011010" "01110101011" "10000010010" "01110010100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 397
set hasByteEnable 0
set MemName convDSPOpt_4_convb0s
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 20
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "00010011100011110001" "11111111111011111111" "00000110101100001010" "11010110010001110100" "11111111111101001001" "11011000100010000011" "01000000001000111101" "01010011001001100100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 398
set hasByteEnable 0
set MemName convDSPOpt_4_convb1s
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 11
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "10000100000" "10001000001" "01100101101" "01110010010" "01010101111" "01010110011" "01101111000" "01010100001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 399
set hasByteEnable 0
set MemName convDSPOpt_4_convb2s
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 21
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "111100011111110100010" "001101101110100111001" "000001100010111110000" "000111101000011011010" "111011010011000101011" "010000011101101010001" "001101111100000011010" "000000001110011100110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 400
set hasByteEnable 0
set MemName convDSPOpt_4_convb3s
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 12
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "010000001000" "001110100010" "010000011100" "001111001100" "001110010100" "100000010000" "000111001111" "010001011110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 401
set hasByteEnable 0
set MemName convDSPOpt_4_convb4t
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 21
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "000010001011010100111" "011101110000110000010" "000110100011110100000" "001011001110000001000" "111010011001000101000" "111111001001011011101" "000010001111100100100" "111111100111101110111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 402
set hasByteEnable 0
set MemName convDSPOpt_4_convb5t
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 10
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "1011000110" "1001110100" "1001000011" "1010000110" "1101100001" "0111010010" "1011110000" "1011001000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 403
set hasByteEnable 0
set MemName convDSPOpt_4_convb6t
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 20
set AddrRange 8
set AddrWd 3
set TrueReset 0
set IsROM 1
set ROMData { "01010110011101011011" "01011100110110100101" "00010010000011000001" "11001000000100111000" "00000101100000011110" "01001111110111011101" "00100110010111010110" "00100111111100101011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 404
set hasByteEnable 0
set MemName convDSPOpt_4_convb7t
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "01000100000001000100000000110000" "11110010000100000010001000111100" "11010001010000010000001000010000" "11111111110001101111111100111110" "01011101111101000010010011100001" "11111110111100001110000111101011" "00011010000100001011110111010000" "10010010110100101010000011001110" "00010100000011100000000111111101" "11100101000101000001111011101110" "11101111000111101101111011000001" "00100001101100001101011011011111" "11111001010000110011000011010000" "00001110000000110000000011110001" "00100001001000000000111111000101" "00111001001110101110101011100010" "11101001010010100011110110110010" "00101101001000011110010001001011" "11100101111000110001111100010100" "00101011111111000000100111101111" "11111011000011110001110011101101" "00010000010000110100001011111101" "00100101000011010011000100001111" "01001100000110100001110011101110" "11000011000000101101110100110000" "00000010111111111110111011110111" "11110010111010010001000111100001" "11100011000011101111111100110010" "00001101111000101101000100110000" "00011111111011111110110111111110" "00001110110110010001110100010010" "11100000111111111100110100000010" "01000010111000010000000001000000" "00101111000100001001111111101011" "00001101111011101111000100010000" "11101111111111111011111000000011" "00101110110111101111111111101110" "11010011110100100001001010111100" "00010001001100001011111000000000" "01010010001011010000001111111110" "00001101010000110011000011010001" "00111111111100001110000001111110" "00011001111000000000111011101011" "11010010000000010001110111100001" "11010010111000001111000011001111" "01001101000111101101001000101100" "00001111001011110010010100100000" "11110000000111010000000100000011" "00111101001000101101010110111010" "11101111110100011011110111110100" "11111101111000100100000100101001" "11111110000000100010111101000001" "00101100110101001110110100100001" "00010010111000001111111000000011" "00010001111000011110001000001100" "00000101111100100101111100111111" "00001101101001110011000100000000" "00111110000111100000111100000000" "01011001001011101011111100001110" "11000101000000001100111001000000" "11100010111100110000110111100000" "01000000111111000000110100011011" "00011110011111000101110110111011" "11000011111111110001110001011111" "00000011001101110000101101000000" "01001101101000011101110011111100" "00101010110111010101111001001110" "11010011000100111110001000110010" "11111100111000110101000111111100" "01111011100101010011101010100010" "10111001110111000010110101111111" "01001111001011110000110011110010" "10110000000101010001101110110000" "01000000000000000100000100001111" "00111110111100110110111011111010" "00011011111110111101001111111100" "11100000001101011110111011001110" "11000010111111100101111100010000" "11000001000101000111001011101010" "01001111111000001110110011111110" "11110000111001011100010100001010" "10110010101111000010111011101100" "10111111000101000001001111101110" "00110010010001111110001000100100" "10100001111110101100000111110000" "00001111010000011110010110100010" "00000001000110111111010100110001" "11110000000110101101000111100000" "10111010010100000000001100010001" "00001111001111010000110111100010" "11001110000011101110111000001101" "00000000001010111011111100010010" "10101010010011111011110100010000" "11100011111111111100110100101111" "00000010110010110000110111101101" "11111110000010111001111000100001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 405
set hasByteEnable 0
set MemName convDSPOpt_4_convb8t
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00100110010100101001010000110000" "11010010001000010111001101001110" "11001101111100001110011100011111" "10011100001001110101000011011101" "01010100110000011010011011110010" "00000101000000110111111011111010" "00101001110000101010011010100000" "10010011000101101110000111001111" "00010100111010101101010011110000" "11110110001001001111001011011101" "11011011110011111010000110100001" "11000100111100101011011011100100" "00100001111100000001000101010110" "00110100000100000001000100100100" "01010001000011110101110110110010" "11010101000000010000111100100011" "11110010111000010010111000001110" "11100010000000100010001000010100" "01110010000111100000000011011110" "11101100001000111111001100010010" "00111111111001011111111100011101" "11110010111101010001001100001110" "01100101110110110001110111001011" "10101011000000110000010000010001" "01011110011001110000000000110010" "11010011111010111101011001011100" "00001001001111011100001010111101" "11100011110101111111110101001010" "11010001110101001111111111100011" "00011111000111101001010001111110" "00111001111111101100111111100011" "10010011111001101101000011101110" "11010100101100000010111111011111" "11111111001000101100111100101101" "00011001001011110010000100000010" "10100010110100001010001111101111" "00101110111010100011001011100000" "10110111111000011101010011101010" "00010001001100001111001101110101" "01000100000111100011010111111001" "11110000011100000001111111001111" "00011111111000000111111001111011" "01010000100100011111010111111101" "00100000111101010011100111101001" "11100111011100000100000011101011" "00111110000111100010110101111010" "00001101111101001110011111110001" "10110010111100000000000011011110" "00001011000111111111001010111011" "11100100000000001001010111000100" "00010001001000100000000101100001" "11101110111110110101011100011111" "01011101011111001110111011101101" "11010011000111110110010001110000" "11010101000101011001111111100010" "11100101101001000011110000001001" "10010000010011100100111010101100" "11010000111100000101001001011011" "00010000011100101001001111000101" "11100110101111101001010000011101" "11111110111111111010000111110000" "00101011110010011100110000010110" "11100011001100011101111011010000" "01101111111100001110111000101110" "01001001110111111001111100001111" "00001101001110010001000101011100" "00100110110000011010011111010100" "00100110101001011111001111111110" "11101001111010101001110111111110" "00111100111110111111110111010100" "11110000111000011111000000100011" "01111101111010110000100110010000" "10100001111000111111111010110011" "01010101111011110010001011100101" "11110010001011110101110100111111" "01011100001011000001011011110011" "11011110001010111100001011010100" "00010100111001000001001011110010" "00000000000011010001001000011010" "01001011111111101101110011010010" "00011110110111100110011001011110" "10111111110000101001111000001111" "00101011101000111100001100011101" "01000000011001101111001011010010" "10011101110111111100000111110000" "11111111001011100010000100011111" "11100000111100000001000100011111" "11110001000011001010111111110000" "10011010001000111111111111111111" "11011101111011000001101100100000" "00010010111000000001111100010000" "11110000111011101010110000101110" "10011111000011101011110000010001" "00001110000000111101110101010000" "01000011110011110011000000011111" "11010010110100001011011001011111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 406
set hasByteEnable 0
set MemName convDSPOpt_4_convb9t
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00000011101100110011010011110001" "00010100000000100000111100111100" "11100101111011000001000000011111" "11111101010101011100001000100001" "01001111101100111111010000001111" "00101110000100101010111100101110" "11010001111110111100101011001100" "11011101110111111101000111111111" "00011101000000001111001000001101" "00110010111000011001110100000001" "00001111110111011101110011111110" "00111110111100000000001100001100" "00000100011110110001110011110001" "11100001110100000110100100001110" "10110000111111110101110111110100" "11101111110100001111110011111101" "00110101101111100000110111111111" "00100011110001010001100100111100" "00001101010011010000010100111111" "11110100000101101011111100011111" "00000001110000101001110011011110" "01001110100101011100110000011110" "00011011000011011010010111001001" "11001111111001011110000100000001" "00001110011110111110001100001111" "11101111000000000111011001010100" "00001110110111011100011000000010" "00010000001001000111000100101001" "11010000010100001101111100001110" "11000001111111010111000101001111" "11111111111100001111000111000110" "10011100000000101010000000001110" "11100100100111110001111000010001" "11001111000011110001110111100001" "11101111000100111111000100000011" "11100001111101001011010000100001" "00010000110011101101001100001111" "10110010111100101101001010111111" "11101001000011001111111000101111" "00000000000011100000000011011101" "00000101001100010001000111100001" "00111110000100000000111001000000" "00111010110000001110110111101011" "11001101000100010010111111000001" "11111111101100010000001111101111" "01000010001000000001010011101110" "00010010111001001101001011100000" "00010000111000001111111100011111" "11101111110011011110001011111110" "00000010111000011011111011000110" "00100001111010100010111100110010" "11101101110110010100001000110011" "00001100000010110000000111101111" "11100000101000010100000000000100" "00100000110111100000000000100011" "00101101001011000010111111111011" "10101111111000100001001011011111" "00011110110011100110000110111101" "00010000010000001011110110110000" "00000000010011011011111000001011" "00011100000011110001000111110010" "11001110101111001110000011110011" "11010000010011110000111111100000" "00011011001111110010000100010000" "11000010000011110000011001010000" "10101110001010100010011111100001" "11001111110101011101011111001110" "11011101011001010001111100001101" "11100000000000100000000001101101" "11000011010100100010010010101100" "11110010111101011100111010011111" "00001010000111111111000011111111" "11000001110000111101000010100001" "00000101110000000000000111010101" "11010011001110110001110100001111" "01011001001010101011001111100011" "10111111111110011010000011000111" "00010001111101011110001100110001" "00001110110110011001000111011110" "00011010110110011111101111001111" "11001010110010011111001100010000" "11101100101111111001000000101101" "01001010100111101001011111010011" "00101101111100101110111100010000" "10011101111011111101000111111110" "11101100001011101111110111101101" "11011110111011100010000000111111" "00001010001011011001111111100001" "10011111000011110000001011100001" "11011111110011111011101101000010" "00010100000100000001111100110011" "00001111111111111010001000010001" "10100100111011000000111100010100" "00110001110000111010101001011111" "11100100001000100010111001010001" "11101111111000011010001100010010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 407
set hasByteEnable 0
set MemName convDSPOpt_4_convcau
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11101100100111100011000011101100" "01010100110010110011001010111110" "11110100000101010011010000000010" "00010010000000001111111000010000" "11011100110010101101111011110000" "00110100000110110000111000101100" "11110100110011011111001011000000" "10110001111000111110110010111101" "11100110000110011011100101101111" "00000000010000101100001001001011" "11010000101111101110001010100111" "11000001101000010101111010011110" "00001110000111000011110011111011" "00001010110110111101000110110011" "11110011000001101111000011111111" "00001110000100111111000000000010" "11110000110011100010110011011101" "11001100111110100000001000000100" "11010000101111111101111111101110" "00101101111011100001101111110001" "11110000000011010010001011000011" "11100000111011010000001000010000" "00010100111001101110001100010100" "11111110111100110001000111110001" "00011001100100101110001110110011" "11101010111000000010101000011110" "11101101111000000000010000001111" "00101101000011111101111000101110" "11011110110101011110000110011111" "11111010110011110000101111011011" "11111100001011100101111100001111" "11111011110011111101111000011011" "00010001000101000100000010100010" "11001110001011110101010110100011" "11010000000100010001111111011101" "11100000111011000100000011011011" "00001111110101101101001100000001" "11100000110101100010110111100001" "00001111111100011011111110111101" "10110010110001001101000111001111" "00100001111001000000010110110011" "11110001111100101111000111001110" "00000001111000010000111100011110" "11110010111101001100010011101111" "00000010110101000100000011000011" "10101101000011111011110011000000" "11110000110000010011110000100011" "01000010000000010000001000111110" "11101110111100100001111010100001" "00101110000111001110001011110101" "11100000000100000001110111011101" "00011010000011011011111100101110" "11010011100100100000001010101110" "00101010000000000100110011001111" "10110010000100110000110000100000" "00011111001000011011111000100001" "11010110100111110011000010101110" "10111101001010100100110000011110" "10110010001000100001001001000000" "00010010101111100010101111111001" "11110010110110010100000100000101" "11000000001011101100111000111110" "00001110001011010101111111000100" "11110001001100110001111101000011" "00001110000010110100110110011111" "00100000001000101001000111100000" "11100001111100100111000110110101" "11010011101000110010000100001111" "00001110010001011110001111110010" "00010001011100011111111010110111" "00000100111000010001000111000010" "00111110001100010101000111110010" "11110001001100000100001110110010" "11110100000100011001010011100011" "00010110110001110011111100110001" "00000000000101101111011100110001" "00011010011100001111111111011011" "00011111110000001110011111111001" "00101001000100000001001000001110" "11100001111000010011111100010111" "00101011011101101110000111100001" "00100000110111110001000010101011" "01001011011101110100010110010011" "10110101000101101101010011111111" "00101110110100101101000000001110" "00011111000111111010111011111110" "00011111110110100011001100101110" "00001101110010110000111100011101" "00010001000000001110111000001111" "00000000010111101101111101000100" "11110011111000100101001101001111" "11110001111011010001111100011111" "00010000111010110000101100011110" "11001111000101010000101100001111" "00010011000100000010001111110001" "11001101111011110011010111111101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 408
set hasByteEnable 0
set MemName convDSPOpt_4_convcbu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00001011101100000000010000111110" "11100101111000000000111001000000" "00101111111001000001001011100010" "11001110000101010000111100101100" "01010010101100001111000001011110" "00000011001011100001100101001001" "11101110111000000001010011011110" "10010100111001110011111111101001" "11110011111011101111101011111100" "00100100010000110000000100001100" "11000001000000100001111010010000" "11110010111000110001110100001100" "11111111000111010001110111101111" "00001100111011001110111111100000" "00010011111100011101010011111100" "00101110000100101100111011110000" "11111101110011011101110011111110" "10111111110111011100000000111101" "11100010110011011100111100011110" "00101110000010111110101011101111" "11100000111100011111000111000100" "11100000110111110000111011111100" "11100100111101001111000011110000" "11100001000011101100110111010011" "00001001000100101110010100000011" "11111001101011101110010011101111" "10100001110111100011001000010000" "00000001111100010001100100011111" "00011101001001001100001111010001" "00011001101111110001001000101011" "10010000110000000010000001000001" "11011110110100010001100100101100" "11000010000000100101000010111101" "10111010111101001110001111110001" "10011110010000000011111100000000" "00101100101000001111111000001111" "00101100000000110000001101000111" "11011111000000011110001100100010" "00010100000000011101000000001101" "10101110000100100010111111101110" "01010000101001001010110000010110" "00011110010001000100000010010010" "00101100001011011010011000000000" "11100010010011110000001011010111" "00010010100100111111000111100110" "11010000011000000110010010010010" "11011101111111010101001011110010" "00000110110100010100111100111110" "01010010000100010101001110011111" "11010110001011110001001111011110" "01100010111111110000001011110011" "00100010000111110010010111100000" "00001011010111100001010110010011" "11100100001010101111011010110000" "11101011111111110001001000010010" "00000100001000111100111011110110" "10101111000010111101000000111110" "00000100000111001110000100001100" "11000000000100010011111111110001" "00010101001111110001000101010000" "11011110110010100101101111000001" "11100011000010100000000011111111" "10110100111100010011000010110001" "11110011111011100100100100011110" "00100001111110110001111010011110" "01001111000110110010001000011110" "11100000010000100001000010010010" "00000011111011110101110011101111" "11111111001000110000000011110010" "11001101000011100001101000001111" "11100001101111101100101010010011" "00011110001011111111001111101111" "11000100001000000000111100100000" "11100001000100011110000011000010" "11010010101100101110000000100010" "00001010000000110010010000000010" "11001111011011011101111000101111" "11011110111011010110001011000000" "00001100000011011011000000000000" "00011101010100100100111000000011" "11011110110111111001010010111100" "01011110110100110101110111100000" "00101101000100011111000010110000" "11101011000100100000000000101111" "11101100110000011011000111100001" "00101110000011111111101000001111" "00011101000011000010000000011110" "00011101001010101111110100010000" "00110001101100000000110110101101" "01000000111010101101001011010101" "11111110111111010000110111111001" "11101111000011011111111111011101" "00101101010100001101110011110100" "10101111010000001110001111000010" "00010011111000000000000011010010" "10100111100101000000111011010100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 409
set hasByteEnable 0
set MemName convDSPOpt_4_convccu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00100000101111100000000101011110" "00100010001100001101110001000010" "01001011001100101111001111110001" "00000000001100110101111100011001" "01000011110001000000000111110001" "00010100001011110100110011001111" "01001110000000100000000011011111" "00010010000000000010001011011100" "11111101111000110011111100011101" "00110001000111111110000011101101" "00100001001011100000110110110000" "11010010111011101110111011000000" "11111101000111110001111100001100" "11011100111011001100111111010011" "11000001000001101111000111111100" "00010000111101011111111100100010" "11100000000011111100000000000000" "11011110110011100000111000101100" "10011100110000011110110011001011" "00011111000011111111101111111110" "11010011000000100010000100000100" "00100010110100010011111100101111" "11011111111101100000000000001100" "11110100111001011101000000010011" "00111011001111110011011101000010" "00011011110000101111111100100100" "11001111011011111111000000110011" "00001100001000110010101000000110" "00101101001111001111001110010010" "11111100101100000000110101011110" "11001101000100010000000101100011" "11001011001000110100100111110101" "11110010000011110011110110010000" "00001100110000010001000100101101" "11011110000001010010010101000001" "11000000110000100101101011110001" "00111110101111110010010011100010" "11001110101100101001101000101111" "11100000000011010000101100101100" "10011101010100001100000011101010" "01000011111011010000010000010001" "11101110000100110000101111011110" "11100000000011101100111000101110" "10100000011011011100001000000111" "11011011101010100001110101000000" "10100000011100110101111111010010" "11010010101111000000110011100100" "10110100001011100011001111110100" "11011110000000100110011110010101" "00010111010000011100110110010100" "00101111011110111110011101110100" "00101110010011000100011011010100" "00100001011000000001010111100010" "11110100000011111110001010011110" "00000010000000010001000100101110" "00010001010100101110111000010010" "11001101001111000011001100101111" "00000001111111111111000011101001" "11000011110000000011110100000100" "11100110000111101111000000011110" "00001111110111010010101110111110" "01001111011010011100111100100000" "11010001001000000010000011100101" "11000010001011100101110000000000" "00010010000111110010000010010000" "11111101110111110010110001001101" "11000000000111100000000110010011" "10110001110111110101000111101101" "11110010001100101111001010110010" "11001111111111110001100100010011" "10111101110011010011100110010011" "00100001000011010011011000011111" "10110001101101011011001111111111" "00001110111000100000101000100000" "11101110111100000000000000000000" "11100000001000011110110100001111" "10110101100100101110000000010100" "11011110111000110010110001000010" "11101110110111000000111011110001" "11101111001100011001110100011100" "11011101100100011101110100000001" "00110000000100011100110101110001" "11110011110100000001000000000000" "11110001001001011100000100101010" "11111100100101001011111100001110" "00011101001011110000101011000000" "00011100111010110100000111111110" "00001011111111001101111100100000" "11100010101100001100001111011010" "00101110001111010001001111000111" "11100010000100000001001000111010" "11001100111011100011010010110001" "00101110011110011011111100110010" "10011101000011000111011101001111" "11110001100100011010011000001111" "10010100110101110011101110011111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 410
set hasByteEnable 0
set MemName convDSPOpt_4_convcdu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11110010101000101110110111011100" "00110001111111101101110111111101" "00101011001011101011111100001110" "00110000001000011101000000011100" "00110010011100100000001111000000" "11000010111010111011011010110011" "11111001001010101011111011111110" "00101111111011101100001011010001" "11001001111011000100110010011111" "00010010001000011010000001110000" "00001010100111001101110100000010" "10010101010011101100001010100100" "11010010011100011111010011101100" "11111110000100000010010100010100" "11110010000000011110111001000000" "00100110010000100100111111001100" "01011110011110101110011100000000" "10010100000100000111111111110001" "00100000001000101001011001000110" "10110111011101010110010011001001" "00001101101011001100011101001101" "10100101000100000100010000100000" "00111111111100001100001101000001" "11100010001101001111001011111001" "11110111101111010100111000011111" "11101110111000001110100100000000" "00000110111111011101111101000000" "11101101101111101101010000110001" "00011100001011101011001000100001" "00101101010111110010111011000001" "00001111000110100010001011111111" "11101110111011001100111100001101" "11001100111111001001111111010001" "00001110000011001011110011011100" "11011101111110010000110111001111" "10110001000010011010000000000010" "00000011001011100010111100100100" "00011111111011100110000100001110" "11000011001001110010001100010110" "11000001111001110101110111100000" "00101110001001010001000100110001" "00010010000011000101111011001100" "00100010000000100010001100000110" "00001111000001100000110011101110" "11111101101100100100000100111110" "00110010011111101010111000110001" "11101101100101010010111100000011" "00011100110001101111000100000011" "00011110001011101100000100000001" "11010011110000101101111111010001" "00101110010011001110000000000010" "11011110000100001111000000110100" "00010000110100101101001011111101" "11110011101111010000110100100011" "00001101111110101110110100000001" "00011110010011101101001100001110" "11000011100111100010001111011111" "00000001111011110001000111010000" "11010000110111001110111000000000" "00011100001000000001000111111111" "00001100111001100010010100001011" "00100001111010111101110100001101" "00011111001111101111000011001111" "11110010000100001111000000011101" "00000001101100101011111100001111" "11100000001111011111000111101101" "11110101010100111101110111110010" "01000001111101001111110001011100" "11100010111000000110000111111111" "00000010101101101110110110111111" "00100110101100101101000100010111" "11000010111000000010001000000011" "10110001000011011101000100001101" "01000011000100000010000100001110" "00000101100111011110010011011111" "00111011111111100011110100011100" "11100011010110110000001011011011" "00000001001001011110010110011010" "11100101100111110000000111110001" "11100001111111000101111011110011" "00111111111000001111111110011100" "11111111110001000010111100010011" "00010000110110111101111111110001" "11111111101110110011110000001100" "11110000110110110111000011001101" "11110000010000001111001010011001" "11110011001101001111000000100000" "11110101010011110010001011010000" "10100011110110100010111011100000" "11000000000000010110110010100100" "11010001010000010000000000000100" "11000011111011010000110111101100" "11010011100100011001111000000000" "11000010000011011111101101110111" "11010100111100100001110100100010" "00011011101101000010110010111010" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 411
set hasByteEnable 0
set MemName convDSPOpt_4_convceu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11101110101001011110111111111111" "00011111001011111011010010100100" "11110010001100100000011100111100" "11111010101000010100000111011011" "00101100011111001110010011110000" "11110001000110110111011100110000" "00111001101010111011011000000000" "10110000010100100111010010111110" "11011001011111100000000011010100" "10110011001111010011010001111111" "00011101100100100010000111010111" "10010100111101001010001111001111" "11001111111000011101111100001100" "00111101111000001101110111101110" "01001011010000000001110100011101" "00011100000011011001010000110001" "11100000110001000010000011101110" "11111101101000011110111100001111" "00001010010111010010101011101010" "01011010001111001011110000100000" "11100101110001110100111111111101" "00010000111100100010111111011101" "11101111001011100010101111011001" "00101101001110011101000011111111" "01000010000100110111001111100010" "11001101000100011111001000100100" "01010110111111100010001000110000" "11100001101000000010010000000000" "01000000010100111111011100100110" "11101101011100111110001111011111" "01010011000111110100010100001111" "11110011101101010010011000011110" "11000011111100001111000100000011" "11101101010111101101000111101110" "11110010000110110011110011001111" "11010011110111001111010100111100" "11010101011100010001000000000000" "10111110111011110010111011010011" "11110000010100111101111010110010" "11110000001000100011110111011110" "01010010000100111101010011110011" "10100010000011110001100110100110" "00110000000011101010111111010110" "00001101001100000000101111100010" "00011011000100100000001011011101" "00000000010000011010101111001111" "11110000110000101011001011111111" "00111110111100010001110100001111" "11001110110000001101000111111011" "10110001110100000000111000000001" "00010011001100100001110100001111" "00000000001100101101111100010001" "00100001011100100010000111101001" "11010100000011101001011011110001" "01100001101000011100000101010000" "00011110000011101111010111100000" "01011110011111111111001010110110" "00100001110110100001011000011011" "00011010110111011101111111010101" "10010001111001000010111111001101" "00110001000001011110111000001101" "00001111000010011111111100111110" "11111110110100001111111111101101" "00100010000000100001110100011110" "11100101110111010000111001000001" "00011111000011010011000000011111" "11100110110101011111101111100011" "00010100000000100000101100001011" "10010101001110100110101100000011" "00000001000000101110101011111110" "11100111100100111101111000100101" "00100010111110110001000000000101" "11110001001100111110110111111111" "00010100000011101010110011101001" "11111111100111101111111000100000" "11110010101111000010111000101111" "11001111011111000000001011001110" "00001110101111101101111110011001" "11110011100100111110110011010010" "00000011111011000000111011100101" "11111011001111011100111110101101" "11000000101111100010110011111110" "11110000110011101110001011101111" "00100001110010110011101111110000" "10110001111110110111000000011101" "00111110111011110100001110011001" "11110000101011101100111001000010" "00000010111010110010000000010010" "10100010111111101111111100001111" "11010001111110100101101010110011" "11000011111000010000111011010010" "11101110110011011100111100000001" "01000100110100001001000111100000" "00000001000011011010101001110101" "10010011111100010001111000001110" "00011100000101011110110111001100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 412
set hasByteEnable 0
set MemName convDSPOpt_4_convcfu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11100011111000011111001000000010" "11001101000100010010111011001110" "00001100101100001110111111111110" "00011110110001001111000100111111" "11011111111111010001111000010000" "11111111110011110011111011011111" "00100001101100011110111000011111" "00111100001100001100001100100010" "00010010101100011111111000011101" "10110000001000101101111100001110" "11010001101000111101111011101110" "10101110110011101011000001001110" "11111111111011011111000100011100" "01010010111000011010000111011101" "11010000111011110011001011101111" "00000001110111010000110011110011" "11111110000011010000111000011101" "00100000111011111100000000111101" "11011111110111100011000011100000" "00011111111111010010101011100011" "11110000000010011110111000100001" "00100011110000110000000111110001" "11011111000011000100000011101101" "00101101100111011111111000000100" "11101111101101000111110111011111" "11101110000011100100110100010111" "00010111111111111101110111100010" "11110001111000110000001011101011" "00101111001100111110001100010101" "00001100010000100001001010100000" "00100001001000101111010100000010" "11110001110101000001001100011111" "11100010001100001100111100000001" "00001011001100001101111110011110" "10111110111111000100110011011110" "00001110110010101011001000000001" "11111110011000110001111000100100" "00010001111000011110110100100110" "11101101000001000001111110100010" "11100100000001000100001000011101" "00101100101000101011000111010100" "00011101101000001110110010100111" "11101101000011101110000110100100" "00011110111011100011000011111111" "11111010101100011111111011101110" "01000000001011011101101100010101" "11011100110011110100001011000100" "11010000101111111111001111111011" "11011111111100111111111100001011" "10111111110101001011111111100000" "11100001000100111111000000100000" "00110001111100011001000011100000" "11100100000111000100001100101100" "11010101111111110011001111000011" "00111010110000011101010101110010" "00101111010000010001011000001100" "00001101011100100001001111001111" "00010001111111010111100101101101" "01001001101111010000000010100010" "10010000111100110001111100001011" "01011111000100011101010011011111" "00101101111111010011000100000100" "00101100000111101010000111000011" "11010001111100000100000000111101" "00000011110100010000111100000001" "00111111000111110110000011110010" "00000101110101001110101111110100" "11110001000001000100111100111011" "11110010001100010110111000101111" "11000001000000010000101110111111" "11100111101100010000010000100100" "00011110000011110100111111110101" "01000001111001110010111011101110" "11010011000100000001001111111101" "00111010010000101101010000110100" "00100101110001000001111000010000" "00000001001100110001111000010000" "11110010000011100010111010011001" "00000011000101101100000011100001" "01000011000001100011111011110010" "11101110000001010011000111111100" "11000100101100100010110000100100" "11110001111100101011111100011111" "01000000110100110001110000101101" "11011101001111110010011000111111" "00010011001001000001111011011011" "00101100110111001101111000010000" "11100001000100000010001100110010" "00011111001100010100011000101101" "00100111111111111111000111111111" "11110101000000011101000000010100" "00011101000100011111010100110010" "00010010001000110010000100101110" "00000011000011001001111100100101" "11010001010000101111010011100010" "00001110001100111011001000011110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 413
set hasByteEnable 0
set MemName convDSPOpt_4_convcgu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11101010101000010010110110101101" "01011100001100001001111111010011" "10110001101111010100111110111101" "00001110111010110011100111100001" "00100000000011101110110111010000" "11101111000110100001100100001101" "00000111000111001111000110110000" "11100111101111100100011011101101" "11000011111111011001000011101101" "11100001001111100010111011110000" "00000000001011101111010100100000" "00010011101111111110000011100000" "11011011011100101110001100110011" "00010000110100101110111011011011" "00011011110011001101110101011111" "00011010010111001110000100001111" "11100101000000100011000001011110" "00011111101000000010110110010000" "00101011100111110001111001101111" "01100001000100001011001001010100" "00010100101000110000110100110001" "11011110110100110100111111000101" "11010100100100100001000101100001" "00101110000000001110010110111111" "01011111101000011111111100010001" "11111110001101011111101000110000" "00001111001011000010001001010011" "00011111000101010010000100101110" "00010100111100011010000000101101" "00011101000100100100111111111111" "11011101101011110001010001110101" "11111111110000110010000100111111" "11101111000101111100111100000001" "00000010110000000100010100010110" "11101110110011100000001101000011" "11011101110100000101110100010000" "11101101001011111111110011001111" "11101100000011011101010011011111" "11010000000000010010110100011110" "11111101110110100001101100110010" "10110000001000010101101111001110" "00101010100101000000001010101111" "10010010010000110110110110101110" "11111010000111011100101100111011" "10101111000110110000101010011100" "00011011100101001110110111001110" "10010000001000000010111011001101" "11111011001000001101100100111100" "00101001010000010010000100010011" "00101111000110111101000111011111" "00110001001011111011111110101100" "11100001111011101011111111011110" "00001100000000000001110111000010" "01101011000111011111000100010001" "01110010110100111111000000101110" "10110011110011111111001011111110" "11011111000010110011101011000000" "01110000001011100011000100010100" "01100001111001001110000000001100" "11001110000011010011011110111101" "00101101111000011001111101011110" "00000000000011100001001000100001" "00101110110011111010010011010001" "00000000110101110000000011101100" "01010000000111101001001000100100" "00011110001100000011110111010101" "00001001100111101011111100110110" "01000100101100010000000110110011" "10011011010111110011101110010000" "00001001000110011111000011110111" "10101111110100100000110111111001" "01010001110011100011100100110001" "01010010101110011011001000100111" "01101110101111011011000111001110" "11100001010111011111000000001100" "00000001111000101100000011100011" "01111011111010011111000000100011" "10111100010111111101111000000001" "10011100010010111110011100100010" "11100011000000001110110011000001" "11111110001110110011101111111010" "10011010000000000100001011100110" "11001101101000000010001100111110" "00110010111011100010101011011011" "11010010111111110010110000010000" "11000000001011101100111011111100" "11011111111011110011110000100000" "00100100111111101011111011111100" "11010010010000000000110110111110" "11001110110111011011100100101111" "11101101110011100011111011011010" "00010001000111011101101111101101" "01100001001001111110000011010011" "11100101000011001110110011001111" "11111111000000101111000011110100" "01000011000000000100110100010101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 414
set hasByteEnable 0
set MemName convDSPOpt_4_convchv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11111010101001000011111010111111" "01111101010000101101110100000001" "11000001000111110100111110101110" "00001101111011110000101000100101" "11000001111011000000001000000011" "11111111001011000101111100000011" "10100111000100001110000111111111" "11100011111000100111010011101111" "00010100000011011010110100010001" "11110001000111010100000011011110" "11100010001000000011011000010000" "00010010110100011110000111011100" "10110010011111000001111000110110" "00111111010000001111110101110010" "00110000001110110100000110101100" "11111001001100010011110111100000" "00010110111011011011111101110010" "00001100011000001110111000001111" "00111010101111010010000100101110" "11101111010001110101111100000101" "11010010100100001010101000011110" "10110001001100111101111110110000" "11000100110001000101001001100001" "00100010111000100100011111010010" "11010011100110110100101000101011" "11101110000000001110110110011110" "10110111111100011101111000010001" "00010001111011110000111010011111" "11010011000110011001110000101001" "11101111000100010010001011011100" "11000010111000011001001001100011" "11101101110011110001001011100000" "00111010010011111010110100000001" "00101111111111100100111110100100" "10101110110000011100000101010010" "11101111101111110011111011100011" "11100010000101010100111100000010" "00111101110100001100000011110001" "01000000110111010010000100001100" "00011111000100001101010111010000" "01000001110101001111000100000011" "11111011110100000011110110110100" "01010000111011000010000000011110" "00010000111000001101011111010011" "11010010111000010110000011110001" "00011001111111111111111110100110" "11101111010000010000110100100001" "00011011010111011111101011101110" "01000011011111000100000100010100" "00101101010010010100010000101110" "00101011001011101100001010100010" "11010011111111100010000011011101" "11010101110110101100111100011110" "00010011001111011111000011111101" "11111110000011111111001000010111" "10100010110111101100010011101100" "10010010101111111110110100001111" "00100010000011111111111100000000" "00001110000000000011111011101111" "11111111110000101101010000001011" "11111100001011001010111000101011" "11010001110000000101001100011111" "11101111111100011001010000000011" "00000000111001000000110110111011" "11100101001110111010111100111111" "00000010000010100001111011011110" "11000000110000111001000111100101" "11110010111000010001000010011110" "10011010001111010000101111001110" "11011101000110110001000000010100" "10111110000100100000101000001010" "01110010110111000011100100100001" "00001111000111110000101111000000" "10111110111011101100000100100010" "11110111000100010010111111100001" "00000001111100001110000100111101" "01010011111100010001111111100001" "11001011000100000010001100001110" "11100101001000110001001010101111" "00110000011000101111000100111100" "11011011001111100000101111111011" "11111111001000000101001001010001" "11011110001100110000000110110011" "00101101000101000001000100101110" "00010001110100100100111011011100" "10100010111111101111000011001111" "11011100010000100010000000100000" "00100011110111010000111100000100" "01010001110000001100110111001111" "10110100000011110000111011110110" "11011101000100100101000111110011" "00011111001011010100101011100101" "01110000110000101011000011000001" "11110011000011100000000010100010" "00011101010101001100001100000010" "00000100011000110010111100110011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 415
set hasByteEnable 0
set MemName convDSPOpt_4_convciv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11101011110111111111110010111101" "01001110010100011011110000001011" "00001110111011000000000011011111" "11101100110110100011110111110100" "11011101111100110100011110011101" "00101110001000011100101000110100" "11010001010111010011111100011101" "11101100110110110001000111100001" "01000010010111001110001111000001" "00000000111100000011111010011101" "00011111001110111110001100101110" "11001101111111010010011011100010" "00010000001100111110110001010000" "00001011001111100010100101111100" "00011001000110010010111111011010" "11111110000100100000111011011101" "11100111110111101101101001101111" "00011110001111111101110110101011" "00011001111111010010110111111111" "00110000011011110000111100011100" "10100100101111100001100100111101" "11010000001100011110110010011010" "10010000000000100100111100111110" "11000011111110111111001111000001" "11010001111111111100001001000001" "00110101001000101111001011011100" "00110110111111011111000100000010" "11000010001011110011000100011011" "00010011111111000001000101001111" "11110110000111010010111011101100" "00000011000000111100000100100010" "00000010000001000010000100101100" "00011010010000110101111100000100" "01000011000111010100000000100011" "00000101001001001101000000001111" "11011111111100100010110000011100" "00001110110111111100110100010011" "11101110000011110001111101101111" "01000011111011101100010100000011" "11010110111101000011010000000001" "01110000000011111001111000010111" "10010111011011110010001101101101" "01110000110111011001011100100100" "11010010101101110010011110100100" "11110011111000001100000000110001" "11001110010000000101001101010110" "01001100101111111100000100100101" "00010010101000010101000011110010" "00001110010111001111001000010000" "00101011110010111111101011000001" "00001001101110011101110101000010" "10011111000100000001000011000010" "11010100110000111100010000001011" "00110001111000001101110111010101" "11101001110011110010111001001101" "10110001010000011111001011101111" "11011111110001011111011000001101" "11111111110111000010110000100001" "00001011001000000010001101001110" "11110011000101001111010011110011" "01001111110100100001010100111111" "00001111110100000001111100111111" "00011011001100001100001011010000" "11101111000001110001111111011101" "00100111111111111101111101010000" "00100111001011011110110111110000" "11111100001001100000110111000000" "00011100001000101111110010111110" "10101010000000010010100110011100" "11101110110111011111000011111111" "10111101010001100101111111011001" "01100100000100000000101100000010" "11100000001110101001101010010011" "11101100001110111101001111011011" "11010011111011100000010011100001" "00000000110110110100100100101100" "10111111111011111100111110010010" "01011011111000010000111010011101" "10100110010010110001110110011101" "11101110001110101100101101001100" "00001111000011011111110010011110" "11011010110111010100111000011101" "10010001111010101111110011010000" "00011101111011001111110000001100" "00111010110111111111110110101110" "10110011001111010000010011110010" "00011111111100011111000100001110" "00011111000011110010110111010001" "00111011101111101010111110111101" "10101110111000111111001100000011" "11100010000000110000001110111110" "00001101111111110101101011100000" "00111111101100100010111011000001" "11100001000100000001110110101111" "00000000111101001100000111110010" "00000001000100110010111100111110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 416
set hasByteEnable 0
set MemName convDSPOpt_4_convcjv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11000000000011111101110011000000" "10110010111110110010000111001001" "10110010111001011111010011110000" "00100000111111110001110110111100" "00001101001100000010110011100101" "00010011000000000011000101010001" "00100011011001010010111011010000" "01000000001000010000000100011100" "11011001010000000011110111011100" "00001111000000010100110111010101" "00001100110111110011111001000000" "11111111001111000001110011100010" "00100111000000000000111100110001" "11110110000011000001001011010001" "00010010111111101011110000001111" "00100010111000100001001011010001" "00000110111111011110111111100000" "11000110001011100001000100011110" "01100100111011011110010011110011" "00011111110100100010011110110011" "00111110111011111111001011010010" "11110000000110111110001000100001" "00100010001011101100000011000000" "01011011001101000011110100011101" "00000001001100011111000110010001" "00010100111011100011000011111101" "00010110110000000000110100010011" "00100100000111010001111111101111" "00101011110110011111111010110111" "00010100111100001110000101001111" "00010000000000011111000000000000" "00100011111001000001010100000101" "11110001000111001110000001011110" "00011110010101011011111101111010" "11010101111011010011010000110011" "00000011111000000001101000000110" "10110010001000100011001111101110" "00001010001000001100101111110111" "11000110111101010010000000100001" "00010001001000110011110111111101" "00000000100110101001000110110011" "00010100110101000000010000100100" "11010101101001010001010101110010" "00011101110100100110001111010001" "11111110111111001111001011100100" "01001100110000101101011000011111" "00001110111000100000001000110000" "00000000110011100101101111000111" "10010011111111011110100110011011" "01011111111111000000000011111101" "11000010000000110100101011111011" "11111110111011001100110000111100" "00010000001101100100000111000001" "00000101110111010010000111001111" "01110101101100110100110111111110" "11100001111111111100010000001101" "01110000000001110010001100000100" "00010011101111010001111100000001" "00011010001111111110001000011101" "00110000111000011110000000101111" "00101101101000111111101000111100" "00010100111111011110111111010001" "10110001110001010001110111101011" "00011111110100000001100100001100" "00110000000101001110111100100001" "00000111000010110001110011010100" "00110101110101011111111010101101" "00010001111000100000110111010011" "01000000010111100010000001111110" "00100111010011001101101100111110" "00111101111000100000001011001100" "00100010110101000001111100000101" "00000001011111011001001111000010" "01011110000011001011000001000011" "00001010100110111111111000011101" "11010011111011111111111111000000" "11100011101111001100111110100010" "11100001000000110001111000100010" "00001101000011000000110011010011" "11000001101111100010010011001111" "00000000101011111111111111010000" "11010000111100110011110110101111" "00101110101110101110111011111010" "11110000110111011111011111011100" "11010011000000011100110000101001" "11011111111011111111010100100001" "11101110000110100000000011101110" "11100010000111111010110000010010" "11011111001100111011110111011001" "10111111110011101111000100011111" "00001010111011100001000111101101" "11111111000011011001101000100001" "10111110000100011110110100111100" "00000011000000100010010000001111" "11010001000100110010000100011110" "00000100111000111001000100100100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 417
set hasByteEnable 0
set MemName convDSPOpt_4_convckv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11101100101111000010001100000000" "11110011111000110000001111001100" "00100011111000110000111000010001" "00101100001000000001000111001110" "11001110101110100000110111011110" "11010010111111110100001111011110" "11100110010000110000001111100000" "01011010000100000000000011111111" "11101101000000011110111001011010" "11010100010011000010001000010111" "00000101110011010000001111010011" "11101111000011110100111000001111" "11110010101111011100000011110100" "11110101000010100010110000011011" "00010010110000011110011100110100" "11101110001001010100010010101101" "01010011100110011001001011000011" "10100111011111000001010100101110" "01111011101111111101011101110110" "11111110000100100011011110010111" "00011101000000010010111011101111" "11010101011011001110000001000011" "11010001001011111101000100000000" "00010001000101000011100100011110" "10011111000111110000011010110001" "00110001000100110110001011110011" "11110001001011111101000011110100" "00001111000000000100111000000010" "00111111101110011100001100000101" "00000100001111010011001000010001" "00010010111011000000000100100010" "00010001110101010010010011111100" "01011111111110111011001001100100" "00100010000011111011000101110000" "01000011111011100010010100100001" "11110001100101010010110000101110" "10010000001101010001110011001010" "11011010000000111111110111110100" "11011101001000100011110100001101" "00011100101000001110101100001101" "11010001111000110010011011101100" "11000011000100000100110110110100" "10110100001011101110010000100010" "11101100000011110011000011111111" "00011101000010011001001111010111" "01011100101001000011010011010011" "01101100001011001101001000010000" "11111110000011010110111111100101" "10011111110000100011110110011110" "00010001001000001111000110100101" "11110111111001010011111011110011" "00011111101111011100111000101101" "00011111001111011011111111100111" "10100111010111100000010000000011" "00010110000000001110000101110010" "10110001111000010111011000010000" "01100001011100011110111100100011" "00100000101100000100001100011100" "11111011001011011101010100010001" "10100011001100110110110100100011" "00100110110100100011111100010001" "00110110001100101111010111010100" "00110100000101101111000010101111" "11010010111001000011110011100010" "00100011010000011111000000110000" "11110111001011010010110000111111" "00001111010000011011001110011011" "11010011111100000010111011110001" "00100101010100010011001000001011" "00110111111100010001111101000000" "00100000001000100001111010101011" "11010010001000011110001100011100" "00010100011100111010111011101110" "00001111110111010111111101111010" "00111011101011000010000110111010" "11010010000100001011110100010001" "00000100010111001100000011001101" "11110011101000010110101100101101" "11001010000000001110111111000101" "10010011111111001001001100101111" "11101111110000010000001011111101" "10100000110000010001101011011101" "01001010000000001111000111101010" "00000001001011111010011001011111" "10010000000000001101110111011011" "00100001111011110000010111110101" "10010001000111100001111100011101" "00000000110111001010111000000000" "10101101000111011001111011011001" "00011111111111110001000111100000" "11011101101111100001000010101100" "11101110111100001001110011100000" "10101111111011111110111000011110" "00000000001111110011001111011100" "10111110000000101111001000001111" "11110100110101011001001000010000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 418
set hasByteEnable 0
set MemName convDSPOpt_4_convclv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11010111101011101010000100000111" "00011111000000110001101000100010" "01000010110111001111000101001111" "11001110000011111111111011010100" "00100111101111101001000111000000" "00010001111100110000110111100000" "11101001111010011011001111111010" "10010001000011100001001000010111" "11110101111000001100110011101001" "11100101010000010001111111010001" "11111110101010011101000110011011" "10111110000010110101001100111110" "00100000111100010000001111011110" "11100110110000011110111000000010" "00001001111111100001111100110000" "11110001011011110000010011010001" "01101111001000000001000100001111" "11010111001100001100000010010000" "00111111000101000000001000011100" "00100000010011111110001000011111" "00001011111001000010111100011100" "01010110001111111111110011010000" "01101110111110100000000011001100" "00011110111111110000110101001111" "10011101111111110000101010101011" "11101110000011001101000011111110" "10110010000000010100111010101101" "11111100110111101101101100101110" "11100011110111111111111010011011" "11100001001100010000000110111100" "11110100000100011111111110100000" "00001110111111001101000111111110" "00110101000110100001111110100011" "00011110010011110001111011100010" "11100011010011011101111111001110" "01001111010111001101001011111101" "10110001000000101100101101000001" "00011110000100010100101000011011" "00101100000100110010110100101100" "00000001000001001101111100111011" "10100001001101100001111000111100" "11111111001011110010101000001010" "00100010111000010010110011111100" "11100001111100001100001000011010" "11100010001000110101111011101111" "00001101110011100000111011111100" "11010000010000000010110011110011" "00011101001011101111110011010011" "10011100001100010001111110100001" "11101101000001001111001100010101" "10110010000100110011111000001111" "11111100100111000000111000100010" "00010000000000011101000011010110" "10110000101000101101101100100000" "11110010001110110000110000111110" "00011100000100010000000111100010" "01000010110000011111111000010010" "00011111110100100001111000101100" "00011011000011010010000100011101" "00001101001100101110000011110001" "00000000001111010000111111110010" "00010110001011110010110101001100" "01100001001011101010001011011110" "00010001111100110010000111110010" "00000011110111100000111011111001" "11110101001110111110100100101011" "11010000111110101010111110011011" "00001100000110110001101111001011" "00000000101111011111111110111101" "01000010010011001111111110111101" "00110010111010111110110110101101" "10011101000010101111111011111011" "00101111001000011111000000111110" "11110010000101011101111100000000" "01010011010100000010001000101110" "00100001001101000001001000100101" "00001011110100100100000000000010" "00000100111100011101000000101111" "00010111001001000011111101001110" "00010001000100110010110100101101" "11111100001100110110000111100010" "11000001010000010010001011100011" "00010010001000110001111000001101" "00010001000100010001001011110000" "10010010111100000000111111001011" "00110000000011110100011100000010" "00011110001011010000001011011110" "11111111111111101011001000110001" "10111110111011110000000000001101" "11111100110100010001001100001110" "11101011000111010010000010111100" "11111110111100001001001011011111" "10111110111111100011111000110010" "11111101000011110100011111101100" "11001001000100010000000000100000" "00110010111001101001001011100000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 419
set hasByteEnable 0
set MemName convDSPOpt_4_convcmv
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00101110110010101110110100110010" "11001110000011111110000011111110" "11000011111010011110001101010110" "11001011110111110010000011110001" "00000011001100101101110000100010" "11111110000111101110111111111110" "00000000110011001111000000010100" "11110001110000011101110000011010" "11101110001011110001010011100001" "11101111110110110001100111111111" "00011011110000111110101011010000" "11110110000000010101111011101110" "01010000011100001001110100100011" "11100000011110110011010000101110" "00011110100111000010011000100101" "11010011101111100100001110101111" "11011011000000001110110111101101" "00101011110110010100000011000111" "10100001111011101101100111101110" "11101110101111000001101011011100" "00001111110000101101000110010100" "01000000100110010000110111011101" "00000000111010011110111010011101" "11011101001011001100110011110010" "00000000111011101101111100011101" "00000000111000011011111011010001" "00101111000011010001111100010000" "11100000111111010000000100010100" "11110001111111001110111000101110" "11010001000000011110110111110010" "11101111000111001101111100010000" "00011100111110101111000100010100" "00101111111011011010000011110000" "00000001111011110000110000011101" "11000011000011010100001100010010" "00101111111010111110000000110011" "00101001000011111110111010100011" "10011111000000010100111100110000" "01110010101110110001001100101101" "00001111101111101101011111010111" "10101100110100010100111110011101" "11011101010011111110110100010111" "10110000110011000001111001010011" "00101111111011001110110111100011" "11110000010000100011111000100000" "01011101101011010000111110111110" "11100100110111000100111000010001" "11111011000111101101111000101111" "00111111110100001101001111111110" "11010000000011001111110000011111" "11101101111111110010000101110101" "11110010000001001111110100101101" "11110010101100101101000000000001" "00011101110111100001101111110100" "11101011110110110000111111110001" "11100000101011100011001110111101" "11100011101001100000000100000001" "00011110000011010001110100010010" "11011100110100000001111111101110" "11101100111100001111000100101101" "11101110110000101111111111010000" "11111101000011010010000011110010" "10011111000111001111000111101101" "11111110000010110000110111110101" "11011111111100000001001100011111" "10111111000010111110111111110100" "11010000111000000000111100001111" "11011011000011111110000111100011" "11001111111011010100010001001011" "10100000111110111110110100000010" "11011100000111110001000001001111" "11111100010011111111111100000101" "11100001100111100001111100100001" "00111111111000000001010011100110" "11010101000011111111000111010011" "11111111000011100000111001001011" "11110001101111000000111111110000" "11100011111010100011000100000001" "11110110001000011011001010100001" "00010110110101001101001000111001" "11000000111011101101110011111111" "00000010110110101100010101001100" "00010010000000100001001011000011" "00010011110101001101000111111001" "11101111011111101111111001000010" "11110001001011011111001000010001" "11110001110111111101111111001111" "00010010111111011011111011111010" "00110111010111110000111001010000" "11110010111111111101111011101111" "11111110001111101110110111100001" "00000111000100001011000111111011" "11000011100111000000111000011111" "10110010000001000001000000010001" "00011111001001001110000100010010" "00001111111000000011010100001100" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 420
set hasByteEnable 0
set MemName convDSPOpt_4_convcnw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00101010111011110001101011110001" "10101100111010111011000010010001" "11010001001111101101001101000011" "11101101000011110000110000000110" "00100001011100110000001000110010" "10101101000000010001001111011111" "11101111100111001011010000100101" "10100010001000011101101000011011" "00101111001000010000001111110010" "10110001110010111110100111111100" "11111001100100111111110000000010" "11110100000000000000100111110001" "00110000010111011100001000101101" "10110001011011000011010100000001" "11010010110101001011001001010010" "00000000001100100000111011101101" "11101010000001010001111001011011" "00011111001111100101001111110111" "00010001000000111111111011101111" "00000010111000000000110101011111" "11101110000100011111001011100010" "00101011100100101101000111111111" "00010000000111010101111010111100" "11110010111000001011001001100001" "11110000111000111110000111011001" "11100001111111011110111111111110" "00111100110000000011111000011010" "00010000001011111011000000100000" "00001110000001110011000111110001" "11100101110111001010111110100000" "00011101111000000001110011111010" "00010011111011111001001001001100" "00011011100101111111111111011110" "11110001111100001010111111011101" "00001001110100010000110100101111" "00100100000011011100000100100000" "01101111101110101011010111110111" "10010010010100000110110111101011" "00101110001011011011011110110000" "11000101000101011011011110110110" "11101100110010101111101111111011" "10100100011111100010001000000101" "10100000110000011011000011010011" "00100010101111100001111111110000" "11001100000101000011111101010010" "01011011110111011111000110110010" "11010100111100010011110000000011" "00011110111111110001111001001111" "01001011001000011100010100001111" "00110010111111111111111111100001" "00011110001000100000001000110010" "11101110000101000001111001111101" "00011110111001001101001011100001" "11000010111010101110100100110000" "10101001000111011111010001100001" "10100001000100101111000000000001" "11110101110000111001000010100010" "00001111111000001101111100100001" "11101011111111100011000101000010" "11110110111000000001001001001111" "10111110110000001111000110101111" "00101110111111110001000011010100" "11101110000111011110111000001100" "00000010111011001110001111010001" "10110001101111110011001011100001" "00011101000011101010000011100111" "11100000111111110000111000001101" "00010000111111100000001111110000" "11010011101111000101000000000000" "11111101111111101011111011010111" "00011110010111101111000000101110" "00100001111111100011000000001110" "00110001111000101110000110110000" "00001010111101011110001011100101" "00001111010011001111000111000000" "11001011010111001101000101101110" "00001110001100001110010111010011" "10101110110100001111010010110111" "10111011000010111011110100001110" "11001111010100000001000101001001" "10010101001000001110010000010000" "11110011001011010101011100001111" "00011111111100011100111110101110" "10111101001100111110001011111001" "11111110011111001011000000110001" "00001110000011100111001101100011" "00010000110000001011110100011111" "00000000110000000101101011101010" "00000111011111011110111100111110" "00010000100100100111101011011001" "00001111000000111101001111110111" "00000011000000010000000011011110" "11110111100110111011111000100010" "11100110100100001011100111011100" "10100001001001001100010001110100" "00010011111100101011010011111111" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 421
set hasByteEnable 0
set MemName convDSPOpt_4_convcow
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11111010100100101101110000010000" "01001100000011110000000011100011" "11100011001000001111001011110001" "00000000110100110000111000100010" "00101111111000000000001000010100" "11111010000011100110001100010100" "00011111010000100001010100110011" "10100000000101000011111000000001" "00111100000100110000010011010100" "00000000111111110000101111100000" "00001001110100010010000000110010" "10101111001001000010110100000010" "00110100111100000110010000001110" "11100001001100100011110101000001" "11111010011000100001111011111101" "00101111000111100000110000010001" "11101100111000011100001111011110" "00111110101101000000111111100001" "11101101000000001111111011001100" "00010100000100001011111100100011" "00001110000011111100000000100001" "11111111101001001110111011101010" "11111110000010110100000110111110" "11110011111111101110001100110001" "11011100111001110100110000001010" "10010110010011111011010011110111" "00100011001101101101001001100001" "00000001111101010100001111101111" "01110010011100101100111011100101" "11110001111110100111011101011010" "00001101010000101001010011010011" "10110110001101110111110100001001" "11010011010011110000000110110011" "00010001111111100110000001101100" "00001011010001001011000111010110" "10100110111100111011010000001110" "01000011000011110000011011100010" "10101101001000010100001100111110" "11100100001011110001110110111011" "01011110010000000000111100001110" "11000010111011100010110000101101" "11110100011011001111000000011111" "11100011000100111110111110011100" "01011100000111011101110100011010" "11101100000101011110000011110000" "11101011000000101010001010101101" "10111110111100110000000111010001" "00011110111011100000110101001111" "00111101001111100101000111001111" "00110000111011000001011010011100" "01010100010101000000110100100000" "00110010000100011111000101010101" "01111010001011000111010111101111" "11011111010011011110110110011010" "00000100001100111110111000110101" "00000011010000111001000111000001" "11101010101100000001111011001111" "11001111001111010001110111011100" "10100011111000011110010001110111" "00100110101100111011001011111100" "11010001111001001110001111110000" "11100000001011111110001100000100" "01100001010110011111000000111111" "11110000111010111110010111100001" "10110001111111010000000100100010" "00011111000100011010001100000101" "00100000111111001111111001001111" "00000001110111101111010011100001" "11110010110010111110110100000011" "01001101111000111011000000100110" "00111110010010101110000000101111" "00100010110011010100001011110001" "00010011111100011110111100001110" "00001001111100011101001000110010" "00110010000011000001000000001111" "00001100010111011110000000110000" "00010010000000100001000111110001" "11111010111000011111110111100000" "00101101111010111101000001011110" "00001110001111101101110101010000" "00100101111001110001000010100101" "00011111111100100010111010110001" "00111011110110010000111000011011" "11111110001110110000000100100001" "11011011110111101110000111000010" "01001110000111100011000000110100" "00011110110011011011000000000010" "00000010111111001011001100011111" "00000001110000000000000000000000" "00101110000000101111111000110000" "00110000000011101110110000110100" "00010010010000011111001100011111" "00000100100100100011111100111111" "11110001000011111101111000010000" "11100000000000111111000100101111" "00010101111000100011000100001110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 422
set hasByteEnable 0
set MemName convDSPOpt_4_convcpw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11111101000011011100111001001111" "00011111110100100011000100000001" "10011110000000000000000000011111" "11101011000000100000100100000100" "10011101110111100001101111001110" "00111110111110101110010000110011" "00100011111000010011110011011110" "00010011010111101111100111111111" "00100000001001010001111000001111" "11010001111111000010001000111101" "01110100101100001111000110101110" "00010100010000101111011111111101" "00101111011111110001010111010100" "00001110000100010101000001000010" "00111101000110011101111100100001" "01001111000010011110000100110011" "11000000001111010000111011101111" "00011101110000100100110111001011" "11001011010010111111111000001011" "11111100111010010000001000110001" "01001111000101010001111111111111" "00001110111011111111111011111111" "01001110111111001110110110101011" "00000101000010011110000100010001" "00010101111111010000111011010001" "00000010110100010001000111101100" "00000000001011110010000000010001" "00001100001000000001111100110000" "11101110001000110001111110101111" "00000011010011011110111111011101" "00001001000111110001110110101011" "00100000010111111100111100100001" "11111110111101001101111111000010" "11010010001011101101111000000111" "11010101111111100010111011010010" "00110001000100111100000100100110" "11101100111010111110001110100001" "11101111001000111111010101010100" "11101111111100001110111111101100" "00001010000000100000111100101111" "00001111101100101100000011101111" "00000000110001001011110101010101" "00011101110011111010000011101010" "00001101000100101100001000001001" "01000001101101100011111100001010" "00100011111100011011111101000010" "00000000111111011100000111111011" "10111011111100101011111011111010" "11110000110100101111111111111110" "10110010001000011100000111100100" "00000000111000101110111100111111" "11010000111100100010010111110011" "11010000000100000010110000101100" "11110010111111110001001100000010" "00101110101100010000111001100001" "11001111111100011111001111110001" "00001101110000101010000100001101" "11110010110100101101111101100010" "11101100000000010110001000100011" "11010001110000111110111100001110" "00100000110011010001001000000011" "00000001000100001101000110101110" "00101100111011011110111101000010" "00000000000100111101010000100001" "11101101100100000100000100001100" "11110001001000001101001111001110" "00001111110111111111110100100010" "00010001000000001111110100100001" "11100010100111011110001000000000" "11101111001111111111000000000001" "11110001000111110000111100100001" "00000001000100100000001000010011" "00111011001110010000010111100111" "11010000001000100001111100110010" "00010110111000011100011101010011" "10011101111100000111000111000001" "01000000011111111001001000110100" "11100010001011010111001000101001" "00111001110010110000011100010100" "10011011111100110111111111000100" "00000010001111111100000000100001" "01000000111111000110110111011110" "11001101111011100001010011000011" "10101111111000110010110011000100" "01101001011101000000111111011010" "00100001000010110000011100010011" "01001011101011101110001100101001" "10100100110000100111111111001001" "00100101011111111010001011100001" "00011111000011000001011101111011" "11111011100111111011011010010011" "10010111101001110001001011011110" "10100100111010110110111011001101" "11000010000100111101110100010001" "00001101001101111110000011100010" "10010011000000001011001111010001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 423
set hasByteEnable 0
set MemName convDSPOpt_4_convcqw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11101101111100001101110101000000" "00010001111000011111110100011110" "10100000111100100000111011010001" "00011100111000111111100100010001" "10010010110101000010110111101110" "00101100001011101101110000100110" "10100000000000010010111011110111" "00100001101111010000111011111101" "00101111000110101011010000010010" "10010111000110110100001011011111" "01101101111111001101011101110100" "11001111001000000010010111101101" "01010011000000100010011011110011" "00111101000100000100001000010000" "00110001111111010010000111111111" "00111101001110100000010001010010" "00010001110000100001101111101111" "01011011110111110010001100001110" "10011011000000000010110000101111" "11101111111011111110110001111101" "11110110111100010011000111110010" "11100001000111111101001100010111" "01110111110101011110111100010101" "11100111001011100011011000111011" "11110001111001010000110011100011" "00101101111011000010110000101110" "11001101000100100000111011110000" "00011010111111111111111000101101" "11001110111001011111111010011101" "00110011010111101111111011100111" "01010101111101011111000011111111" "11010100111011010011000110101100" "01110000011110101001000010010000" "10010100001110110111011100100000" "00010001100100101001010111110001" "11000001101101000111010010010011" "00000001001000010011001011101111" "00001100000100110011000100000011" "00010001010000100011001011101111" "11101110111100101111110111101111" "00010100001011010001001111111111" "00110001001100001101010111100001" "00011111000011111110001100010001" "00100001001100100000000011111010" "00100001010111000011010000011111" "00100011001100111101000110100101" "00100000000011111110000111111110" "11110001010000000000001100011010" "11010000111111110000110100001100" "11000110111111011010110011101111" "00010011110111100001000101100010" "11001110111100001011010111111110" "11100000101111100010000000001010" "10100111000111001001000011101010" "01000001000100001101001001110100" "11011110111111111011011111010011" "11111111100110111110111000011010" "10010101000000111001010011111101" "00100000011100010001010100110100" "00011101111111111101001111000101" "00001011011111111100111011101110" "00000001000111010001001101111100" "00011111100111101110111100001011" "11011101000000000001001011111001" "11110100011100010000000111001111" "00011110000011011111111001111101" "11101010100111111110000111100000" "10110110111100011100111110110000" "11110100110011011101111111001110" "00001111111001000010111111011110" "00011111010111111101011000000010" "11000010001011111100011111100001" "00101110000001000101010111000101" "11011101000001001001110000010111" "00111101011111110011110101100001" "11101100011011101100000111000010" "01111111000011110000010100100110" "00000001111000111110111100000111" "00011101010000001101001001011011" "11101100011000100000001111011110" "00111111000000011010010100100000" "00100001111111110001111000101110" "00010000000011001111001011111111" "11001111000001000010000011110010" "11001101110011100011000111110000" "11101110000100010011110111010110" "00101101101110111100111101011101" "11111110111111110001001111100001" "11000100010011111101001100100000" "00000000111100000111000101000000" "11110100100111101010111111100001" "10011100010001011111001111111110" "00000001100100110000000111110001" "10111111001011111100111011110001" "00001111101101001111110111011110" "10010000000100001101001100011101" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 424
set hasByteEnable 0
set MemName convDSPOpt_4_convcrw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00010010001111101111110100110000" "00100010000000011111001011110000" "11100010111100110000001011110000" "11110000111000100010110100010000" "10111101001100101101110010110001" "11111010000000001100001000101011" "11001001001000010011110100011100" "11111001110011000000100100110010" "00100000001100010111001011010001" "00100000110100010010000000010000" "00011100011111100010110111111101" "01001011010011111110100100101010" "01011111101111110010000000011110" "01001110001010101010111100001111" "01000010110110101110111100011011" "00001110000010100010111100010010" "11011110111000110010101011001111" "00011001111100101110001011101111" "10011011111011001110110011111011" "10111100110111101111101000111101" "00010100110000110001011110010011" "11010001110100101111000110110100" "10111011001011011110111001100000" "11111110000110111111000000101111" "00010101000101001111000000100000" "11111100111011111110110111011011" "00001111110111010000111011111110" "00011101101111100000111000100001" "10101100000100111111001110011111" "00011101010000111111110110010101" "11111011010011011111111011010000" "01001110111110101111111100110000" "10010001111010111100001011110001" "11100000000111110001011000000011" "11100111001111101010000011111111" "00101011010011001111001111000000" "00011110010111010011111100001101" "00111110111000000011000010011001" "11100010000011001111110110110000" "11011101110011111100101111101111" "00101110010110010000000100010001" "00010000000100010000010110011001" "11110000001110101100000011010010" "11100001111011101110010111000010" "00000100010010011110000000100001" "10111101000000101111001110011010" "00001111001010111100110011110011" "00010010111011011010011110111111" "11110000001000000001110011001111" "11110110000111011001001111100011" "00110000111000011110000001000001" "11111110001111110000010100010100" "11110000110111110001111111111100" "10110111111110101001010011011110" "00010000101100011101000100110001" "00001110000011101111001111110001" "11010000100100101111000100111010" "11010111110110111001010111010001" "00000101100101010010111111110010" "00001101001100101100001011101101" "00011100011000010000000111000010" "10110001001011110110111101101011" "00111011110110110000000101011111" "11101110110100010001000011111010" "11100100011111100011001011001100" "00110001110000000111101101111101" "00111101100111011010000010111111" "11010001111100011101111011111101" "00000011101111110001001000011100" "11010010110100000011111111111101" "11110000001011011100010011100001" "11110000000111101001011000010000" "00111110000000010010000111001101" "11111110111100011100001100001011" "00101110110000010011111011111111" "11100001110111011100111111110010" "00001111111100010100000111001111" "00010000110011111110000000010000" "00000001001000100011101111000010" "00101110000111011011111111011110" "00111100110011010001111111101111" "11101110000010101101110111110011" "11010001001000011101000110110010" "00101110010011010000110100010000" "11110011000000011111111100001110" "11010001000100110001000011010101" "11100101110111101111111000010000" "00011111111011010000000100000100" "11101101110000011110111000110001" "11111111001000011101000011000000" "11010011000111010000000100001111" "00001101110111010000001100000011" "11110000110000001011001001001111" "10111110010000011110001011001011" "11110010110111011101000011110010" "00011110111011101101010000100001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 425
set hasByteEnable 0
set MemName convDSPOpt_4_convcsw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "00000001101111110011111111101110" "11110010001100101111000100001011" "01011110110111100011000000011100" "00011101111111111110010000111010" "11100000111100111111000000001111" "11010100001000101111001110111100" "00000011101100000011110100001001" "11111111110100010001011101011001" "11101111110100100001001011100010" "00100000000000100100111111110010" "11010011001011100001000011101110" "01000000001111101100000100001110" "00011111111000110101111000000101" "01011010111100000000001100101101" "00001111001011011101101101101111" "00000100101100011111001111010001" "10011001000110100111110111000011" "00111001101111011101001111111111" "10100001000011000010111000101011" "01010000110010111111101110011100" "10011111110011110001111110111100" "00001100101111100011110100111011" "11101110111100010010111100000001" "00001101110111000000000111111101" "01000101001100010000010000000100" "00111101000011100000111100110001" "00001101011011010001000000011111" "11111101001100101111010001000000" "00110110001000000010010000000010" "00110000000100001111000100110010" "00101100010011110010001111101101" "11110010010100011110010000100001" "00100100000011100001010000010000" "01100001000111110011001000010001" "00101100010011110000010011111110" "00010100000011010010111001001111" "11101110010011111111000100001110" "11101110111011110001111100100011" "11011101001100010010110111101101" "00011110000111011110100100000011" "11101011000000100000000011011010" "11100000111111111011001000101111" "01101010110100000001101111101001" "01001101011011011100111000010001" "00111110000001110111111100000001" "00110000110111110011000110010000" "01110010111100110001110111011011" "00011111001000111101011111111011" "11101110011001000110001000111110" "11011111000011001010111011111001" "01010100111001000100101110100001" "00100100111111111101111100100111" "11100001001101010110000000101001" "11000000000111100000111111001100" "00111111001000010101000111010010" "11010111111100111110111000010001" "10111101001001001101111011011001" "10111110001011010110000011101101" "00101110000100010100001100010011" "10010010101100100010111111110000" "00110001111111111011111111100000" "00110010111111111011111010111100" "11111011010010110001111111001101" "11110100110010010000110100010100" "00011100110011011100111000010100" "00110001111111011100001110011100" "01010000111010110001000000001110" "00101110111110100000111111110000" "01000001110100001001000000010001" "11100010011011111110010011011010" "11101100111011000100001100000000" "11010011000000001100001001100010" "00000100110111110000111100001111" "00011111111111110000101000001110" "10010001111011111111000011110010" "11010100110000101110101111011101" "00000101100110101001000011110111" "10110101111010010000100100001001" "00110010110111111011011101100110" "11010001111000100000011110101111" "11110101111011111100111011001111" "10100111011000010001111011101110" "11001001110111011011011100110011" "01010010110100011101000111110110" "00000010111000000000110000011110" "00100101010000101011011011100000" "01100100001000100000000101010001" "11101111001000010001011111000101" "01100010011101000011000011110011" "11100011111000011111011010011011" "00111001111000000001010011100011" "10010101000101011111011111101110" "00000010101011110010111000000100" "11100001000100001010001010101101" "11111101000100110100001011100101" "11110110110100111111011100000001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 426
set hasByteEnable 0
set MemName convDSPOpt_4_convctx
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "01010100011111101011111100010001" "00111110111011110010111100001110" "11110001000110110000111000000000" "11100111100111110110000000101011" "11100000100100011001111011100111" "11000100111100100110111101111101" "00011111110111011100001100010000" "11010110100100110001011101001100" "11010010110110101001110111001110" "00010011001100110000110001000101" "11001101110011001111000101000000" "00111111111000000100010111100111" "00110101001011110001111100000010" "00101111001111010000001000011110" "11110011000000100000111001100001" "00000011110100100011001000001111" "10011110001110010000110000100010" "00111010010000110000010100111110" "11010001001100010000111000110000" "01001110101110100100111110110000" "10010001101110111001110111011011" "00011101100100100000000100101111" "11010000000000000011110111010000" "11111110101111000011111111001100" "11100010001011111100111010010000" "00001001100111111110101111011101" "10111111000011010011110111001001" "11111011101110111100000000010000" "00010011000111011111110010011101" "00111111110011111111110111111010" "10111010110011000011110110011001" "00101010111111111001000011100101" "11100001111000100011101110101110" "01101111111011111110111011101011" "11011010101100010000111010011010" "00111100111111001001111111110001" "11011101000100010010111011011100" "00110101001011010000111100000000" "01000101001101000001110111011111" "00010111010011111111101000000000" "01010000000000110010111011110000" "11010001000011010000001100101101" "01110111111100101111000011011111" "10100111111000000000010000001101" "01101111110000111001111100000111" "11010111000011000001111100101111" "01110001101100011011011001000001" "11000000101101010000011000000011" "11001010011110101110001111100100" "00111110111100001100010001100100" "01011111101100001100110011110011" "11100001001000100000111000000011" "11111111000011010101110100001011" "11101111000111010001111100101100" "00111111111000110011001111100001" "10100010001101000001101000010000" "00011110110000110000100110111001" "00010000001110010011000000011111" "11010100001011100010010111010010" "10010000000000101110000011001011" "11110010000110110000111011100000" "00000011111100010101111100011111" "11001101001111101111111111101110" "00010101101111110000000101000000" "00111100000011001101111100110001" "00101101101111010000001010111001" "00001101010011011101001100111111" "00010001000111100100000000010001" "01001111000011101101000100010001" "00010000000000011100011010111010" "11101110000100000001011100100011" "11110110000000101111011000111111" "00010001001000011101111111010010" "11110010001000001111001001001111" "11101100000100010010110100101111" "00010000010100000001101100100010" "00111100010001010001010111010010" "10010010111111010000000000011101" "00001100011111010001111100101100" "00100000011000100000000100100000" "00100000010000100000000011101101" "11110101010011001100111111110001" "11101111011011011101110000011001" "00000001010000001110000100101011" "11111111110101000100011011110000" "11000001000100001110101111000001" "00000010000110111111110000100010" "11110001011111101101011000010001" "00100001001000010011010100001101" "11010001000000000010111010011011" "00100010111010101111111011100011" "11001101011100001110010100011011" "11110001111111011111001100110001" "11010001000000001100111110111110" "11010000101000010001110111010001" "00010011111100001111001000001011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 427
set hasByteEnable 0
set MemName convDSPOpt_4_convcux
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 96
set AddrWd 7
set TrueReset 0
set IsROM 1
set ROMData { "11000011110111101101110100100001" "11011111110100010111101100010000" "10110000111011001101111000000000" "00001101001111100100001100010000" "11100010100100011010000111100001" "11110000110000100100000001001111" "10111100110100000000010001101111" "00001111000000011111001000101110" "00110000101111001110101111100010" "01000010000011011100110111110000" "11100001000111000011001100101111" "00110000111011000000000111100000" "11110001000010110011111100110001" "11101111000111011101000011101101" "11101110111000100101000000100001" "00111011001111110010111100010011" "10010000000010100001110001001011" "11011110001110110000000100111010" "10100010001100010110111000101101" "01010000000111010110111010110111" "10100010111011101101110100001101" "11011101101100001111001000101100" "10101111010000110011000011011100" "00101111110000010000111000010010" "11101111000001010001001000100011" "01011111000010010100110111100000" "01010001001111110010000111101011" "00010001111111100000001001000000" "00100000001001010010000111011111" "00110010001011000100000000010000" "01110011000000000011000011011110" "11110101111000011010010100100000" "01111111001001100001001111100100" "00000010001011000111001000100000" "01110000001000101101011000100000" "11010110111001000011011000010010" "00010010111111100101110100110000" "00010010010100001110110100010010" "00010010000001101111101100100011" "00010001000100000011110111110000" "00000011110010101101000000100000" "10100100001011110001111111111110" "00010001000000111110000100100100" "00011011000000100100000100001110" "01000001001010011011110000101111" "10110100111100011101110011101101" "11100110110101001101011101010011" "00001110111000010011000100001111" "11101101000010010001000110100011" "01001111111011111011110100010110" "00110001010010011011110011110100" "00100000011111110001000000011111" "01000000111010111101001111111110" "01101101000000100011111000010100" "00101110000010011101010011000001" "10011101111111100000111111111100" "01101110100101111101000000111001" "01000010001110110000101111100001" "10100000111110100011111111110001" "10011011000011110001111111111001" "11100001000111110000000100000011" "11110001111100100111000100001010" "11111100011011001011000011000011" "00000010101111100110000100001100" "00111101111111101100000000010010" "00011101111011110111010011001001" "11100011001111111101111111100010" "00111101110011000101000111010000" "00110110111011011100000000110001" "00110001110111110111011011001010" "01010111000000011101000100100001" "00100000000001011110000111110010" "00011110001100000000111011110010" "11110000111110101111011011100001" "00001110000100010010101000111110" "00011110000111100100110000110000" "11101010010100100101111011001110" "00001010001000011101011111100011" "11100010110001010011110011011001" "00011011001011100001100100101110" "10010000111011110111100111111110" "01111001110101100010010011110100" "10010011110011110101100111000011" "11111110111011010000100100111011" "00011011111011001101111010010000" "11010011000000001111110100101110" "11100101111100001100101111010110" "11110000111111111100010011111100" "11111100110011111011111010101110" "11000101111000101100010111101010" "11100011111011111110111110110100" "00000001000100011110011000011110" "11000010111111011100101011110001" "11110001001000001101111000001101" "00000000101100011111111010100101" "00010010110100010010010100011011" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.352
set ClkPeriod 4
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name vec_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vec_V_V \
    op interface \
    ports { vec_V_V_dout { I 64 vector } vec_V_V_empty_n { I 1 bit } vec_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name out_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_V_V \
    op interface \
    ports { out_V_V_din { O 64 vector } out_V_V_full_n { I 1 bit } out_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name reps \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reps \
    op interface \
    ports { reps_dout { I 32 vector } reps_empty_n { I 1 bit } reps_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


