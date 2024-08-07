 

# 1:control; 2:k13 ; 3:n13 ; 4:wt

i="wt"
j="4"

echo -e "27\n" | gmx covar -f ../Within15A_nascentchain_wt_k13_N13_CONTROL_COM/Trajs_COM_ALL/run${j}_${i}.xtc -s ../Within15A_nascentchain_wt_k13_N13_CONTROL_COM/trajectoriesCOM_WT/ref_em_control.pdb -nofit -xpm ${i}.xpm -ascii ${i}_mtx.dat -n index.ndx

mv ${i}.xpm eigenv* covar.log ${i}

Rscript covariance2correlation.R ${i}_mtx.dat ${i}_xcorr.dat 141
python sum3NcorrelMatrix.py -m ${i}_xcorr.dat > ${i}_xcorr_sum.dat

gnuplot

