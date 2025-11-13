#ORIGINAL set design(TOPLEVEL) "<your_DUT_name>"
set debug_file "debug.txt"
set design(TOPLEVEL) "lp_riscv_top"
set runtype "synthesis"

# Variables
set mmmc_or_simple "simple"; # "simple" - using "read_libs"
                             # "mmmc"   - using "read_mmmc"
set phys_synth_type "none" ;  # "none"   - don't read any physical data
                             # "lef"    - only read lef and qrctech files
                             # "floorplan"    - read in a def of the floorplan


# Load general procedures
source ../scripts/procedures.tcl -quiet

enics_start_stage "start"

# Load the specific definitions for this project
source ../inputs/$design(TOPLEVEL).defines -quiet

# Load general settings
source ../scripts/settings.tcl -quiet

# Load the library paths and definitions for this technology
source ../libraries/libraries.$TECHNOLOGY.tcl -quiet
source ../libraries/libraries.$SC_TECHNOLOGY.tcl -quiet
source ../libraries/libraries.$SRAM_TECHNOLOGY.tcl -quiet
if {$design(FULLCHIP_OR_MACRO)=="FULLCHIP"} {
    source ../libraries/libraries.$IO_TECHNOLOGY.tcl -quiet
}


#############################################
#       Print values to debug file
#############################################
set var_list {runtype mmmc_or_simple phys_synth_type}
set dic_list {paths tech tech_files design}
enics_print_debug_data w $debug_file "after everything was loaded" $var_list $dic_list

##########################
# Read Libraries
##########################
enics_start_stage "init_design"

# Suppress messages
enics_message "Suppressing the following messages that are reported due to the library definitions:" 
enics_message "$tech(LIB_SUPPRESS_MESSAGES_GENUS)"
suppress_messages $tech(LIB_SUPPRESS_MESSAGES_GENUS)

if {$mmmc_or_simple=="mmmc"} {
    enics_message "Loading MMMC File"
    read_mmmc $design(mmmc_view_file)
} else {
    enics_message "Reading library definitions (without MMMC Flow)"
    set_db init_lib_search_path $paths(LIB_paths) 
    suppress_messages $tech(LIB_SUPPRESS_MESSAGES_GENUS)
    suppress_messages "LBR-38"; # A message that shouldn't appear in MMMC Flow
    read_libs $tech_files(ALL_WC_LIBS)
}


############################
# Physical Synthesis Setup
############################
if {$phys_synth_type == "none"} {
   enics_message "Physical Synthesis is disabled"
   #read_qrc $tech_files(QRCTECH_FILE_WC)
} else {
    # Suppress messages
    enics_message "Suppressing the following messages that are reported due to the LEF definitions:" 
    enics_message "$tech(LEF_SUPPRESS_MESSAGES_GENUS)"
    suppress_messages $tech(LEF_SUPPRESS_MESSAGES_GENUS)
    enics_message "Loading the library abstracts"
    read_physical -lef $tech_files(ALL_LEFS)
    if {$phys_synth_type == "floorplan"} { 
        # You need to read a .def file for the floorplan to enable physical synthesis 
        enics_message "Loading the floorplan def"
        read_def $design(floorplan_def)
    }
}

enics_message "Suppressing the following messages that are design specific" 
enics_message "$design(DESIGN_SUPPRESS_MESSAGES_GENUS)"
suppress_messages $design(DESIGN_SUPPRESS_MESSAGES_GENUS)

##########################
# Read RTL
##########################
enics_start_stage "read_rtl"

set_db init_hdl_search_path $design(hdl_search_paths)
read_hdl -language sv -f $design(read_hdl_list)

if {$mmmc_or_simple=="mmmc"} {
    enics_message "Running init_design in an MMMC flow"
    init_design
}

##########################
# Elaborate
##########################
enics_start_stage "elaborate"
elaborate $design(TOPLEVEL) ;#-update

enics_start_stage "post_elaboration"
enics_message "Checking design post elaboration"
check_design -unresolved
check_design -all > $design(synthesis_reports)/post_elaboration/check_design_post_elab.rpt
if {[check_design -status]} {
    Puts "ENICSINFO: ############# There is an issue with check_design. You better look at it! ###########"
}
#save elaborated design
write_design -base_name $design(export_dir)/post_elaboartion/$design(TOPLEVEL)

# Read in a floorplan for physical synthesis
# read_def $design(floorplan_def)

##########################
# read constraints
##########################
enics_message "Reading SDC"
read_sdc $design(functional_sdc) -stop_on_errors 
enics_message "Checking timing intent (lint) after loading SDC"
check_timing_intent
check_timing_intent -verbose > $design(synthesis_reports)/post_elaboration/check_timing_post_elab.rpt

###################################################################################
## Define cost groups (reg2reg, in2reg, reg2out, in2out)
###################################################################################
enics_default_cost_groups
enics_report_timing $design(synthesis_reports)

################################
# clock gating settings
################################
set_db [get_db design:$design(TOPLEVEL)] .lp_clock_gating_min_flops 8
set_db [get_db design:$design(TOPLEVEL)] .lp_clock_gating_style latch 

##########################
#     Synthesize
##########################
enics_start_stage "synthesis"

# Set Synthesis Efforts
set_db syn_generic_effort low
set_db syn_map_effort low
set_db syn_opt_effort low

# Don't use scan cells
enics_message "Setting Don't Use on scan flip flops"
foreach cell [get_db lib_cells -if {.scan_enable_pins!=""}] {set_db $cell .avoid true}

if {$phys_synth_type == "floorplan"} {
    # Synthesize to generics and place generics in floorplan
    enics_start_stage "syn_generic"
    syn_generic -physical
    # Map to technology
    enics_start_stage "technology_mapping"
    syn_map -physical
    enics_report_timing $design(synthesis_reports) 
    # Post synthesis optimization
    enics_start_stage "post_syn_opt"
    syn_opt -physical
} else {
    # Synthesize to generics (non physical-aware)
    enics_start_stage "syn_generic"
    syn_generic 
    # Map to technology (non physical-aware)
    enics_start_stage "technology_mapping"
    syn_map 
    enics_report_timing $design(synthesis_reports)
    enics_start_stage "post_syn_opt"
    if {$phys_synth_type == "lef"} {
        syn_opt -physical
    } else {
        syn_opt 
    }
}



#############################
#     Post Synthesis Reports
#############################
enics_report_timing $design(synthesis_reports) 
set post_synth_reports [list \
    report_area \
    report_gates \
    report_hierarchy \
    report_clock_gating \
    report_design_rules \
    report_dp \
    report_qor \
]
foreach rpt $post_synth_reports {
    enics_message "$rpt" medium
    $rpt
    $rpt > "$design(synthesis_reports)/$this_run(stage)/${rpt}.rpt"
}

#############################
#   Exporting the Design
#############################
enics_start_stage "export_design"
enics_message "Exporting the design Database to $design(postsyn_db_base_name)"
write_design -base_name $design(postsyn_db_base_name) -innovus -db
enics_message "Writing the post synthesis netlist to $design(postsyn_netlist)"
write_hdl > $design(postsyn_netlist)
enics_message "Writing the post synthesis SDF"
mkdir -pv $design(export_dir)/post_synth
write_sdf > $design(postsyn_sdf)

