###########################################################################
### Placement
###########################################################################

set_buffer_opt_strategy -effort low

##Goto Layout Window , Placement ' Core Placement and Optimization .  A new window opens up as shown below . There are various options, you can click on what ever option you want and say ok. The tool will do the placement. Alternatively you can also run at the command at icc_shell . Below is example with congestion option.


place_opt -congestion

save_mw_cel -as fifo_place

### Reports 

report_placement_utilization > output/fifo_place_util.rpt
report_qor_snapshot > output/fifo_place_qor_snapshot.rpt
report_qor > output/fifo_place_qor.rpt

### Timing Report

report_timing -delay max -max_paths 20 > output/fifo_place.setup.rpt
report_timing -delay min -max_paths 20 > output/fifo_place.hold.rpt


