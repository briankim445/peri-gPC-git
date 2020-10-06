#!/bin/bash

# What should you space the jobs by?
startrun=2
endrun=3

echo Submitting simulations $startrun to $endrun.

for j in `seq $startrun $endrun`;
do

echo Job ${j}.
awk -v var="$j" 'NR==11 {$0="i="'"var"'""} 1' runperi.job > temp${j}.job

sbatch temp${j}.job

done