#!/bin/bash


#mkdir NthPrime
tar -xzf NthPrime.tgz
cd NthPrime || exit

gcc -o NthPrime main.c nth_prime.c

./NthPrime "$1"
