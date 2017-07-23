def sumLoop(int x, int y):
	cdef int n = 0
	for z in range(0,10):
		n = n + x + y
	return n

def subLoop(int x, int y):
	cdef int n = 0
	for z in range(0,10):
		n = n + x - y
	return n

def multiplyLoop(int x, int y):
	cdef int n = 0
	for z in range(0,10):
		n = n * x
		n = n / y
	return n
