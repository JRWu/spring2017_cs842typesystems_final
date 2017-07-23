#!/bin/bash

# Benchmark the Untyped Primitives File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_typed_1_primitives.txt" python 1_primitives.py
done

# Benchmark the Untyped Recursive File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_typed_2_recursive.txt" python 2_recursive.py
done

# Benchmark the Untyped Polymorphic File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_typed_3_polymorphism.txt" python 3_polymorphism.py
done

# Benchmark the Untyped Datastructures File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_typed_4_datastructures.txt" python 4_datastructures.py
done





