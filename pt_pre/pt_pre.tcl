###### Pre-Layout PrimeTime Script #######

lappend search_path ../dc_synth/output

source ../set_env.tcl

## read the verilog files
read_verilog fifo.v

## Set top module name
link_design FIFO

## Read in SDC from the synthesis
read_sdc ../dc_synth/const/fifo.sdc

## Analysis reports
report_qor > reports/pt_qor.rpt

report_timing > reports/timing_overview.rpt
report_timing -from [all_inputs] -max_paths 20 -to [all_registers -data_pins] > reports/timing.rpt
report_timing -from [all_register -clock_pins] -max_paths 20 -to [all_registers -data_pins]  >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -max_paths 20 -to [all_outputs] >> reports/timing.rpt
report_timing -from [all_inputs] -to [all_outputs] -max_paths 20 >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type max  >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type min  >> reports/timing.rpt

report_timing -transition_time -capacitance -nets -input_pins -from [all_registers -clock_pins] -to [all_registers -data_pins]  > reports/timing.tran.cap.rpt


## Save outputs
save_session output/fifo.session


