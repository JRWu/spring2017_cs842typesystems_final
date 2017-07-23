<?hh

namespace src\PHP\primitive;

function sumLoop($x, $y){
	$n = 0;
	for ( $i = 0; $i < 10; $i++){
		$n = ($n + $x + $y);
	};
	return $n;
}

function subLoop($x, $y){
	$n = 0;
	for ( $i = 0; $i < 10; $i++){
		$n = ($n + $x - $y);
	};
	return $n;
}

function multiplyLoop($x, $y){
	$n = 0;
	for ( $i = 0; $i < 10; $i ++){
		$n = $n * $x;
		$n = $n / $y;
	};
	return $n;
}

function main(array<string> $argv){
	for ( $i = 0; $i < 1000000; $i ++){
		sumLoop(1,2);
	}

	for ( $i = 0; $i < 1000000; $i ++){
		subLoop(2,1);
	}

	for ( $i = 0; $i < 1000000; $i ++){
		multiplyLoop (2, 2);
	}
}

main ($argv);