# This script segment is generated automatically by AutoPilot

set id 104
set name ultra_net_mul_multde
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 28
set in0_signed 1
set in1_width 8
set in1_signed 0
set out_width 36
set exp i0*i1
set arg_lists {i0 {28 1 +} i1 {8 0 +} p {36 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
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
    id 114 \
    name invec_0_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_invec_0_V_read \
    op interface \
    ports { invec_0_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name invec_1_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_invec_1_V_read \
    op interface \
    ports { invec_1_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name invec_2_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_invec_2_V_read \
    op interface \
    ports { invec_2_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name invec_3_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_invec_3_V_read \
    op interface \
    ports { invec_3_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name invec_4_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_invec_4_V_read \
    op interface \
    ports { invec_4_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name invec_5_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_invec_5_V_read \
    op interface \
    ports { invec_5_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name invec_6_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_invec_6_V_read \
    op interface \
    ports { invec_6_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name invec_7_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_invec_7_V_read \
    op interface \
    ports { invec_7_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name invec_8_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_invec_8_V_read \
    op interface \
    ports { invec_8_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name w0vec_0_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w0vec_0_V_read \
    op interface \
    ports { w0vec_0_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name w0vec_1_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w0vec_1_V_read \
    op interface \
    ports { w0vec_1_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name w0vec_2_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w0vec_2_V_read \
    op interface \
    ports { w0vec_2_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name w0vec_3_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w0vec_3_V_read \
    op interface \
    ports { w0vec_3_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name w0vec_4_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w0vec_4_V_read \
    op interface \
    ports { w0vec_4_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name w0vec_5_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w0vec_5_V_read \
    op interface \
    ports { w0vec_5_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name w0vec_6_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w0vec_6_V_read \
    op interface \
    ports { w0vec_6_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name w0vec_7_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w0vec_7_V_read \
    op interface \
    ports { w0vec_7_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name w0vec_8_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w0vec_8_V_read \
    op interface \
    ports { w0vec_8_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name w1vec_0_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1vec_0_V_read \
    op interface \
    ports { w1vec_0_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name w1vec_1_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1vec_1_V_read \
    op interface \
    ports { w1vec_1_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name w1vec_2_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1vec_2_V_read \
    op interface \
    ports { w1vec_2_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name w1vec_3_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1vec_3_V_read \
    op interface \
    ports { w1vec_3_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name w1vec_4_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1vec_4_V_read \
    op interface \
    ports { w1vec_4_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name w1vec_5_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1vec_5_V_read \
    op interface \
    ports { w1vec_5_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name w1vec_6_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1vec_6_V_read \
    op interface \
    ports { w1vec_6_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name w1vec_7_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1vec_7_V_read \
    op interface \
    ports { w1vec_7_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name w1vec_8_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1vec_8_V_read \
    op interface \
    ports { w1vec_8_V_read { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
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


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


