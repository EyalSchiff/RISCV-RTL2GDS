if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name bc_libset\
   -timing\
    [list ${::IMEX::libVar}/mmmc/sc9_cln65lp_base_rvt_ff_typical_min_1p32v_m40c.lib\
    ${::IMEX::libVar}/mmmc/sc9_cln65lp_base_lvt_ff_typical_min_1p32v_m40c.lib\
    ${::IMEX::libVar}/mmmc/sc9_cln65lp_base_hvt_ff_typical_min_1p32v_m40c.lib\
    ${::IMEX::libVar}/mmmc/sp_hde_16384_m16_ff_1p32v_1p32v_m40c.lib\
    ${::IMEX::libVar}/mmmc/sp_hse_8192_m16_ff_1p32v_1p32v_m40c.lib\
    ${::IMEX::libVar}/mmmc/tpdn65lpnv2od3bc.lib]
create_library_set -name wc_libset\
   -timing\
    [list ${::IMEX::libVar}/mmmc/sc9_cln65lp_base_rvt_ss_typical_max_0p90v_125c.lib\
    ${::IMEX::libVar}/mmmc/sc9_cln65lp_base_lvt_ss_typical_max_0p90v_125c.lib\
    ${::IMEX::libVar}/mmmc/sc9_cln65lp_base_hvt_ss_typical_max_0p90v_125c.lib\
    ${::IMEX::libVar}/mmmc/sp_hde_16384_m16_ss_1p08v_1p08v_125c.lib\
    ${::IMEX::libVar}/mmmc/sp_hse_8192_m16_ss_1p08v_1p08v_125c.lib\
    ${::IMEX::libVar}/mmmc/tpdn65lpnv2od3wc.lib]
create_library_set -name tc_libset\
   -timing\
    [list ${::IMEX::libVar}/mmmc/sc9_cln65lp_base_rvt_tt_typical_max_1p00v_25c.lib\
    ${::IMEX::libVar}/mmmc/sc9_cln65lp_base_lvt_tt_typical_max_1p00v_25c.lib\
    ${::IMEX::libVar}/mmmc/sc9_cln65lp_base_hvt_tt_typical_max_1p00v_25c.lib\
    ${::IMEX::libVar}/mmmc/sp_hde_16384_m16_tt_1p20v_1p20v_25c.lib\
    ${::IMEX::libVar}/mmmc/sp_hse_8192_m16_tt_1p20v_1p20v_25c.lib\
    ${::IMEX::libVar}/mmmc/tpdn65lpnv2od3tc.lib]
create_timing_condition -name wc_timing_condition\
   -library_sets [list wc_libset]
create_timing_condition -name bc_timing_condition\
   -library_sets [list bc_libset]
create_timing_condition -name tc_timing_condition\
   -library_sets [list tc_libset]
create_rc_corner -name tc_rc_corner\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -temperature 25\
   -qrc_tech ${::IMEX::libVar}/mmmc/tc_rc_corner/qrcTechFile
create_rc_corner -name bc_rc_corner\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -temperature -40\
   -qrc_tech ${::IMEX::libVar}/mmmc/bc_rc_corner/qrcTechFile
create_rc_corner -name wc_rc_corner\
   -pre_route_res 1\
   -post_route_res 1\
   -pre_route_cap 1\
   -post_route_cap 1\
   -post_route_cross_cap 1\
   -pre_route_clock_res 0\
   -pre_route_clock_cap 0\
   -temperature 125\
   -qrc_tech ${::IMEX::libVar}/mmmc/wc_rc_corner/qrcTechFile
create_delay_corner -name wc_dly_corner\
   -timing_condition {wc_timing_condition}\
   -rc_corner wc_rc_corner
create_delay_corner -name tc_dly_corner\
   -timing_condition {tc_timing_condition}\
   -rc_corner tc_rc_corner
create_delay_corner -name bc_dly_corner\
   -timing_condition {bc_timing_condition}\
   -rc_corner bc_rc_corner
create_constraint_mode -name functional_mode\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/lp_riscv_top.sdc]
create_analysis_view -name bc_analysis_view -constraint_mode functional_mode -delay_corner bc_dly_corner
create_analysis_view -name tc_analysis_view -constraint_mode functional_mode -delay_corner tc_dly_corner
create_analysis_view -name wc_analysis_view -constraint_mode functional_mode -delay_corner wc_dly_corner
set_analysis_view -setup [list wc_analysis_view] -hold [list bc_analysis_view]
