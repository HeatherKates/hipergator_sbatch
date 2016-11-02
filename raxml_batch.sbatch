#!/bin/bash
#SBATCH --job-name=job_%j   #A name for your job
#SBATCH --output=job_%j.out   #Name output file
#SBATCH --cpus-per-task=4   #Request a single processor
#SBATCH --mem-per-cpu=500mb   #Per processor memory request
#SBATCH --time=04:00:00   #Walltime in hh:mm:ss or d-hh:mm:ss
#SBATCH --qos=soltis-b
 
# Load the raxml environment
module load raxml
 

raxmlHPC-PTHREADS-SSE3 -f a -m GTRCAT -s $PHYLIPFILE -n $PHYLIPFILE -x $RANDOM -p $RANDOM -N 500 -T 4
