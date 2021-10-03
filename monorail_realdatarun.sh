#!/bin/sh
#
# wrapper script to run monorail recount pump
# with real data
# sbatch --mem=48G --cpus-per-task 20 monorail_realdatarun.sh SRR390728
# /path/to/SRR390728_125_1.fastq.gz /path/to/SRR390728_125_2.fastq.gz SRP020237

srr=$1
fasta1=$2
fasta2=$3
srp=$4

module load singularity/3.8.2

/bin/bash /home/parikhpp/git/monorail-external/singularity/run_recount_pump.sh \
        /home/parikhpp/git/monorail-external/recount-rs5_1.0.6.sif \
        $srr \
	local \
	hg38 \
	20 \
        /data/parikhpp/reference_indexes \
	$fasta1 \
	$fasta2 \
	$srp
