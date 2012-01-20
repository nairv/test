set terminal png 
set output 'output.png'
set title 'Distribution of a particular PAPI counter value across a tile size'
set xlabel 'Problem sizes'
set ylabel 'Count'
set logscale y
set xrange [32:512] 
!paste statica.dat option2.50.dat > test.dat
plot 'test.dat' using 1:2
