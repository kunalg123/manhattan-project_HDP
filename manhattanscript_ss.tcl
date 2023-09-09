read_liberty ../timing_libs/sky130_fd_sc_hd__ss_n40C_1v76.lib
 read_verilog ../manhattan_sequencedetector_net.v
link_design manhattan_sequencedetector

read_sdc ../manhattanseq_constraints.sdc
report_checks -fields {nets cap slew input_pins} -digits {5} -path_delay min_max > manhattan_timing_ss_n40C_1v76.rpt
report_tns >> manhattan_timing_ss_n40C_1v76.rpt
report_wns >> manhattan_timing_ss_n40C_1v76.rpt
