def fib(int n):
	if n == 0: return 0
	elif n == 1: return 1
	else: return fib(n-1)+fib(n-2)

def gcd(int m, int n, int g):
	if (((m % g) == 0) and ((n % g) == 0)): return g
	else: return gcd(m, n, g - 1);

