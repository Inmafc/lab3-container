#!/bin/bash
#
#SBATCH -p hpc-bio-lejeune
#SBATCH --workdir=/home/alumno04/lab3-container
#SBATCH -J JOBInma
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=NONE        #END/START/NONE
#SBATCH --mail-user=ic.fernandezcaballero@um.es

#Medición del tiempo en lenguaje ++c y python
echo Ejecutando k-mers14 con C++
time ./k-mer14

echo Ejucutando k-mers14 con python
time ./k-mer14.py

echo Ejecutando k-mers13 con C++
time ./k-mer13

echo Ejecutando k-mer13 con python
time ./k-mer13.py
