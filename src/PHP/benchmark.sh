#!/bin/bash

# Benchmark the Untyped Primitives File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_untyped_1_primitives.txt" php 1_primitives.hh
done

# Benchmark the Untyped Recursive File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_untyped_2_recursive.txt" php 2_recursive.hh
done

# Benchmark the Untyped Polymorphic File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_untyped_3_polymorphism.txt" php 3_polymorphism.hh
done

# Benchmark the Untyped Datastructures File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_untyped_4_datastructures.txt" php 4_datastructures.hh
done


