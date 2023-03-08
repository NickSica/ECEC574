###########################################################################
### Clock Tree Synthesis
############################################################################

report_clock_tree > output/fifo_pre_cts_tree.rpt


##In the Layout window, click on "Clock ", you will see various options, you can set any of the options to run CTS. If you click on Clock ' Core CTS and Optimization
clock_opt -only_cts -no_clock_route
set_fix_hold ideal_clock1
extract_rc > reports/fifo_cts_extract_rc.rpt
clock_opt -only_psyn -area_recovery -no_clock_route
route_zrt_group -all_clock_nets -reuse_existing_global_route true

report_constraints > reports/fifo_cts_constraints.rpt
all_ideal_nets > reports/fifo_cts_ideal_nets.rpt
all_high_fanout > reports/fifo_cts_high_fanout.rpt
check_legality > reports/fifo_cts_check_legality.rpt
verify_pg_nets > reports/fifo_cts_verify_pg_nets.rpt

##Save the Cell and report timing

save_mw_cel -as fifo_cts
report_placement_utilization > reports/fifo_cts_util.rpt
report_qor_snapshot > reports/fifo_cts_qor_snapshot.rpt
report_qor > reports/fifo_cts_qor.rpt
report_timing -max_paths 20 -delay max > reports/fifo_cts.setup.rpt
report_timing -max_paths 20 -delay min > reports/fifo_cts.hold.rpt

