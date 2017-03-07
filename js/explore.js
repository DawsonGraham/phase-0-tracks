# Take a string as a parameter. Split the string into an array.
# Reverse the array. Join the area without any spaces/characters.

function reverse(str) {
var str_array = str.split("")
var str_array_reverse = str_array.reverse();
var str_reverse = str_array_reverse.join("");
console.log(str_reverse)
}

reverse("hello")