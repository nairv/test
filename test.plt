set terminal png
set output "output.png"
set title "Distribution of given PAPI counters values"
set xlabel "PAPI Counters"
set ylabel "Count"
#set xtics ("PAPI_TOT_CYC" 1, "L1D:REPL" 2 , "MEM_LOAD_RETIRED:L1D_HIT" 3 , "LLC_REFERENCES" 4 , "MEM_LOAD_RETIRED:DTLB_MISS" 5 , "SSEX_UOPS_RETIRED:SCALAR_DOUBLE" 6 , "SSEX_UOPS_RETIRED:PACKED_DOUBLE" 7 , "UOPS_RETIRED:ANY" 8 , "UNHALTED_CORE_CYCLES" 9) rotate by 90
set logscale y
set xrange [0 :10 ]
!paste static.dat totalcycles.$1.$2.dat > $3 
plot  $3 using 1:2
