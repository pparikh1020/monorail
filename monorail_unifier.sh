#!/bin/sh
#
# wrapper script to run the monorail unifier step on data 
# produced from the monorail pump
# sbatch --mem=128G --cpus-per-task 6 monorail_unifier.sh 
# /path/to/references
# /path/to/working/directory /path/to/pump/output
# /path/to/sample_metadata project_short_name:project_id
#
# project id should be between 100 and 250 exclusive
#

ref=$1
wd=$2
output=$3
metadata=$4
name=$5

module load singularity/3.8.5

/bin/bash /home/parikhpp/git/monorail-external/singularity/run_recount_unify.sh \
	/home/parikhpp/git/monorail-external/recount-unify_1.0.9.sif \
	hg38 \
	$ref \
	$wd \
	$output \
	$metadata \
	10 \
	$name
