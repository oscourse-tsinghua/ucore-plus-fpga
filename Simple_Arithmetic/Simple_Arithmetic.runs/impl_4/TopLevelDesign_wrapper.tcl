# 
# Report generation script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}


start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.cache/wt [current_project]
  set_property parent.project_path /home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.xpr [current_project]
  set_property ip_repo_paths {
  /home/tinytangent/ucore-plus-fpga/ip_repo/ReconfigurationTest_1.0
  /home/tinytangent/ucore-plus-fpga/ip_repo/ReconfigurableArithmeticAXI_1.0
  /home/tinytangent/ucore-plus-fpga/ip_repo/SimpleArithmeticAXI_1.0
} [current_project]
  set_property ip_output_repo /home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
  add_files -quiet /home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.runs/impl_2/TopLevelDesign_wrapper_routed_bb.dcp
  add_files -quiet /home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.runs/OpUnitSub_synth_1/OpUnitSub.dcp
  set_property SCOPED_TO_CELLS OpUnitWrapper_i/OpUnit_e [get_files /home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.runs/OpUnitSub_synth_1/OpUnitSub.dcp]
  set_property netlist_only true [get_files /home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.runs/OpUnitSub_synth_1/OpUnitSub.dcp]
  link_design -top TopLevelDesign_wrapper -part xc7z020clg484-1 -reconfig_partitions OpUnitWrapper_i/OpUnit_e
  write_hwdef -force -file TopLevelDesign_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force TopLevelDesign_wrapper_opt.dcp
  create_report "impl_4_opt_report_drc_0" "report_drc -file TopLevelDesign_wrapper_drc_opted.rpt -pb TopLevelDesign_wrapper_drc_opted.pb -rpx TopLevelDesign_wrapper_drc_opted.rpx"
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force TopLevelDesign_wrapper_placed.dcp
  create_report "impl_4_place_report_io_0" "report_io -file TopLevelDesign_wrapper_io_placed.rpt"
  create_report "impl_4_place_report_utilization_0" "report_utilization -file TopLevelDesign_wrapper_utilization_placed.rpt -pb TopLevelDesign_wrapper_utilization_placed.pb"
  create_report "impl_4_place_report_control_sets_0" "report_control_sets -file TopLevelDesign_wrapper_control_sets_placed.rpt"
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force TopLevelDesign_wrapper_routed.dcp
  create_report "impl_4_route_report_drc_0" "report_drc -file TopLevelDesign_wrapper_drc_routed.rpt -pb TopLevelDesign_wrapper_drc_routed.pb -rpx TopLevelDesign_wrapper_drc_routed.rpx"
  create_report "impl_4_route_report_methodology_0" "report_methodology -file TopLevelDesign_wrapper_methodology_drc_routed.rpt -pb TopLevelDesign_wrapper_methodology_drc_routed.pb -rpx TopLevelDesign_wrapper_methodology_drc_routed.rpx"
  create_report "impl_4_route_report_power_0" "report_power -file TopLevelDesign_wrapper_power_routed.rpt -pb TopLevelDesign_wrapper_power_summary_routed.pb -rpx TopLevelDesign_wrapper_power_routed.rpx"
  create_report "impl_4_route_report_route_status_0" "report_route_status -file TopLevelDesign_wrapper_route_status.rpt -pb TopLevelDesign_wrapper_route_status.pb"
  create_report "impl_4_route_report_timing_summary_0" "report_timing_summary -file TopLevelDesign_wrapper_timing_summary_routed.rpt -warn_on_violation  -rpx TopLevelDesign_wrapper_timing_summary_routed.rpx"
  create_report "impl_4_route_report_incremental_reuse_0" "report_incremental_reuse -file TopLevelDesign_wrapper_incremental_reuse_routed.rpt"
  create_report "impl_4_route_report_clock_utilization_0" "report_clock_utilization -file TopLevelDesign_wrapper_clock_utilization_routed.rpt"
  write_checkpoint -force -cell OpUnitWrapper_i/OpUnit_e OpUnitWrapper_i_OpUnit_e_OpUnitSub_routed.dcp
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force TopLevelDesign_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  pr_verify -full_check -initial /home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.runs/impl_2/TopLevelDesign_wrapper_routed.dcp -additional /home/tinytangent/ucore-plus-fpga/Simple_Arithmetic/Simple_Arithmetic.runs/impl_4/TopLevelDesign_wrapper_routed.dcp -file impl_4_pr_verify.log
  set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
  catch { write_mem_info -force TopLevelDesign_wrapper.mmi }
  write_bitstream -force -no_partial_bitfile TopLevelDesign_wrapper.bit 
  write_bitstream -force -cell OpUnitWrapper_i/OpUnit_e OpUnitWrapper_i_OpUnit_e_OpUnitSub_partial.bit 
  catch { write_sysdef -hwdef TopLevelDesign_wrapper.hwdef -bitfile TopLevelDesign_wrapper.bit -meminfo TopLevelDesign_wrapper.mmi -file TopLevelDesign_wrapper.sysdef }
  catch {write_debug_probes -no_partial_ltxfile -quiet -force TopLevelDesign_wrapper}
  catch {file copy -force TopLevelDesign_wrapper.ltx debug_nets.ltx}
  catch {write_debug_probes -quiet -force -cell OpUnitWrapper_i/OpUnit_e -file OpUnitWrapper_i_OpUnit_e_OpUnitSub_partial.ltx}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}
