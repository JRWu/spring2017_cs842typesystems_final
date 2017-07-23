<?hh

namespace src\PHP\io\untyped;

function readFile($filename){
	$f = fopen($filename, "r");
	while(!feof($f)){
		$s = fgets($f);
	}
	fclose($f);
}

function main(array<string> $argv){
	for($i=0;$i<=1000000;$i++){
		readFile('input.txt');
	}
}

main ($argv);