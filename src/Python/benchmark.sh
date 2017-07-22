#!/bin/bash

# Benchmark the Primitives File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "one.txt" python 1_primitives.py
done
