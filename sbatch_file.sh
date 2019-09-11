#!/bin/bash 
#SBATCH --nodes=20
#SBATCH --ntasks-per-node=40
#SBATCH --time=10:00:00
#SBATCH --job-name=galaxsim
#SBATCH --output=/scratch/d/dsiegel/dutcherm/enzo-test/GalaxyDiskPatch.txt
#SBATCH --mail-type=FAIL
#SBATCH --partition=compute

cd $SCRATCH/enzo-test/GalaxyDiskPatch2

source ~/scripts/modules

#module load intel/2018.3
#module load intelmpi/2018.3
#module load python/2.7.14-anaconda5.1.0
#module load hdf5/1.8.20
 
run ~/enzo-dev/src/enzo/enzo.exe -r -d ~/paramfiles/GalaxyDiskPatch.enzo

#$SCRATCH/enzo-test/debug/GalaxySimDebug/DD0055/DD0055
#-d ~/enzo-dev/run/Hydro/Hydro-3D/GalaxySimulation/GalaxySimulation.enzo
