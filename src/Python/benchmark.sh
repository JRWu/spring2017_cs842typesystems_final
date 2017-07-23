#!/bin/bash

# Compile
make

# Benchmark the Typed Arithmetic File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_typed_1_arithmetic.txt" python typed_1_arithmetic.py
done
# Benchmark the Typed Strings File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_typed_2_strings.txt" python typed_2_strings.py
done
# Benchmark the Typed IO File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_typed_3_io.txt" python typed_3_io.py
done
# Benchmark the Typed Recursion File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_typed_4_recursion.txt" python typed_4_recursion.py
done


# Benchmark the Untyped Arithmetic File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_untyped_1_arithmetic.txt" python untyped_1_arithmetic.py
done
# Benchmark the Untyped Strings File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_untyped_2_strings.txt" python untyped_2_strings.py
done
# Benchmark the Untyped IO File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_untyped_3_io.txt" python untyped_3_io.py
done
# Benchmark the Untyped Recursion File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Python_untyped_4_recursion.txt" python untyped_4_recursion.py
done






