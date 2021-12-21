#!/bin/sh
#
# wrapper script to run monorail recount pump
# with real data
# sbatch --mem=48G --cpus-per-task 20 monorail_realdatarun_single.sh SRR390728
# /path/to/SRR390728.fastq.gz SRP020237

srr=$1
fasta=$2
srp=$4

module load singularity/3.8.5

/bin/bash /home/parikhpp/git/monorail-external/singularity/run_recount_pump.sh \
        /home/parikhpp/git/monorail-external/recount-rs5_1.0.6.sif \
        $srr \
        local \
        hg38 \
        20 \
        /data/parikhpp/reference_indexes \
        $fasta \
        $srp
