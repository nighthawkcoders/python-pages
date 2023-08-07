#!/bin/bash

# Project requirements
#
echo "=== Make Conda environment (base) ==="
conda update -n base -y -c defaults conda
conda install -y -c conda-forge pyyam
