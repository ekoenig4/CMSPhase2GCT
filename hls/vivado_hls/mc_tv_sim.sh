tvlist=(QCD_tv_in-gct_166.txt VBFHGG_tv_in-gct_120.txt ggHBB_tv_in-gct_13.txt)

plotout=""
plot() {
    mkdir -p visualize
    script=$AP_FW_BASE_DIR/CMSPhase2GCT/tvgen/parsetv/visualize.py
    rootout=${tv/.txt/.root}
    rootout=${rootout/in/plot}
    python $script -i $input -o $output -w visualize/$rootout
    plotout="$plotout visualize/$rootout"
}

sim() {
    if [[ ! -f $outref ]]; then
	outref=data/test_out.txt
	create_ref=1
    fi
    vivado_hls -f run_hls.tcl csim=1 tv_in=$PWD/$input tv_out=$PWD/$output tv_ref=$PWD/$outref
    if [ ! -z "$create_ref" ]; then
	outref=${output/output/outref}
	outref=${outref/_out/_out_ref}
	cp -v $output $outref
    fi
}

for tv in ${tvlist[@]}; do
    input=data_mc/input/$tv
    output=data_mc/output/${tv/in/out}
    outref=data_mc/outref/${tv/in/out_ref}
    sim
    plot
done

# if [[ -e dump_tfile ]]; then 
dump_tfile $plotout -o ~/public_html/Trigger/MC_GCT_TV/gct_inout_tv_phiStitch.pdf -n 2
# fi
