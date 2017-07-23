<?hh

namespace src\PHP\recursive;

function fib($x){
	if ($x == 0) { return 0; }
	elseif ($x == 1) { return 1; }
	else { return fib ($x-1) + fib($x-2);}
}

function gcd($m, $n, $g){
	if ((($m % $g) == 0) && (($n % $g) == 0)){ return $g; }
	else { return gcd($m, $n, $g-1); }

}

function main(array<string> $argv){
	fib(40);
	gcd(1234, 84, 123);
}

main ($argv);