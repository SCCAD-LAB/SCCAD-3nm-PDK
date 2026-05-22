# Fast smoke test for the GitHub OpenROAD run files.
# It checks that LEF/lib/netlist/SDC/platform files load.

source "helpers.tcl"
source "flow_helpers.tcl"
source "3nm/3nm.vars"

if {[info commands sta::corners] eq ""} {
  namespace eval sta { proc corners {} { return {} } }
}

if {[info exists ::env(DESIGN_CONFIG)] && $::env(DESIGN_CONFIG) ne ""} {
  source $::env(DESIGN_CONFIG)
} else {
  source "design_configs/ecg.tcl"
}

set design "${design}_input_check"

read_libraries
read_verilog $synth_verilog
link_design $top_module
read_sdc $sdc_file

initialize_floorplan -site $site \
  -die_area $die_area \
  -core_area $core_area

source $tracks_file

set check_db [make_result_file "${design}_${platform}.db"]
write_db $check_db

puts "OPENROAD_INPUT_CHECK_PASS db=$check_db"
