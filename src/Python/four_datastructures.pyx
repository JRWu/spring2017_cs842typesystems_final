def iterate(bytes needle, list haystack):
	x = 0
	for i in range(len(haystack)):
		res = 'true' if (x == haystack[i]) else 'false'
	return res
