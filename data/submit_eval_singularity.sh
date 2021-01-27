#!/bin/bash
#
#SBATCH -p hpc-bio-lejeune
#SBATCH --chdir=/home/alumno04/lab3/singularity
#SBATCH -J Eval_singularity
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=NONE        #END/START/NONE
#SBATCH --mail-user=ic.fernandezcaballero@um.es

module load singularity/3.7.0

echo Running k-mers14 with C++ using the image python_latest.sif
time ./k-mer14 python_latest.sif

echo Running k-mers14 with python using the image python_latest.sif
time ./k-mer14.py python_latest.sif

echo Running k-mers13 with C++ using the image python_latest.sif
time ./k-mer13 python_latest.sif

echo Running k-mers13 with Python using the image python_latest.sif
time ./k-mer13.py python_latest.sif
