# OpenPiton tile reference constraints for a 1 GHz clock.
set sdc_version 2.1

# Innovus uses ns in this flow and skips the generic set_units command.
set_max_fanout 20 [get_ports clk]
set_max_fanout 20 [get_ports rst_n]
set_propagated_clock [get_ports clk]
create_clock [get_ports clk]  -period 1.0  -waveform {0 0.5}
set_false_path   -from [get_ports rst_n]
