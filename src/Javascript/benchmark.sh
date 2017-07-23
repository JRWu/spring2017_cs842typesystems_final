#!/bin/bash

# Compile
make

# Benchmark the Typed Arithmetic File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Javascript_typed_1_arithmetic.txt" nodejs typed_1_arithmetic.js
done
# Benchmark the Typed Strings File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Javascript_typed_2_strings.txt" nodejs typed_2_string.js
done
# Benchmark the Typed IO File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Javascript_typed_3_io.txt" nodejs typed_3_io.js
done
# Benchmark the Typed Recursion File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Javascript_typed_4_recursion.txt" nodejs typed_4_recursion.js
done


# Benchmark the Untyped Arithmetic File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Javascript_untyped_1_arithmetic.txt" nodejs untyped_1_arithmetic.js
done
# Benchmark the Untyped Strings File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Javascript_untyped_2_strings.txt" nodejs untyped_2_string.js
done
# Benchmark the Untyped IO File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Javascript_untyped_3_io.txt" nodejs untyped_3_io.js
done
# Benchmark the Untyped Recursion File
for i in {1..10}
do
	/host/usr/bin/time -f "%E" -a -o "Javascript_untyped_4_recursion.txt" nodejs untyped_4_recursion.js
done

make clean
