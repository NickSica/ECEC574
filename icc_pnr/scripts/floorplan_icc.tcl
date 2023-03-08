###########################################################################
### Floorplanning
###########################################################################

# Lab 3
#create_floorplan -core_utilization 0.6 -left_io2core 5 -bottom_io2core 5 -right_io2core 5 -top_io2core 5

# Lab 4
create_floorplan -core_utilization 0.6 -left_io2core 10 -bottom_io2core 10 -right_io2core 10 -top_io2core 10 -core_aspect_ratio 0.6

save_mw_cel -as fifo_init_fp

derive_pg_connection -power_net VDD -ground_net VSS
derive_pg_connection -power_net VDD -ground_net VSS -tie

##Create VSS ring
# Lab 3
create_rectangular_rings  -nets  {VSS}  -left_offset 0.5  -left_segment_layer M6 -left_segment_width 1.0 -extend_ll -extend_lh -right_offset 0.5 -right_segment_layer M6 -right_segment_width 1.0 -extend_rl -extend_rh -bottom_offset 0.5  -bottom_segment_layer  M7 -bottom_segment_width 1.0 -extend_bl -extend_bh -top_offset 0.5 -top_segment_layer M7 -top_segment_width 1.0 -extend_tl -extend_th

# Lab 4
#create_rectangular_rings  -nets  {VSS} -right_segment_layer M7 -left_segment_layer M7 -bottom_segment_layer  M6 -top_segment_layer M6 
 

## Create VDD Ring
# Lab 3
create_rectangular_rings  -nets  {VDD}  -left_offset 1.8  -left_segment_layer M6 -left_segment_width 1.0 -extend_ll -extend_lh -right_offset 1.8 -right_segment_layer M6 -right_segment_width 1.0 -extend_rl -extend_rh -bottom_offset 1.8  -bottom_segment_layer M7 -bottom_segment_width 1.0 -extend_bl -extend_bh -top_offset 1.8 -top_segment_layer M7 -top_segment_width 1.0 -extend_tl -extend_th

# Lab 4
#create_rectangular_rings  -nets  {VDD} -right_segment_layer M7 -left_segment_layer M7 -bottom_segment_layer  M6 -top_segment_layer M6 

## Creates Power Strap 
# Lab 3
create_power_strap -nets { VDD } -layer M6 -direction vertical -width 3  
create_power_strap -nets { VSS } -layer M6 -direction vertical  -width 3

# Lab 4
#create_power_strap -nets { VDD } -layer M7 -direction vertical -width 3  
#create_power_strap -nets { VSS } -layer M7 -direction vertical  -width 3

save_mw_cel -as fifo_pow_rings

## Save the design
create_fp_placement

save_mw_cel -as fifo_create_fp

#insert_stdcell_filler -cell_with_metal {SHFILL1_RVT SHFILL2_RVT SHFILL3_RVT SHFILL64_RVT SHFILL128_RVT}

save_mw_cel -as fifo_fill_fp

preroute_standard_cells -route_pins_on_layer M1

save_mw_cel -as fifo_fp
report_fp_placement > reports/fp_placement.rpt
