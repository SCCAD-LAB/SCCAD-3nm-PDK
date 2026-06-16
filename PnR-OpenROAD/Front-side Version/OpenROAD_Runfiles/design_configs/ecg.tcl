# ECG design config.

set design "ecg"
set top_module "point_scalar_mult"
if {![info exists pdk_root]} {
  if {![info exists ::env(PDK_ROOT)]} {
    puts "ERROR: please set PDK_ROOT to the USC-3N-2D repository root before sourcing this script"
    exit 1
  }
  set pdk_root [file normalize $::env(PDK_ROOT)]
}

set synth_verilog [file join $pdk_root "Sample Designs/PnR Sample-OpenROAD/ecg/ecg.netlist.v"]
set sdc_file [file join $pdk_root "Sample Designs/PnR Sample-OpenROAD/ecg/ecg.sdc"]

# Floorplan targeting about 70% utilization.
set die_area {0 0 79 79}
set core_area {2 2 77 77}

set slew_margin 20
set cap_margin 20
