set design(TOPLEVEL) "lp_riscv_top"
set runtype "pnr"
set debug_file "debug.txt"

# Load general procedures
source ../scripts/procedures.tcl -quiet

###############################################
# Starting Stage - Load defines and technology
###############################################
enics_start_stage "start"

# Load the specific definitions for this project
source ../inputs/$design(TOPLEVEL).defines -quiet

# Load the library paths and definitions for this technology
source $design(libraries_dir)/libraries.$TECHNOLOGY.tcl -quiet
source $design(libraries_dir)/libraries.$SC_TECHNOLOGY.tcl -quiet
source $design(libraries_dir)/libraries.$SRAM_TECHNOLOGY.tcl -quiet
if {$design(FULLCHIP_OR_MACRO)=="FULLCHIP"} {
    source $design(libraries_dir)/libraries.$IO_TECHNOLOGY.tcl -quiet
}
set_library_unit -time 1ns -cap 1pf

#############################################
#       Print values to debug file
#############################################
set var_list {runtype}
set dic_list {paths tech tech_files design}
enics_print_debug_data w $debug_file "after everything was loaded" $var_list $dic_list

############################################
# Init Design
############################################
enable_metrics -on
enics_start_stage "init_design"

# Global Nets
set_db init_ground_nets $design(all_ground_nets)
set_db init_power_nets $design(all_power_nets)

# MMMC
enics_message "Suppressing the following messages that are reported due to the LIB definitions:"
enics_message "$tech(LIB_SUPPRESS_MESSAGES_INNOVUS)"
set_message -suppress -id $tech(LIB_SUPPRESS_MESSAGES_INNOVUS)
enics_message "Reading MMMC File" medium
read_mmmc $design(mmmc_view_file)

# LEFs
enics_message "Suppressing the following messages that are reported due to the LEF definitions:"
enics_message "$tech(LEF_SUPPRESS_MESSAGES_INNOVUS)"
set_message -suppress -id $tech(LEF_SUPPRESS_MESSAGES_INNOVUS)
enics_message "Reading LEF abstracts"
read_physical -lef $tech_files(ALL_LEFS)

# Post Synthesis Netlist
enics_message "Reading the Post Synthesis netlist at $design(postsyn_netlist)" medium
read_netlist $design(postsyn_netlist)

# Import and initialize design
enics_message "Running init_design command" medium
init_design

# Load general settings
source ../scripts/settings.tcl -quiet

# Create cost groups
enics_default_cost_groups

# Connect Global Nets
enics_message "Connecting Global Nets" medium
# Connect standard cells to VDD and GND
connect_global_net $design(digital_gnd) -pin $tech(STANDARD_CELL_GND) -all -verbose
connect_global_net $design(digital_vdd) -pin $tech(STANDARD_CELL_VDD) -all -verbose
# Connect tie cells
connect_global_net $design(digital_vdd) -type tiehi -all -verbose
connect_global_net $design(digital_gnd) -type tielo -all -verbose

# Connect SRAM PG Pins
connect_global_net $design(digital_vdd) -pin $tech(SRAM_VDDCORE_PIN)      -all -verbose
connect_global_net $design(digital_vdd) -pin $tech(SRAM_VDDPERIPHERY_PIN) -all -verbose
connect_global_net $design(digital_gnd) -pin $tech(SRAM_GND_PIN)          -all -verbose

if {$design(FULLCHIP_OR_MACRO)=="FULLCHIP"} {
    # Connect pads to IO and CORE voltages
    #    -netlist_override is needed, since GENUS connects these pins to UNCONNECTED during synthesis
    connect_global_net $design(io_vdd)      -pin $tech(IO_VDDIO)   -hinst i_${design(IO_MODULE)} -netlist_override -verbose
    connect_global_net $design(io_gnd)      -pin $tech(IO_GNDIO)   -hinst i_${design(IO_MODULE)} -netlist_override -verbose
    connect_global_net $design(digital_vdd) -pin $tech(IO_VDDCORE) -hinst i_${design(IO_MODULE)} -netlist_override -verbose
    connect_global_net $design(digital_gnd) -pin $tech(IO_GNDCORE) -hinst i_${design(IO_MODULE)} -netlist_override -verbose
}

