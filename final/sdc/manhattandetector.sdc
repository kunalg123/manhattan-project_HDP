###############################################################################
# Created by write_sdc
# Sat Sep 23 23:11:56 2023
###############################################################################
current_design manhattandetector
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk1 -period 10.0000 [get_ports {clock}]
set_clock_uncertainty 0.1000 clk1
set_propagated_clock [get_clocks {clk1}]
set_clock_latency -source 1.0000 [get_clocks {clk1}]
set_input_delay 1.0000 -clock [get_clocks {clk1}] -min -add_delay [get_ports {reset}]
set_input_delay 3.0000 -clock [get_clocks {clk1}] -max -add_delay [get_ports {reset}]
set_input_delay 1.0000 -clock [get_clocks {clk1}] -min -add_delay [get_ports {sequence_in}]
set_input_delay 3.0000 -clock [get_clocks {clk1}] -max -add_delay [get_ports {sequence_in}]
set_output_delay 1.0000 -clock [get_clocks {clk1}] -min -add_delay [get_ports {detector_out}]
set_output_delay 3.0000 -clock [get_clocks {clk1}] -max -add_delay [get_ports {detector_out}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load -min 0.0500 [get_ports {detector_out}]
set_load -pin_load -max 0.2000 [get_ports {detector_out}]
set_input_transition -min 0.2000 [get_ports {reset}]
set_input_transition -max 0.4000 [get_ports {reset}]
set_input_transition -min 0.2000 [get_ports {sequence_in}]
set_input_transition -max 0.4000 [get_ports {sequence_in}]
###############################################################################
# Design Rules
###############################################################################
