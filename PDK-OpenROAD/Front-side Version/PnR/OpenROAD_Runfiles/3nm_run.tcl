# ecg 3nm flow driver
source "helpers.tcl"
source "flow_helpers.tcl"
source "3nm/3nm.vars"

# Compatibility stub: sta::corners was added in a newer OpenSTA.
# Returning empty list causes read_libraries to take the single-corner path.
if {[info commands sta::corners] eq ""} {
  namespace eval sta { proc corners {} { return {} } }
}

set design "ecg"
set top_module "point_scalar_mult"
set synth_verilog "ecg_3nm.v"
set sdc_file "ecg_3nm.sdc"

# Floorplan targeting ~70% utilization (cell area 3922 um^2 / 0.70 = 5603 um^2, side ~75 um).
set die_area {0 0 79 79}
set core_area {2 2 77 77}

set slew_margin 20
set cap_margin 20

# Thread count: set by run_openroad.sh via OPENROAD_THREADS; falls back to 16 if unset.
set num_threads [expr {[info exists ::env(OPENROAD_THREADS)] ? $::env(OPENROAD_THREADS) : 16}]

include -echo "flow.tcl"
