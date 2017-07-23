function addition(x, y) {
    var n = 0;
    for (var i = 0; i < 10; i++) {
        n += x + y;
    }
    return n;
}
function subtraction(x, y) {
    var n = 100;
    for (var i = 0; i < 10; i++) {
        n -= x + y;
    }
    return n;
}
function multiply(x, y) {
    var n = 2;
    for (var i = 0; i < 10; i++) {
        n *= x * y;
    }
    return n;
}
function divide(x, y) {
    var n = 1000;
    for (var i = 0; i < 10; i++) {
        n /= (x + y);
    }
    return n;
}
function iterate(needle, haystack) {
    var n = false;
    for (var i = 0; i < (haystack.length); i++) {
        n = (needle == haystack[i] ? true : false);
    }
    ;
    return n;
}
var needle = 'z';
var haystack = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'];
for (var j = 0; j < 1000000; j++) {
    addition(1, 2);
}
for (var j = 0; j < 1000000; j++) {
    subtraction(2, 1);
}
for (var j = 0; j < 1000000; j++) {
    multiply(2, 2);
}
for (var j = 0; j < 1000000; j++) {
    divide(1, 1);
}
for (var j = 0; j < 1000000; j++) {
    iterate(needle, haystack);
}
