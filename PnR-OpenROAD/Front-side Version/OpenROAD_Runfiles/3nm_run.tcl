# 3nm OpenROAD flow driver.
# Run from:
#   USC-3N-2D/PnR-OpenROAD/Front-side Version/OpenROAD_Runfiles

source "helpers.tcl"
source "flow_helpers.tcl"
source "3nm/3nm.vars"

# Compatibility stub for older OpenSTA/OpenROAD builds.
if {[info commands sta::corners] eq ""} {
  namespace eval sta { proc corners {} { return {} } }
}

set design "ecg"
if {[info exists ::env(DESIGN_CONFIG)] && $::env(DESIGN_CONFIG) ne ""} {
  source $::env(DESIGN_CONFIG)
} else {
  source "design_configs/ecg.tcl"
}

if {[info exists ::env(OPENROAD_THREADS)] && $::env(OPENROAD_THREADS) ne ""} {
  set num_threads $::env(OPENROAD_THREADS)
} else {
  set num_threads 16
}

include -echo "flow.tcl"
