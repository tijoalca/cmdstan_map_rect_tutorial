#!/bin/bash

# set path to working directory
path=$(pwd)
path_cmdstan=~/cmdstan

cd $path_cmdstan

# make model0
#make $path/logistic0
make $path/logistic1

cd $path

#time ./logistic0 sample data file=redcard_input.R

export STAN_NUM_THREADS=-1
time ./logistic1 sample data file=redcard_input.R

exit
