"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var fs = require("fs");
function readFile(filename) {
    fs.readFile(filename, 'utf8', function (err, data) {
        if (err) {
            return console.log(err);
        }
        var f = (data);
    });
}
for (var k = 0; k < 1000000; k++) {
    readFile("input.txt");
}
