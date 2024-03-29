###### Pre-Layout PrimeTime Script #######

## Define the library location
set link_library [ list /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v125c.db /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95vn40c.db]

set target_library [ list /mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/db_ccs/saed32rvt_ss0p95v25c.db ]
## read the verilog files
read_verilog ../icc_pnr/output/fifo_extracted.v

## Set top module name
current_design FIFO

## Read in the extracted parasitics
## Read in SDC from the synthesis 
## read in spef.max for setup time
## read in spef.min for hold time
read_parasitics -format SPEF ../icc_pnr/output/fifo_extracted.spef.max

## Read in SDC from the extracted view
source ../icc_pnr/output/fifo_extracted.sdc

## Analysis reports

report_timing -from [all_inputs] -max_paths 20 -to [all_registers -data_pins] > reports/timing.rpt
report_timing -from [all_register -clock_pins] -max_paths 20 -to [all_registers -data_pins]  >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -max_paths 20 -to [all_outputs] >> reports/timing.rpt
report_timing -from [all_inputs] -to [all_outputs] -max_paths 20 >> reports/timing.rpt
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type max  >> reports/timing.rpt
##report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type min  >> reports/timing.rpt

report_timing -transition_time -capacitance -nets -input_pins -from [all_registers -clock_pins] -to [all_registers -data_pins]  > reports/timing.tran.cap.rpt



## Save outputs
save_session output/fifo.session


