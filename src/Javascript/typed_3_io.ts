import * as fs from "fs";

function readFile(filename:string){
	fs.readFile(filename, 'utf8', function(err,data){
		if (err){
			return console.log(err);
		}
		var f:any = (data);

	});
}

for (var k:number = 0; k < 1000000; k++){
	readFile("input.txt")
}

