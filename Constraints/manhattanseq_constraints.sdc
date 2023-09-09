create_clock -name clk1 -period 10 [get_ports clock] 
set_clock_latency -source 1 [get_clocks clk1]
set_clock_latency 2 [get_clocks clk1]
set_clock_uncertainty 0.6 [get_clocks clk1]
set_clock_uncertainty 0.1 [get_clocks clk1]

#set_driving_cell -lib_cell sky130_fd_sc_hd__buf_4 [all_inputs]
set_input_transition -max 0.4 [get_ports sequence_in]
set_input_transition -min 0.2 [get_ports sequence_in]
set_input_transition -max 0.4 [get_ports reset]
set_input_transition -min 0.2 [get_ports reset]
set_input_delay -max 3 -clock  clk1  [get_ports sequence_in]
set_input_delay -min 1 -clock  clk1  [get_ports sequence_in]

set_input_delay -max 3 -clock clk1   [get_ports reset]
set_input_delay -min 1 -clock  clk1 [get_ports reset]

set_output_delay -max 3 -clock clk1 [get_ports detector_out]
set_output_delay -min 1  -clock  clk1  [get_ports detector_out]

set_load  -max 0.2 [get_ports detector_out]
set_load -min 0.05 [get_ports detector_out]
