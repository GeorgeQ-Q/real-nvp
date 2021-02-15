#!/bin/sh
#SBATCH -N 1 # nodes requested
#SBATCH -n 1 # tasks requested
#SBATCH --partition=Standard
#SBATCH --gres=gpu:2
#SBATCH --mem=12000 # memory in Mb
#SBATCH --time=0-16:00:00


# Activate the relevant virtual environment:


source /home/${STUDENT_ID}/miniconda3/bin/activate rnvp
cd /home/${STUDENT_ID}/real-nvp/
python train.py