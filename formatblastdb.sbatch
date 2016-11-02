#!/bin/sh
#SBATCH -N formatdb
#SBATCH -o formatdb.o
#SBATCH -e formatdb.err
#SBATCH -t 100:00:00
#SBATCH --mem-per-cpu=2gb
#SBATCH --cpus-per-task=1

cd $SLURM_SUBMIT_DIR

module load ncbi_blast

makeblastdb -in Cmax_chr_v1.0.fa -input_type fasta -dbtype nucl -out Cmax_genome_db 


