read_liberty sky130_fd_sc_hd__tt_025C_1v80.lib

read_verilog manhattan_sequencedetector_net.v

link_design manhattan_sequencedetector

read_sdc manhattanseq_constraints.sdc

report_checks -fields {nets cap slew input_pins} -digits {5} > manhattan_timing.rpt