enics_create_stage_reports -save_db no -report_timing no -pop_snapshot yes

############################################
# Floorplan
############################################
enics_start_stage "floorplan"
source ../inputs/$design(TOPLEVEL).floorplan.defines -quiet

# Specify Floorplan
create_floorplan \
    -core_size [list 2000.0 1600.0 150.0 150.0 150.0 150.0] \
    -core_margins_by die \
    -flip s \
    -match_to_site

gui_fit

# Set up pads (for fullchip) or pins (for macro)
if {$design(FULLCHIP_OR_MACRO)=="FULLCHIP"} {
    enics_message "Defining IO Ring" medium
    # Reload the IO file after resizing the floorplan
    read_io_file $design(io_file)
    # Add IO Fillers
    add_io_fillers -cells $tech(IO_FILLERS) -prefix IOFILLER
} elseif {$design(FULLCHIP_OR_MACRO)=="MACRO"} {
    enics_message "Spreading Pins around Macro" medium
    # Spread pins
    set pins_to_spread  [get_db ports .name]
    edit_pin -spread_type start -start {0 0} -spread_direction clockwise -layer {3 4} \
        -pin $pins_to_spread -fix_overlap 1 -spacing 6
}
gui_redraw

# Check the design
check_legacy_design -all -out_dir $design(reports_dir)/$this_run(stage)

################################################
#  Place Hard Macros
################################################
enics_message "Placing Hard Macros" medium

delete_relative_floorplan -all

set design(imem0) "lp_riscv/iccm_ram_wrapper_iccm_ram_0_sram_sp_16384x32"
set design(imem1) "lp_riscv/iccm_ram_wrapper_iccm_ram_1_sram_sp_16384x32"

set design(dmem0) "lp_riscv/dccm_ram_wrapper_dccm_ram_0_sram_sp_8192x32"
set design(dmem1) "lp_riscv/dccm_ram_wrapper_dccm_ram_1_sram_sp_8192x32"
set design(dmem2) "lp_riscv/dccm_ram_wrapper_dccm_ram_2_sram_sp_8192x32"
set design(dmem3) "lp_riscv/dccm_ram_wrapper_dccm_ram_3_sram_sp_8192x32"

set imem0_name [get_db [get_db insts $design(imem0)] .name]
set imem1_name [get_db [get_db insts $design(imem1)] .name]  ;# CHANGED: add missing imem1_name resolve

# imem0 near top-left
create_relative_floorplan -ref_type core_boundary -ref $design(TOPLEVEL) -place $imem0_name \
    -horizontal_edge_separate {2 -80 2} \
    -vertical_edge_separate {1 50 1} -orient R0

# imem1 below imem0
create_relative_floorplan -ref_type object -ref $imem0_name -place $imem1_name \
    -horizontal_edge_separate {0 -80 2} \
    -vertical_edge_separate {0 0 0} -orient MX

set dmem0_name "lp_riscv/dccm_ram_wrapper_dccm_ram_0/sram_sp_8192x32"
set dmem1_name "lp_riscv/dccm_ram_wrapper_dccm_ram_1/sram_sp_8192x32"
set dmem2_name "lp_riscv/dccm_ram_wrapper_dccm_ram_2/sram_sp_8192x32"
set dmem3_name "lp_riscv/dccm_ram_wrapper_dccm_ram_3/sram_sp_8192x32"

# dmem0 near top-right
create_relative_floorplan -ref_type core_boundary -ref $design(TOPLEVEL) -place $dmem0_name \
    -horizontal_edge_separate {2 -80 2} \
    -vertical_edge_separate {3 -50 3} -orient R0

# dmem1 below dmem0
create_relative_floorplan -ref_type object -ref $dmem0_name -place $dmem1_name \
    -horizontal_edge_separate {0 -80 2} \
    -vertical_edge_separate {0 0 0} -orient MX

# dmem2 below dmem1
create_relative_floorplan -ref_type object -ref $dmem1_name -place $dmem2_name \
    -horizontal_edge_separate {0 -80 2} \
    -vertical_edge_separate {0 0 0} -orient R0

# dmem3 below dmem2
create_relative_floorplan -ref_type object -ref $dmem2_name -place $dmem3_name \
    -horizontal_edge_separate {0 -80 2} \
    -vertical_edge_separate {0 0 0} -orient MX

