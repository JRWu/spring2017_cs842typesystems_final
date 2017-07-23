function readFile(filename){
	fs = require('fs')
	fs.readFile(filename, 'utf8', function(err,data){
		if (err){
			return console.log(err);
		}
		f = (data);

	});
}

for (z = 0; z < 1000000; z++){
	readFile("input.txt")
}
