###########################################################################
### Routing
###########################################################################

##In the layout window, click on Route -> Core Routing and Optimization
route_opt -initial_route_only
create_qor_snapshot -name initial_route > reports/fifo_pre_route_qor.rpt
route_opt -skip_initial_route -power

##Save the cel and report timing

save_mw_cel -as fifo_route
report_placement_utilization > reports/fifo_route_util.rpt
report_qor_snapshot > reports/fifo_route_qor_snapshot.rpt
report_qor > reports/fifo_route_qor.rpt
report_power > reports/fifo_route_power.rpt
report_timing -max_paths 50 -delay max > reports/fifo_route.setup.rpt
report_timing -max_paths 50 -delay min > reports/fifo_route.hold.rpt

##POST ROUTE OPTIMIZATION STEPS

##Goto Layout Window, Route -> Verify Route
verify_zrt_route