# Add rings and halos around macros
enics_message "Adding Rings Around Hard Macros and creating Halos"

deselect_obj -all
select_obj $imem0_name
add_rings -around selected -type block_rings -nets "$design(digital_gnd) $design(digital_vdd)" \
    -layer {bottom M1 top M1 right M2 left M2} -width 3 -spacing 0.5
create_place_halo -halo_deltas {10 10 10 10} -insts $imem0_name -snap_to_site

deselect_obj -all
select_obj $imem1_name
add_rings -around selected -type block_rings -nets "$design(digital_gnd) $design(digital_vdd)" \
    -layer {bottom M1 top M1 right M2 left M2} -width 3 -spacing 0.5
create_place_halo -halo_deltas {10 10 10 10} -insts $imem1_name -snap_to_site

deselect_obj -all
select_obj $dmem0_name
add_rings -around selected -type block_rings -nets "$design(digital_gnd) $design(digital_vdd)" \
    -layer {bottom M1 top M1 right M2 left M2} -width 3 -spacing 0.5
create_place_halo -halo_deltas {10 10 10 10} -insts $dmem0_name -snap_to_site

deselect_obj -all
select_obj $dmem1_name
add_rings -around selected -type block_rings -nets "$design(digital_gnd) $design(digital_vdd)" \
    -layer {bottom M1 top M1 right M2 left M2} -width 3 -spacing 0.5
create_place_halo -halo_deltas {10 10 10 10} -insts $dmem1_name -snap_to_site

deselect_obj -all
select_obj $dmem2_name
add_rings -around selected -type block_rings -nets "$design(digital_gnd) $design(digital_vdd)" \
    -layer {bottom M1 top M1 right M2 left M2} -width 3 -spacing 0.5
create_place_halo -halo_deltas {10 10 10 10} -insts $dmem2_name -snap_to_site

deselect_obj -all
select_obj $dmem3_name
add_rings -around selected -type block_rings -nets "$design(digital_gnd) $design(digital_vdd)" \
    -layer {bottom M1 top M1 right M2 left M2} -width 3 -spacing 0.5
create_place_halo -halo_deltas {10 10 10 10} -insts $dmem3_name -snap_to_site

# Connect VDD/GND connections on macros to rings
enics_message "Connecting Block Pins of hard macros to Power/Ground"
route_special -connect {block_pin} -nets "$design(digital_gnd) $design(digital_vdd)" \
    -block_pin_layer_range {1 4} \
    -block_pin on_boundary \
    -detailed_log

###############################################
# Connect Power
###############################################

# Create Core Ring
enics_message "Creating Core Rings" medium
add_rings -type core_rings -nets $design(core_ring_nets) -center 1 -follow core \
    -layer $design(core_ring_layers) -width $design(core_ring_width) -spacing $design(core_ring_spacing)

# Connect Follow Pins
enics_message "Routing Follow Pins" medium
route_special -connect { core_pin } -nets  "$design(digital_gnd) $design(digital_vdd)" -detailed_log

if {$design(FULLCHIP_OR_MACRO)=="FULLCHIP"} {
    # Connect pads to the rings
    enics_message "Connecting PG Pads to Core Ring" medium
    route_special -connect {pad_pin} -nets $design(core_ring_nets) -pad_pin_port_connect all_geom -detailed_log
}

# Add End Caps
if {$tech(LIBRARY_HAS_ENDCAPS)=="YES"} {
    enics_message "Adding End Caps" medium
    add_endcaps
}

# Add Well Taps
enics_message "Adding Well Taps" medium
add_well_taps -cell $tech(WELLTAP)  -checker_board -prefix $design(well_tap_prefix) \
    -cell_interval [expr 2 * $tech(WELLTAP_RULE)]
check_well_taps -max_distance $tech(WELLTAP_RULE)

# Add Stripes
enics_message "Creating Power Grid" high
add_stripes -layer [lindex [get_db layers .name] 1] -direction vertical -nets $design(M2_stripe_nets) \
    -width $design(M2_stripes_width) -spacing $design(M2_stripes_spacing) \
    -start_from left -start_offset $design(M2_stripes_from_left) \
    -set_to_set_distance $design(M2_stripes_interval) -create_pins true \
    -max_same_layer_jog_length 10.0 \
    -block_ring_bottom_layer_limit M2

