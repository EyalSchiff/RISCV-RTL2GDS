##########################
# General Genus Settings
##########################
set_db source_verbose true ; # Sourcing files will be reported as verbose

# Attributes that only Genus understands...
if {$runtype=="synthesis"} {
    set_db information_level 9 ; # The log file will report everything
    # set_db hdl_track_filename_row_col true -quiet; # helps with debug but affects runtime
    set_db hdl_language v2001 -quiet
    set_db lp_insert_clock_gating true 
    set_db detailed_sdc_messages true ; # helps read_sdc debug
}

##########################
# General Innovus Settings
##########################
if {$runtype=="pnr"} {
    
    
    ###########################
    # TIMING, EXTRACTION, ETC #
    ###########################
    
    # Set on-chip variation analysis
    set_db timing_analysis_type ocv
    set_db timing_analysis_cppr both
    set_db timing_analysis_cppr both
    
    # From Negev - check
    #set_db write_db_auto_save_user_globals true
    set_db timing_report_unconstrained_paths true
    set_db timing_cppr_threshold_ps 5
    # Ports without input delay are unconstrained by default
    set_db timing_apply_default_primary_input_assertion false
    set_db timing_enable_si_cppr                        true
    # set_db timing_remove_clock_reconvergence_pessimism true
    set_db timing_disable_inferred_clock_gating_checks  true
    
    # DELAYCAL
    # Default false; switch on in routing
    set_db delaycal_enable_si false
    set_db delaycal_equivalent_waveform_model propagation
 
    # SI
    # To see incr delay separately in reports
    set_db si_delay_separate_on_data true
    # For correlation to Tempus
    set_db si_glitch_enable_report true


    ######################
    #    FLOORPLANNNG    #
    ######################
    # ENDCAPS
    set_db add_endcaps_boundary_tap true
    set_db add_endcaps_prefix "ENDCAP"
    set_db add_endcaps_left_edge [lindex $tech(ENDCAPS) 0]
    set_db add_endcaps_right_edge [lindex $tech(ENDCAPS) 1]

    # WELLTAPS
    set_db add_well_taps_cell $tech(WELLTAP)
    set_db add_well_taps_rule  $tech(WELLTAP_RULE)

    ######################
    #    PLACEMENT       #
    ######################
    # PLACE GLOBAL
    set_db place_global_cong_effort auto
    #set_db place_global_place_io_pins false
    
    # PLACE DETAIL
    #set_db place_detail_no_filler_without_implant true
    #set_db place_detail_use_no_diffusion_one_site_filler true

    # TIECELLS
    set_db add_tieoffs_prefix "TIE"
    set_db add_tieoffs_cells "$tech(TIEHI) $tech(TIELO)"
    set_db add_tieoffs_max_fanout 19
    set_db add_tieoffs_max_distance 19
    
    ######################
    #   OPTIMIZATION     #
    ######################
    # OPT DESIGN
    set_db opt_time_design_compress_reports FALSE
    set_db opt_time_design_expanded_view TRUE
    set_db opt_time_design_num_paths 10
    set_db opt_time_design_report_net FALSE
    set_db opt_verbose TRUE
    set_db opt_fix_fanout_load true; # Force optimization to correct max_fnaout violations.

    ######################
    #    ROUTING         #
    ######################
    # ROUTE
    set_db delaycal_enable_si true
    set_db extract_rc_engine post_route
    set_db extract_rc_effort_level medium
    set_db extract_rc_coupled true
    #set_max_route_layer $MaxRouteLayer
    #set_db route_early_global_top_routing_layer    $MaxRouteLayer
    #set_db route_early_global_bottom_routing_layer $MinRouteLayer
    #set_db route_design_top_routing_layer          $MaxRouteLayer
    #set_db route_design_bottom_routing_layer       $MinRouteLayer
    #set_db route_design_detail_auto_stop                     false
    #set_db route_design_concurrent_minimize_via_count_effort high
    #set_db route_design_strict_honor_route_rule              wire
    #set_db route_design_with_via_in_pin "1:2"
    #set_db route_design_stripe_layer_range "$nonDPT_MinRouteLayer:$MaxRouteLayer"
    #set_db route_design_tie_net_to_shape "stripe"
    #if { [llength $antenna_cell]>0 } {
    #    set_db route_design_antenna_diode_insertion true
    #    set_db route_design_antenna_cell_name $antenna_cell
    #}
    ### don't use pin as a jumper - make one contact
    #set_db route_design_allow_pin_as_feedthru false
    ## don't taper to the output pin causing EM issues
    #set_db route_design_detail_no_taper_on_output_pin true

    ######################
    #    SIGNOFF         #
    ######################
    # FILLERS 
    set_db add_fillers_prefix FILLDECAP
    set_db add_fillers_cells [concat $tech(DECAP) $tech(FILLERS)]





    
    
    #Allow swapping between chaines of the same partition
    set_db reorder_scan_allow_swapping true
    # set_db timing_analysis_aocv               true
    # set_db timing_enable_aocv_slack_based     true
    # set_db timing_aocv_analysis_mode          launch_capture; #{launch_capture | clock_only | separate_data_clock | combine_launch_capture}
    # set_db timing_extract_model_aocv_mode     graph_based
    # set_db timing_aocv_derate_mode            aocv_additive;  #{aocv_multiplicative | aocv_additive}

    ## Global Placement Settings
    ###########################################################
    

    # CCopt
    # set_db cts_target_max_transition_time_top   $clk_slew
    # set_db cts_target_max_transition_time_trunk $clk_slew
    # set_db cts_target_max_transition_time_leaf  $clk_slew



    #### Routing
    
    #
}



