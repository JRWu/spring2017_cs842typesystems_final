<?hh

namespace src\PHP\io\typed;

function readFile(string $filename): void
{
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