set route_halo_width 0.5
foreach net_name $design(M2_stripe_nets) {
    edit_net -net $net_name \
        -route_halo_width $route_halo_width \
        -route_halo_top_layer M2 \
        -route_halo_bottom_layer M2
}

verify_drc  ;# CHANGED: add DRC check right after PG (before placement)

# Check DRC/LVS
enics_create_stage_reports -pop_snapshot yes

# Export floorplan def
write_def -floorplan -no_std_cells "$design(floorplan_def)"

############################################
# Placement
############################################
enics_start_stage "placement"

# Add M2 routing blockages around vertical power stripes to prevent M2 routing DRCs near them:
enics_message "Creating M2 blockage around stripes"
deselect_obj -all
deselect_routes
select_routes -shapes stripe -layer M2 -nets $design(M2_stripe_nets)
foreach stripe [get_db selected] {
    create_route_blockage -name M2_pwr_stripe_route_blk \
        -layers "M1 M2" \
        -spacing 0.2 \
        -area [get_db $stripe .rect]
}
deselect_routes

enics_message "Starting place_opt_design" medium
set_db place_global_cong_effort high                 ;# CHANGED
set_db place_detail_legalization_inst_gap 1          ;# CHANGED
place_opt_design -report_dir "$design(reports_dir)/placement/place_opt_design"
refine_place -congestion                             ;# CHANGED
enics_message "Finished place_opt_design"

# Add Tie Cells
enics_message "Adding Tie Cells" medium
add_tieoffs

# Fix DRV
enics_message "Fixing DRVs before CTS" medium
opt_design -pre_cts -drv

enics_create_stage_reports -pop_snapshot yes

############################################
# Clock Tree Synthesis
############################################
enics_start_stage "cts"

enics_message "Reading in clock spec from $design(clock_tree_spec)"
reset_ccopt_config
source $design(clock_tree_spec)

enics_message "Starting ccopt_design" medium
ccopt_design -report_dir "$design(reports_dir)/cts/ccopt_design"
enics_message "Finished running ccopt_design"

enics_create_stage_reports -pop_snapshot yes

############################################
# Post CTS Hold Fixing
############################################
enics_start_stage "post_cts_hold"
opt_design -post_cts -hold
enics_message "Finished post CTS hold optimization"

enics_create_stage_reports -pop_snapshot yes

############################################
# Route
############################################
enics_start_stage "route"

set_db route_design_with_timing_driven true
set_db route_design_with_si_driven true
set_db route_design_detail_use_multi_cut_via_effort medium

enics_message "Starting Route Design" medium
route_design
enics_message "Finished running Route Design"

enics_create_stage_reports -check_drc yes -check_connectivity yes -pop_snapshot yes

############################################
# Post Route Optimization
############################################
enics_start_stage "post_route_opt"
opt_design -post_route -setup -hold
enics_message "Finished post Route hold optimization"

enics_message "Running Post Route DFM Optimizations" medium
set_db route_design_with_timing_driven false
set_db route_design_with_si_driven false
set_db route_design_detail_post_route_spread_wire true
set_db route_design_detail_use_multi_cut_via_effort high
route_design -wire_opt
route_design -via_opt
set_db route_design_detail_post_route_spread_wire false
set_db route_design_with_timing_driven true
set_db route_design_with_si_driven true
enics_message "Finished Running Post Route DFM Optimizations"

enics_create_stage_reports -check_drc yes -check_connectivity yes -pop_snapshot yes

############################################
# Export
############################################
enics_start_stage "signoff"

delete_route_blockages -name M2_pwr_stripe_route_blk

enics_message "Adding Fillers" medium
add_fillers -check_drc
set_db route_design_with_si_driven false
enics_message "Fixing DRCs after adding fillers" medium
route_eco -fix_drc

delete_assigns
delete_empty_hinst

enics_message "Exporting Design" medium
write_netlist $design(postroute_netlist)
write_sdf $design(postroute_sdf)
set_db write_stream_text_size 0.02
write_stream $design(export_dir)/signoff/$design(TOPLEVEL).gds

enics_create_stage_reports -check_drc yes -check_connectivity yes -pop_snapshot yes