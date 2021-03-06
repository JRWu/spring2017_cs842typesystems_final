#1) Arithmetic Primitives
def addition(int x, int y):
	cdef int n = 0
	for i in range (0,10):
		n += x + y
	return n

def subtraction(int x, int y):
	cdef int n = 100
	for i in range (0,10):
		n = n - (x + y)
	return n

def multiply(int x, int y):
	cdef int n = 2
	for i in range (0,10):
		n = n * x * y
	return n

def divide (int x, int y):
	cdef int n = 1000
	for i in range (0,10):
		n = n / (x + y)
	return n

def iterate(bytes needle, list haystack):
	for i in range(len(haystack)):
		res = 'true' if (needle == haystack[i]) else 'false'
	return res

#2) String Operations
def concatenate(bytes x, bytes y):
	return x+y

def levenshtein(bytes s1, bytes s2):
	if len(s1) < len(s2):
		return levenshtein(s2, s1)

	# len(s1) >= len(s2)
	if len(s2) == 0:
		return len(s1)

	previous_row = range(len(s2) + 1)
	for i, c1 in enumerate(s1):
		current_row = [i + 1]
		for j, c2 in enumerate(s2):
			insertions = previous_row[j + 1] + 1 # j+1 instead of j since previous_row and current_row are one character longer
			deletions = current_row[j] + 1       # than s2
			substitutions = previous_row[j] + (c1 != c2)
			current_row.append(min(insertions, deletions, substitutions))
		previous_row = current_row
    
	return previous_row[-1]


#3) I/O Operations
def readFile(bytes filename):
	f = open(filename, 'r')
	for line in f:
		# Do nothing
		s = line
	f.close

#4) Recursion
def fib(int n):
	if n == 0: return 0
	elif n == 1: return 1
	else: return fib(n-1)+fib(n-2)

def gcd(int m, int n, int g):
	if (((m % g) == 0) and ((n % g) == 0)): return g
	else: return gcd(m, n, g - 1);

def recursiveAdd(int x, int y):
	if (x == 0): return y
	else: return recursiveAdd((x-1), (y+1))