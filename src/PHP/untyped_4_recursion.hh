<?hh

namespace src\PHP\recursion\untyped;

function fib($x){
	if ($x == 0) { return 0; }
	elseif ($x == 1) { return 1; }
	else { return fib ($x-1) + fib($x-2);}
}

function gcd($m, $n, $g){
	if ((($m % $g) == 0) && (($n % $g) == 0)){ return $g; }
	else { return gcd($m, $n, $g-1); }

}

function recursiveAdd($x, $y){
	if ($x == 0){ return $y; }
	else { return recursiveAdd($x-1, $y+1); }
}

function main(array<string> $argv){
	for($i=0;$i<=10000;$i++){
		fib(20);
	}
	
	for($i=0;$i<=10000;$i++){
		gcd(1234, 84, 123);
	}

	for($i=0;$i<=10000;$i++){
		recursiveAdd(10,3);
	}

}

main ($argv);