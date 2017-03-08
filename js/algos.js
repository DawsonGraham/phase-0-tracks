// Write a function that takes an array of words (strings)
// Return the longest word or string in the array

var length = 0;
var longest_word = "";

function Array(string_array) {
    for(var i = 0; i < string_array.length; i++) {
		if (string_array[i].length > length) {
			length = string_array[i].length
			longest_word = string_array[i]
		}
    }
    console.log(longest_word + " is the longest word in the array")
}

var newarray = new Array (["Red","Blue", "Green", "Magenta"])