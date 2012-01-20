set terminal png 
set output 'output.png'
set title 'Distribution of a particular PAPI counter value across a problem size'
set xlabel 'Tile sizes'
set ylabel 'Count'
set autoscale y
set xrange [0 :512 ]
!paste statica.dat option1.512.dat > test.dat
plot 'test.dat' using 1:2
