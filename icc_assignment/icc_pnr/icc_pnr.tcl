source -echo ../set_env.tcl

# const dir only used for dc_synth folder no need to create
set const_dir const/$top 

set output_dir output/$top
set reports_dir reports/$top
set snapshot_dir snapshot/$top
set lib_dir lib
lappend search_path ../dc_synth/$output_dir

file mkdir $output_dir
file mkdir $reports_dir
file mkdir $snapshot_dir
file mkdir $lib_dir

set icc_snapshot_storage_location $snapshot_dir

source -echo scripts/init_design.tcl
source -echo scripts/floorplan_icc.tcl
source -echo scripts/place_icc.tcl
source -echo scripts/cts_icc.tcl
source -echo scripts/route_icc.tcl
source -echo scripts/extract_icc.tcl
exit
