#!/bin/bash
#SBATCH --job-name=job_%j   #A name for your job
#SBATCH --output=job_%j.out   #Name output file
#SBATCH --cpus-per-task=4   #Request a single processor
#SBATCH --mem-per-cpu=500mb   #Per processor memory request
#SBATCH --time=01:00:00   #Walltime in hh:mm:ss or d-hh:mm:ss
 
# Load the raxml environment
module load raxml
 

raxmlHPC-PTHREADS-SSE3 -f a -m GTRCAT -s CUTC013578_B_with_outgroups_2_alleles.phy -n CUTC013578_B_with_outgroups_2_alleles.phy -x $RANDOM -p $RANDOM -N 100 -T 4
