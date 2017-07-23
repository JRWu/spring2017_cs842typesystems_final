function fib(n){
	if (n == 0) { return 0; }
	else if (n == 1) { return 1; }
	else { return fib(n-1) + fib(n-2) }
}

function gcd(m, n, g){
	if (((m % g) == 0) && ((n % g) == 0)) { return g; }
	else{ return gcd(m, n, g - 1); }
}

function recursiveAdd(x, y){
	if (x == 0){ return y; }
	else{ return recursiveAdd((x-1), (y+1)); }
}

for (a = 0; a < 10000; a++){
	fib(20);
}

for (a = 0; a < 10000; a++){
	gcd(1234, 84, 123);
}

for (a = 0; a < 10000; a++){
	recursiveAdd(10,3);
}