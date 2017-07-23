function typed_concatenate(x, y) {
    return x + y;
}
function typed_levnshtein(s, t) {
    if (s.length === 0)
        return t.length;
    if (t.length === 0)
        return s.length;
    return Math.min(typed_levnshtein(s.substr(1), t) + 1, typed_levnshtein(t.substr(1), s) + 1, typed_levnshtein(s.substr(1), t.substr(1)) + (s[0] !== t[0] ? 1 : 0));
}
var haystack_typed = " Received shutters expenses ye he pleasant. Drift as blind above at up. No up simple county stairs do should praise as. Drawings sir gay together landlord had law smallest. Formerly welcomed attended declared met say unlocked. Jennings outlived no dwelling denoting in peculiar as he believed. Behaviour excellent middleton be as it curiosity departure ourselves.";
var needle_typed = "z";
var pattern_typed = "fixed";
for (var j = 0; j < 1000000; j++) {
    typed_concatenate(needle_typed, pattern_typed);
}
for (var j = 0; j < 10000; j++) {
    typed_levnshtein(needle_typed, haystack_typed);
}
