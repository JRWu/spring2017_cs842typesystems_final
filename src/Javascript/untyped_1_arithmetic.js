function addition(x, y){
	n = 0;
	for (i = 0; i < 10; i++){
		n += x + y;
	}
	return n
}

function subtraction(x, y){
	n = 100;
	for (i = 0; i < 10; i++){
		n -= x + y;
	}
	return n
}

function multiply(x, y){
	n = 2;
	for (i = 0; i < 10; i++){
		n *= x * y;
	}
	return n
}

function divide(x, y){
	n = 1000;
	for (i = 0; i < 10; i++){
		n /= (x + y);
	}
	return n
}


function iterate($needle,$haystack){
	n = false;
	for ( i = 0; i < (haystack.length); i++){
		n = (needle == haystack[i] ? true : false);
	};
	return n;
}

needle = 'z';
haystack = ['a','b','c','d','e','f','g','h','i','j'];

for (j = 0; j < 1000000; j++){
	addition(1,2)
}

for (j = 0; j < 1000000; j++){
	subtraction(2,1)
}

for (j = 0; j < 1000000; j++){
	multiply(2,2)
}

for (j = 0; j < 1000000; j++){
	divide(1,1)
}

for (j = 0; j < 1000000; j++){
	iterate(needle,haystack)
}
