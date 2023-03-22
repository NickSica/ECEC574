set libdir "/mnt/class_data/ecec574-w2019/PDKs/SAED32nm/tech/star_rcxt"
set tlupmax "$libdir/saed32nm_1p9m_Cmax.tluplus"
set tlunom "$libdir/saed32nm_1p9m_nominal.tluplus"
set tlupmin "$libdir/saed32nm_1p9m_Cmin.tluplus"
set tech2itf "$libdir/saed32nm_tf_itf_tluplus.map"
set_tlu_plus_files -max_tluplus $tlunom -tech2itf_map $tech2itf

set techfile "/mnt/class_data/ecec574-w2019/PDKs/SAED32nm/tech/milkyway/saed32nm_1p9m_mw.tf"
set ref_lib "/mnt/class_data/ecec574-w2019/PDKs/SAED32nm/lib/stdcell_rvt/milkyway/saed32nm_rvt_1p9m"
set lib_name $top

create_mw_lib $lib_dir/$lib_name.mw \
		 -technology $techfile \
		 -mw_reference_library $ref_lib 
open_mw_lib $lib_dir/$lib_name.mw

#set design_data ../dc_synth/$output_dir/fifo.ddc
set cell_name $top
#import_designs $design_data -format ddc -top $cell_name

read_verilog $top.v

uniquify_fp_mw_cel

link

read_sdc ../dc_synth/$const_dir/$top.sdc

save_mw_cel -as initial
