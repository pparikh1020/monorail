#!/bin/sh
# 
# wrapper script to run monorail recount pump 
# example run
# sbatch --mem=48G --cpus-per-task 6 monorail_run.sh SRR390728 SRP020237

srr=$1
srp=$2

module load singularity/3.8.2

/bin/bash /home/parikhpp/git/monorail-external/singularity/run_recount_pump.sh \
	/home/parikhpp/git/monorail-external/recount-rs5_1.0.6.sif \
	$srr \
	$srp \
	hg38 \
	6 \
	/data/parikhpp/reference_indexes
