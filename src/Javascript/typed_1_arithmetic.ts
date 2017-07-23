function addition(x:number, y:number){
	var n: number = 0;
	for (var i:number = 0; i < 10; i++){
		n += x + y;
	}
	return n
}

function subtraction(x:number, y:number){
	var n:number = 100;
	for (var i:number = 0; i < 10; i++){
		n -= x + y;
	}
	return n
}

function multiply(x:number, y:number){
	var n:number = 2;
	for (var i:number = 0; i < 10; i++){
		n *= x * y;
	}
	return n
}

function divide(x:number, y:number){
	var n:number = 1000;
	for (var i:number = 0; i < 10; i++){
		n /= (x + y);
	}
	return n
}


function iterate(needle:string ,haystack:string[]){
	var n:boolean = false;
	for (var i:number = 0; i < (haystack.length); i++){
		n = (needle == haystack[i] ? true : false);
	};
	return n;
}

var needle: string = 'z';
var haystack = ['a','b','c','d','e','f','g','h','i','j'];

for (var j:number = 0; j < 1000000; j++){
	addition(1,2)
}

for (var j:number = 0; j < 1000000; j++){
	subtraction(2,1)
}

for (var j:number = 0; j < 1000000; j++){
	multiply(2,2)
}

for (var j:number = 0; j < 1000000; j++){
	divide(1,1)
}

for (var j:number = 0; j < 1000000; j++){
	iterate(needle,haystack)
}
