###### DC Synth Script #######
#
lappend search_path ../src
source -echo ../set_env.tcl
set const_dir  const/$top
set reports_dir  reports/$top
set output_dir  output/$top
set const_dir  const/$top
set work_dir work/$top

define_design_lib WORK -path $work_dir

## read the verilog files
analyze -format verilog dff.v
analyze -format verilog $top.v
elaborate -architecture verilog $top

link

check_design

file mkdir $reports_dir
file mkdir $output_dir
file mkdir $const_dir

# 100MHz
create_clock CK -name ideal_clock1 -period 10
# 500MHz
#create_clock CK -name ideal_clock1 -period 2
set_clock_latency 0.4 CK -clock ideal_clock1
set_clock_transition 0.1 ideal_clock1

set_input_delay 2 [ remove_from_collection [all_inputs] CK ] -clock ideal_clock1 
set_output_delay 2 [ all_outputs ] -clock ideal_clock1
set_clock_uncertainty 0.05 ideal_clock1
set_max_area 0
set_load 0.3 [ all_outputs ]

#create_power_domain pd
#create_supply_net VDD
#connect_supply_net VDD -ports VDD
#set_voltage 1 -object_list VDD

check_design > $reports_dir/synth_check_design.rpt
check_timing > $reports_dir/synth_check_timing.rpt

uniquify > $reports_dir/synth_uniquify.rpt

compile_ultra

report_area > $reports_dir/synth_area.rpt
report_power > $reports_dir/synth_power.rpt
report_qor > $reports_dir/synth_qor.rpt
report_cell > $reports_dir/synth_cells.rpt
report_resource > $reports_dir/synth_resources.rpt
report_timing > $reports_dir/timing_overview.rpt

## Analysis reports

report_timing -from [all_inputs] -max_paths 20 -to [all_registers -data_pins] > $reports_dir/timing.rpt
report_timing -from [all_register -clock_pins] -max_paths 20 -to [all_registers -data_pins]  >> $reports_dir/timing.rpt
report_timing -from [all_registers -clock_pins] -max_paths 20 -to [all_outputs] >> $reports_dir/timing.rpt
report_timing -from [all_inputs] -to [all_outputs] -max_paths 20 >> $reports_dir/timing.rpt
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type max  >> $reports_dir/timing.rpt
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type min  >> $reports_dir/timing.rpt

report_timing -transition_time -capacitance -nets -input_pins -from [all_registers -clock_pins] -to [all_registers -data_pins]  > $reports_dir/timing.tran.cap.rpt

write_sdc $const_dir/$top.sdc

write -hier -f verilog -output $output_dir/$top.v
write -hier -f ddc -output $output_dir/$top.ddc

exit
