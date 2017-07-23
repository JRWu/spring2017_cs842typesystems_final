<?hh

namespace src\PHP\datastructures;


function iterate($needle, $haystack){
	$n = FALSE;
	for ( $i = 0; $i < count($haystack); $i++){
		$n = ($needle == $haystack[$i] ? TRUE : FALSE);
	};
	return $n;
}

function main(array<string> $argv){

	$needle = 0;
	$haystack = ['a','b','c','d','e','f','g','h','i','j'];

	for ( $i = 0; $i < 1000000; $i ++){
		iterate($needle, $haystack);
	}

}

main ($argv);

