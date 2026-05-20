# ECG design config.
# Paths are relative to OpenROAD_Runfiles/.

set design "ecg"
set top_module "point_scalar_mult"
set synth_verilog "../../../Sample Designs/PnR Sample-OpenROAD/ecg/ecg.netlist.v"
set sdc_file "../../../Sample Designs/PnR Sample-OpenROAD/ecg/ecg.sdc"

# Floorplan targeting about 70% utilization.
set die_area {0 0 79 79}
set core_area {2 2 77 77}

set slew_margin 20
set cap_margin 20

