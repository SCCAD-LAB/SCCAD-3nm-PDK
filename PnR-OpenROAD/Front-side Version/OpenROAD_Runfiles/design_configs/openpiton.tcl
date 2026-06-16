# OpenPiton tile design config.
#
# The public tree includes tile.netlist.v and tile.sdc under Sample Designs.
# Full rerun from source may also need memory macro Liberty views if timing
# closure for memory macros is required.

set design "openpiton_tile"
set top_module "tile"

if {![info exists pdk_root]} {
  if {![info exists ::env(PDK_ROOT)]} {
    puts "ERROR: please set PDK_ROOT to the USC-3N-2D repository root before sourcing this script"
    exit 1
  }
  set pdk_root [file normalize $::env(PDK_ROOT)]
}

set synth_verilog [file join $pdk_root "Sample Designs/PnR Sample-OpenROAD/openpiton/tile.netlist.v"]
set sdc_file [file join $pdk_root "Sample Designs/PnR Sample-OpenROAD/openpiton/tile.sdc"]

set openpiton_macro_lef_dir [file join $pdk_root "openpiton_mem_L3_256k/2d_hard_lef"]
set openpiton_macro_lib_dir [file join $pdk_root "openpiton_mem_L3_256k/2d_hard_lib"]
set extra_lef [glob -nocomplain "$openpiton_macro_lef_dir/*.lef"]
set extra_liberty [glob -nocomplain "$openpiton_macro_lib_dir/*.lib"]

set die_area {0 0 300.006 362.010}
set core_area {1.995 2.010 298.011 360.000}

set slew_margin 20
set cap_margin 20
set global_place_density 0.60
set macro_place_halo {1 1}
set macro_place_channel {10 10}
