def sumLoop(x, y):
	cdef float n = 0
	for z in range(0,10):
		n = n + x + y
	return n

def subLoop(x, y):
	cdef float n = 0
	for z in range(0,10):
		n = n + x - y
	return n

def multiplyLoop(x, y):
	cdef float n = 0
	for z in range(0,10):
		n = n * x
		n = n / y
	return n
