<?hh

namespace src\PHP\arithmetic\typed;

function addition(int $x, int $y){
	$n = 0;
	for ( $i = 0; $i < 10; $i++){
		$n = ($n + $x + $y);
	};
	return $n;
}

function subtraction(int $x, int $y){
	$n = 100;
	for ( $i = 0; $i < 10; $i++){
		$n = $n - ($x + $y);
	};
	return $n;
}

function multiply(int $x, int $y){
	$n = 2;
	for ( $i = 0; $i < 10; $i ++){
		$n = $n * $x * $y;
	};
	return $n;
}

function divide(int $x, int $y){
	$n = 0;
	for ( $i = 0; $i < 10; $i ++){
		$n = $n / ($x + $y);
	};
	return $n;
}

function iterate(string $needle, array <string> $haystack){
	$n = FALSE;
	for ( $i = 0; $i < count($haystack); $i++){
		$n = ($needle == $haystack[$i] ? TRUE : FALSE);
	};
	return $n;
}


function main(array<string> $argv){

	$needle = 'z';
	$haystack = ['a','b','c','d','e','f','g','h','i','j'];

	for ( $i = 0; $i < 1000000; $i ++){
		addition(1,2);
	}

	for ( $i = 0; $i < 1000000; $i ++){
		subtraction(2,1);
	}

	for ( $i = 0; $i < 1000000; $i ++){
		multiply (2, 2);
	}

	for ( $i = 0; $i < 1000000; $i ++){
		divide (1, 1);
	}


	for ( $i = 0; $i < 1000000; $i ++){
		iterate($needle, $haystack);
	}
}

main ($argv);