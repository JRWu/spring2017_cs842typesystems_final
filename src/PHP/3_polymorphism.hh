<?hh

namespace src\PHP\polymorphism;

class Bird{
	public $name;
	public $age;

	public function __construct($name, $age){
		$this->name = $name;
		$this->age = $age;
	}
	public function talk(){
		return 'Chirp! ';
	}
}

class Duck extends Bird{
	public function __construct($name, $age){
		parent::__construct($name, $age);
	}
	
	public function talk(){
		return 'Quack';
	}
}



function main(array<string> $argv){
	$duck = new Duck('Donald', 42);
}

main ($argv);

