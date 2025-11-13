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
# connect_global_net $design(digital_vdd) -type tiehi -pin $tech(STANDARD_CELL_VDD) -all -verbose 
# connect_global_net $design(digital_gnd) -type tielo -pin $tech(STANDARD_CELL_GND) -all -verbose 

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

# Power Intent
# read_power_intent -1801 $design(UPF_file)
# read_power_intent $design(CPF_file)
# commit_power_intent -verbose

# Don't Use and Size Only files
#    If Don't Use file exists
# source $design(dont_use_file)
#    If Size Only file exists
# source $design(size_only_file)

enics_create_stage_reports -save_db no -report_timing no -pop_snapshot yes

############################################
# Floorplan
############################################
enics_start_stage "floorplan"
source ../inputs/$design(TOPLEVEL).floorplan.defines -quiet

# If Floorplan DEF is available:
# read_def $design(floorplan_def)

# If SCAN DEF is available
# read_def $design(scan_def)


# Specify Floorpan
create_floorplan \
    -core_size [list 2500.0 1500.0 150.0 150.0 150.0 150.0] \
    -core_margins_by die \
    -flip s \
    -match_to_site

# create_floorplan -site $tech(STANDARD_CELL_SITE) -match_to_site \
#     -core_density_size $design(floorplan_ratio) $design(floorplan_utilization) {*}$design(floorplan_space_to_core)
gui_fit

# Set up pads (for fullchip) or pins (for macro)
if {$design(FULLCHIP_OR_MACRO)=="FULLCHIP"} {
	enics_message "Defining IO Ring" medium
# Reload the IO file after resizing the floorplan
	read_io_file $design(io_file)
	# Add IO Fillers
	add_io_fillers -cells $tech(IO_FILLERS) -prefix IOFILLER
	# Connect Pad Rings
	#route_special -connect {pad_ring} \
	#	-nets "$design(digital_gnd) $design(digital_vdd) $design(io_gnd) $design(io_vdd)"
} elseif {$design(FULLCHIP_OR_MACRO)=="MACRO"} {
	enics_message "Spreading Pins around Macro" medium
    # Spread pins
	set pins_to_spread  [get_db ports .name] ;#[get_object_name [get_ports]]
	#edit_pin -fix_overlap 1 -spread_direction clockwise -side Bottom -layer 4 -spread_type side 
	edit_pin -spread_type start -start {0 0} -spread_direction clockwise -layer {3 4}  \
        -pin $pins_to_spread -fix_overlap 1 -spacing 6

}
gui_redraw

# Check the design 
#    You can browse the HTML report with Firefox
check_legacy_design -all -out_dir $design(reports_dir)/$this_run(stage)

################################################
#  Place Hard Macros
################################################
# Place memories
enics_message "Placing Hard Macros" medium
#set_obj_floorplan_box Instance $design(imem0) 182 166 787 760

# Relative Floorplanning
# ----------------------
#  Note that edges are as follows:
#    0 - Bottom
#    1 - Left
#    2 - Top
#    3 - Right
#    Syntax: { ref_edge offset target_edge }
delete_relative_floorplan -all

set imem0_name [get_db [get_db insts $design(imem0)] .name]
# Place the imem0 macro 25u from the bottom and 25u from the left of the core boundary
create_relative_floorplan -ref_type core_boundary -ref $design(TOPLEVEL) -place $imem0_name \
    -horizontal_edge_separate {0  25  0} \
    -vertical_edge_separate {1  25  1} -orient MX

set imem1_name [get_db [get_db insts $design(imem1)] .name]
# Place the imem1 macro 25u above imem0
create_relative_floorplan -ref_type core_boundary -ref $design(TOPLEVEL) -place $imem1_name \
         -horizontal_edge_separate { 1 -25 1 } \
         -vertical_edge_separate { 1 25 1 } -orient R0


# TODO - relative fplan to dmem insts
set dmem0_name [get_db [get_db insts $design(dmem0)] .name]
set dmem1_name [get_db [get_db insts $design(dmem1)] .name]
create_relative_floorplan -ref_type core_boundary -ref $design(TOPLEVEL) -place $dmem0_name \
    -horizontal_edge_separate {0  25  0} \
    -vertical_edge_separate {2  -25  2} -orient MX

create_relative_floorplan -ref_type core_boundary -ref $design(TOPLEVEL) -place $dmem1_name \
    -horizontal_edge_separate {1  -25  1} \
    -vertical_edge_separate {2  -25  2} -orient R0



# Add rings and halos around macros
# NOTE: snap_to_site flag is important here, otherwise there will be a potential follow pins discontinuity
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

# TODO - add rings to dmem insts & place halo
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

