#!/bin/bash

#Select which kind of nodes will be used for job 
#SBATCH -p defq

#working directory: always use the full name
#SBATCH -D /home/jodymou/neurips19-graph-protein-design

#Output file
#SBATCH -o /home/jodymou/neurips19-graph-protein-design/experiments/logs/slurm.%N.%j.out

#Error/log file - will write this to the directory below
#SBATCH -e /home/jodymou/neurips19-graph-protein-design/experiments/logs/slurm.%N.%j.err

#The test command
srun date

sh experiments/run_training.sh