# Library definitions for TSMC 65LP IO Libraries

set tech_files(IO_NAME) tpdn65lpnv2od3
set IO_METAL_STACK 9lm

set paths(IO_dir) $paths(PDK_ROOT)/dig_libs/ARM_FEONLY/TSMCHOME_fe/digital
set paths(IO_libs) $paths(IO_dir)/Front_End/timing_power_noise/NLDM/$tech_files(IO_NAME)_200a
set paths(IO_lefs) $paths(IO_dir)/Back_End/lef/$tech_files(IO_NAME)_140b/mt/$IO_METAL_STACK/lef/

# Libs
set tech_files(IO_WC_LIB) $paths(IO_libs)/$tech_files(IO_NAME)wc.lib
        lappend tech_files(ALL_WC_LIBS) $tech_files(IO_WC_LIB)
set tech_files(IO_TC_LIB) $paths(IO_libs)/$tech_files(IO_NAME)tc.lib
        lappend tech_files(ALL_TC_LIBS) $tech_files(IO_TC_LIB)
set tech_files(IO_BC_LIB) $paths(IO_libs)/$tech_files(IO_NAME)bc.lib
        lappend tech_files(ALL_BC_LIBS) $tech_files(IO_BC_LIB)
lappend tech(LIB_SUPPRESS_MESSAGES_GENUS)   {*}"LBR-518 WSDF-201"
lappend tech(LIB_SUPPRESS_MESSAGES_INNOVUS) {*}"IMPTS-282"

# Verilog
set tech_files(IO_VERILOG) $paths(IO_dir)/Front_End/verilog/tpdn65lpnv2od3_140b/$tech_files(IO_NAME).v 
# LEF
#  Needed to make a local copy due to wrong definition of VDDPST/VSSPST pins in LEF
set tech_files(IO_LEF) /data/project/tsmc65/shared/modified_libraries/tpdn65lpnv2od3_9lm.lef
#set tech_files(IO_LEF) $paths(IO_lefs)/$tech_files(IO_NAME)_$IO_METAL_STACK.lef
set tech_files(IO_ANTENNA_LEF) $paths(IO_lefs)/antenna_$IO_METAL_STACK.lef
        lappend tech_files(ALL_LEFS) $tech_files(IO_LEF) $tech_files(IO_ANTENNA_LEF)
lappend tech(LEF_SUPPRESS_MESSAGES_GENUS)   {*}"PHYS-107"
lappend tech(LEF_SUPPRESS_MESSAGES_INNOVUS) {*}"LEFPARS-2001 LEFPARS-2065 LEFPARS-2076 IMPLF-58 IMPFP-3961 IMPSR-4302"

# PG pins
set tech(IO_VDDCORE) VDD
set tech(IO_GNDCORE) VSS
set tech(IO_VDDIO) VDDPST
set tech(IO_GNDIO) VSS

##############################
## SDC default definitions: ##
##############################
set tech(SDC_DRIVING_CELL)  PDDW1216SCDG
set tech(CCOPT_DRIVING_PIN) $tech(SDC_DRIVING_CELL)/C
set tech(SDC_LOAD_PIN)      $tech(SDC_DRIVING_CELL)/PAD

set tech(EXTERNAL_SDC_LOAD)    50; # 50pF for 1216 digital I/O cells


# Others
set tech(IO_FILLERS) "PFILLER20 PFILLER10 PFILLER5 PFILLER1 PFILLER05 PFILLER0005"
set tech(IO_SITE) pad 

#############################################
#       Print values to debug file
#############################################
set var_list {}
set dic_list {paths tech tech_files}
enics_print_debug_data a $debug_file libraries.$IO_TECHNOLOGY.tcl $var_list $dic_list
