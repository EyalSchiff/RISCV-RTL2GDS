# These are the technology definitions for the ARM SRAM Compiler 
#     for the TSMC 65nm LP Technology
#

# Library/LEF setting for ARM memories
set tech(SRAM_MUX)     [ list "M16"     "M16" ];		 # Used to differentiate various memory macro MUX-ing options
set tech(SRAM_SIZE)    [ list "16384"   "8192" ] ;		 # Used to differentiate various memory macro MUX-ing options
set tech(SRAM_FLAVOR)  [ list "hde"     "hse" ] ;		 # Used to differentiate various memory macro MUX-ing options
foreach M $tech(SRAM_MUX) S $tech(SRAM_SIZE) F $tech(SRAM_FLAVOR) {
    set m [string tolower $M]
    set path_name "../mem_gen/SP_${S}X32/${M}/"
    set inst_name "sp_${F}_${S}_${m}"
    lappend tech_files(ALL_LEFS) "${path_name}${inst_name}.lef"
    lappend tech_files(ALL_WC_LIBS)  "${path_name}${inst_name}_ss_1p08v_1p08v_125c.lib"
    lappend tech_files(ALL_TC_LIBS)  "${path_name}${inst_name}_tt_1p20v_1p20v_25c.lib"
    lappend tech_files(ALL_BC_LIBS)  "${path_name}${inst_name}_ff_1p32v_1p32v_m40c.lib"
    #lappend design(hdl_search_paths) "$design(project_root)/mem_gen/SP_${S}X32/${M}"
}


lappend tech(LIB_SUPPRESS_MESSAGES_GENUS) {*}"LBR-41 LBR-72 LBR-518"
lappend tech(LEF_SUPPRESS_MESSAGES_GENUS) {*}"PHYS-2381"

# ARM Power Pin names
set tech(SRAM_VDDCORE_PIN)      "VDDCE"
set tech(SRAM_VDDPERIPHERY_PIN) "VDDPE"
set tech(SRAM_GND_PIN)          "VSSE"


set var_list {}
set dic_list {tech path tech_files}
enics_print_debug_data a $debug_file libraries.$SRAM_TECHNOLOGY.tcl $var_list $dic_list
