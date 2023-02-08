###########################################################################
### Extraction
###########################################################################

##Go to Layout Window, Route -> Extract RC, it opens up a new window as shown below, click ok. Alternatively, you can run this script on the ICC shell:

extract_rc  -coupling_cap  -routed_nets_only  -incremental

##write parasitic to a file for delay calculations tools (e.g PrimeTime).
write_parasitics -output ./output/fifo_extracted.spef -format SPEF

##Write Standard Delay Format (SDF) back-annotation file
write_sdf ./output/fifo_extracted.sdf

##Write out a script in Synopsys Design Constraints format
write_sdc ./output/fifo_extracted.sdc

##Write out a hierarchical Verilog file for the current design, extracted from layout
write_verilog ./output/fifo_extracted.v

##Save the cel and report timing
report_timing -max_paths 50 -delay max > reports/fifo_extracted.setup.rpt
report_timing -max_paths 50 -delay min > reports/fifo_extracted.hold.rpt

save_mw_cel -as fifo_extracted

