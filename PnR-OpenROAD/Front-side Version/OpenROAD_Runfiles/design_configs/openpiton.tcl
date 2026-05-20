# OpenPiton tile design config.
# Paths are relative to OpenROAD_Runfiles/.
#
# The public tree includes tile.netlist.v and tile.sdc under Sample Designs.
# Full rerun from source may also need memory macro Liberty views if timing
# closure for memory macros is required.

set design "openpiton_tile"
set top_module "tile"
set synth_verilog "../../../Sample Designs/PnR Sample-OpenROAD/openpiton/tile.netlist.v"
set sdc_file "../../../Sample Designs/PnR Sample-OpenROAD/openpiton/tile.sdc"

set openpiton_macro_lef_dir "../../../Sample Designs/PnR Sample-Cadence/openpiton/HARD-LEF (OpenPiton)"
set extra_lef [glob -nocomplain "$openpiton_macro_lef_dir/*.lef"]
set extra_liberty {}

set die_area {0 0 300.006 362.010}
set core_area {1.995 2.010 298.011 360.000}

set slew_margin 20
set cap_margin 20
set global_place_density 0.60
set macro_place_halo {1 1}
set macro_place_channel {10 10}