# Connect VDD/GND connections on macros to rings
# NOTE: block_pin = on_boundary flag is required in order to connect to all power pins of the memories. 
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
# get_db -category add_rings *
add_rings -type core_rings -nets $design(core_ring_nets) -center 1 -follow core \
	-layer $design(core_ring_layers) -width $design(core_ring_width) -spacing $design(core_ring_spacing) 

# Connect Follow Pins 
#    (do this before connecting the pads, so the follow pin connections to the ring are nice)
# get_db -category route_special *
enics_message "Routing Follow Pins" medium
route_special -connect { core_pin } -nets  "$design(digital_gnd) $design(digital_vdd)" -detailed_log

if {$design(FULLCHIP_OR_MACRO)=="FULLCHIP"} {
    # Connect pads to the rings
    enics_message "Connecting PG Pads to Core Ring" medium
    route_special -connect {pad_pin} -nets $design(core_ring_nets) -pad_pin_port_connect all_geom -detailed_log
}

# Add End Caps
if {$tech(LIBRARY_HAS_ENDCAPS)=="YES"} {
    # get_db -category add_endcaps *
    enics_message "Adding End Caps" medium
    add_endcaps  
}

# Add Well Taps
# get_db -category add_well_taps *
enics_message "Adding Well Taps" medium
add_well_taps -cell $tech(WELLTAP)  -checker_board -prefix $design(well_tap_prefix) \
    -cell_interval [expr 2 * $tech(WELLTAP_RULE)] 
check_well_taps -max_distance $tech(WELLTAP_RULE)


# Add Stripes
# get_db -category add_stripes *
enics_message "Creating Power Grid" high

# NOTE: max_same_layer_jog_length = 10.0 is essential to prevent the
# M2 vertical stripes to go down to M1 with horizontal stripes -->
# leading to M1 shorts with standard cells. The alternative is to use
# block_ring_bottom_layer_limit = M2.
add_stripes -layer [lindex [get_db layers .name] 1] -direction vertical -nets $design(M2_stripe_nets) \
    -width $design(M2_stripes_width) -spacing $design(M2_stripes_spacing) \
    -start_from left -start_offset $design(M2_stripes_from_left) \
    -set_to_set_distance $design(M2_stripes_interval) -create_pins true \
    -max_same_layer_jog_length 10.0

# Check DRC/LVS
enics_create_stage_reports -pop_snapshot yes 

# Export floorplan def
#    This can be used for loading the floorplan in subsequent runs
#    And also as a basis for physically-aware synthesis
write_def -floorplan -no_std_cells "$design(floorplan_def)"

############################################
# Placement
############################################
enics_start_stage "placement"

# Add M2 routing blockages arround vertical power stripes to prevent M2 routing DRCs near them:
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


# get_db -category place *
enics_message "Starting place_opt_design" medium
set_db place_global_cong_effort auto
place_opt_design -report_dir "$design(reports_dir)/placement/place_opt_design" 
enics_message "Finished place_opt_design"

# -------------
# Add Tie Cells
# -------------
enics_message "Adding Tie Cells" medium
add_tieoffs

# -------------
# Fix DRV
# -------------
enics_message "Fixing DRVs before CTS" medium
opt_design -pre_cts -drv

enics_create_stage_reports -pop_snapshot yes


############################################
# Clock Tree Synthesis
############################################
enics_start_stage "cts"

# -----------------------------
# Load Clock Tree Configuration
# -----------------------------
# create_clock_tree_spec -out_file tmp_clock_spec.ccopt
enics_message "Reading in clock spec from $design(clock_tree_spec)"
reset_ccopt_config
source $design(clock_tree_spec)

enics_message "Starting ccopt_design" medium
ccopt_design -report_dir "$design(reports_dir)/cts/ccopt_design"  
# skew balanced clock tree
# clock_design
enics_message "Finished running ccopt_design"

enics_create_stage_reports -pop_snapshot yes

# Open the clock tree debugger
#gui_open_ctd

# --------------------
# Post CTS Hold Fixing
# --------------------
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

#route_opt_design
enics_message "Starting Route Design" medium
route_design
enics_message "Finished running Route Design"

enics_create_stage_reports -check_drc yes -check_connectivity yes -pop_snapshot yes


# -----------------------
# Post Route Optimization
# -----------------------
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

#add_decap_cell_candidates XXX
#add_decaps -total_cap 1000 -cells XXX

delete_route_blockages -name M2_pwr_stripe_route_blk; # Cancel out preventive blockage for clean DRC report

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
#write_parasitics -spef_file $design(spef_file_wc).spef -rc_corner XXX
set_db write_stream_text_size 0.02;       # Set the fonts to be much smaller than the defaul
write_stream $design(export_dir)/signoff/$design(TOPLEVEL).gds

enics_create_stage_reports -check_drc yes -check_connectivity yes -pop_snapshot yes
