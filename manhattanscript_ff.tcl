read_liberty ../timing_libs/sky130_fd_sc_hd__ff_n40C_1v65.lib
 read_verilog ../manhattan_sequencedetector_net.v
link_design manhattan_sequencedetector

read_sdc ../manhattanseq_constraints.sdc
report_checks -fields {nets cap slew input_pins} -digits {5} -path_delay min_max > manhattan_timing_ff_-40c_1v65.rpt
report_tns >> manhattan_timing_ff_-40c_1v65.rpt
