# This script segment is generated automatically by AutoPilot

set id 238
set name ultra_net_mul_mulbml
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 26
set in0_signed 1
set in1_width 15
set in1_signed 0
set out_width 41
set exp i0*i1
set arg_lists {i0 {26 1 +} i1 {15 0 +} p {41 1 +} acc {0} }
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
    id 255 \
    name wpack_0_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_0_V_read \
    op interface \
    ports { wpack_0_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name wpack_1_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_1_V_read \
    op interface \
    ports { wpack_1_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name wpack_2_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_2_V_read \
    op interface \
    ports { wpack_2_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name wpack_3_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_3_V_read \
    op interface \
    ports { wpack_3_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name wpack_4_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_4_V_read \
    op interface \
    ports { wpack_4_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name wpack_5_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_5_V_read \
    op interface \
    ports { wpack_5_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name wpack_6_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_6_V_read \
    op interface \
    ports { wpack_6_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name wpack_7_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_7_V_read \
    op interface \
    ports { wpack_7_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name wpack_8_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_8_V_read \
    op interface \
    ports { wpack_8_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name wpack_9_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_9_V_read \
    op interface \
    ports { wpack_9_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name wpack_10_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_10_V_read \
    op interface \
    ports { wpack_10_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name wpack_11_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_11_V_read \
    op interface \
    ports { wpack_11_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name wpack_12_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_12_V_read \
    op interface \
    ports { wpack_12_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name wpack_13_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_13_V_read \
    op interface \
    ports { wpack_13_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name wpack_14_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_14_V_read \
    op interface \
    ports { wpack_14_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name wpack_15_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wpack_15_V_read \
    op interface \
    ports { wpack_15_V_read { I 26 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name ipack_0_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_0_V_read \
    op interface \
    ports { ipack_0_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name ipack_1_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_1_V_read \
    op interface \
    ports { ipack_1_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name ipack_2_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_2_V_read \
    op interface \
    ports { ipack_2_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name ipack_3_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_3_V_read \
    op interface \
    ports { ipack_3_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name ipack_4_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_4_V_read \
    op interface \
    ports { ipack_4_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name ipack_5_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_5_V_read \
    op interface \
    ports { ipack_5_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name ipack_6_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_6_V_read \
    op interface \
    ports { ipack_6_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name ipack_7_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_7_V_read \
    op interface \
    ports { ipack_7_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name ipack_8_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_8_V_read \
    op interface \
    ports { ipack_8_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name ipack_9_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_9_V_read \
    op interface \
    ports { ipack_9_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name ipack_10_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_10_V_read \
    op interface \
    ports { ipack_10_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name ipack_11_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_11_V_read \
    op interface \
    ports { ipack_11_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name ipack_12_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_12_V_read \
    op interface \
    ports { ipack_12_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name ipack_13_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_13_V_read \
    op interface \
    ports { ipack_13_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name ipack_14_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_14_V_read \
    op interface \
    ports { ipack_14_V_read { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name ipack_15_V_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ipack_15_V_read \
    op interface \
    ports { ipack_15_V_read { I 15 vector } } \
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


