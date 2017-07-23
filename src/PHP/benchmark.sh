#!/bin/bash

# Compile
make

# Benchmark the Typed Arithmetic File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_typed_1_arithmetic.txt" hhvm typed_1_arithmetic.hh
done
# Benchmark the Typed Strings File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_typed_2_strings.txt" hhvm typed_2_strings.hh
done
# Benchmark the Typed IO File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_typed_3_io.txt" hhvm typed_3_io.hh
done
# Benchmark the Typed Recursion File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_typed_4_recursion.txt" hhvm typed_4_recursion.hh
done


# Benchmark the Untyped Arithmetic File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_untyped_1_arithmetic.txt" hhvm untyped_1_arithmetic.hh
done
# Benchmark the Untyped Strings File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_untyped_2_strings.txt" hhvm untyped_2_strings.hh
done
# Benchmark the Untyped IO File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_untyped_3_io.txt" hhvm untyped_3_io.hh
done
# Benchmark the Untyped Recursion File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "PHP_untyped_4_recursion.txt" hhvm untyped_4_recursion.hh
done






