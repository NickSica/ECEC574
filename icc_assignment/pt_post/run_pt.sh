TOP_LIST="s386 s1238 s9234 s15850 s35932"
for top in $TOP_LIST; do
	TOP=$top pt_shell -f pt_post.tcl | tee logs/${top}.log 
done
