from untyped_functions import *

haystack = '''
Received shutters expenses ye he pleasant. Drift as blind above at up. 
No up simple county stairs do should praise as. 
Drawings sir gay together landlord had law smallest. 
Formerly welcomed attended declared met say unlocked. 
Jennings outlived no dwelling denoting in peculiar as he believed. 
Behaviour excellent middleton be as it curiosity departure ourselves.
'''
needle = 'landlord'
pattern = 'fixed'

for i in range(0, 1000000):
	concatenate(needle, pattern)

for i in range(0, 10000):
	levenshtein(needle,haystack)
