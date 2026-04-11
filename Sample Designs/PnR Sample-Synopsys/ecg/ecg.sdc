###################################################################

# Created by write_sdc on Tue Feb  3 16:45:13 2026

###################################################################
set sdc_version 2.1

set_units -time ps -resistance kOhm -capacitance fF -voltage V -current mA
set_max_fanout 20 [get_ports clk]
set_max_fanout 20 [get_ports reset]
set_propagated_clock [get_ports clk]
create_clock [get_ports clk]  -period 166.66  -waveform {0 83.33}
set_false_path   -from [get_ports reset]
