###### DC Synth Script #######
#
lappend search_path ../src
define_design_lib WORK -path "work"

source ../set_env.tcl

## read the verilog files
analyze -format verilog fifo.v
elaborate -architecture verilog FIFO

link

#create_clock Clk -name ideal_clock1 -period 15.2
create_clock Clk -name ideal_clock1 -period 15.2
set_input_delay 0.1 [ remove_from_collection [all_inputs] Clk ] -clock ideal_clock1 
set_output_delay 0.1 [ all_outputs ] -clock ideal_clock1
set_clock_uncertainty 0.1 ideal_clock1
set_max_area 0
set_load 0.2 [ all_outputs ]

check_design > reports/synth_check_design.rpt
check_timing > reports/synth_check_timing.rpt

uniquify > reports/synth_uniquify.rpt

# I think it's actuall supposed to be this
#set_timing_derate -early 0.85
#set_timing_derate -late 1.05
#set_timing_derate -early 0.15
#set_timing_derate -late 0.05


compile -area_effort medium -map_effort medium

report_area > reports/synth_area.rpt
report_power > reports/synth_power.rpt
report_qor > reports/synth_qor.rpt
report_cell > reports/synth_cells.rpt
report_resource > reports/synth_resources.rpt
report_timing > reports/timing_overview.rpt

## Analysis reports

report_timing -from [all_inputs] -max_paths 20 -to [all_registers -data_pins] > reports/timing.rpt
report_timing -from [all_register -clock_pins] -max_paths 20 -to [all_registers -data_pins]  >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -max_paths 20 -to [all_outputs] >> reports/timing.rpt
report_timing -from [all_inputs] -to [all_outputs] -max_paths 20 >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type max  >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type min  >> reports/timing.rpt

report_timing -transition_time -capacitance -nets -input_pins -from [all_registers -clock_pins] -to [all_registers -data_pins]  > reports/timing.tran.cap.rpt

write_sdc const/fifo.sdc

write -hier -f verilog -output output/fifo.v
write -hier -f ddc -output output/fifo.ddc

#exit
