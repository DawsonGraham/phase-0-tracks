// Write a function that takes an array of words or phrases (strings)
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

function Match(hash1, hash2) {
	for(var i = 0; i < hash1.length; i++) {
		if (hash1(i) == hash2(i))
			console.log(hash1(i));
	}
}

var newarray = new Array (["Red","Blue", "Green", "Magenta"])

var animals = ["Lizard", "Crocodile", "Hippopotamus"];

var testArray = new Array(animals);

x = {name: "Dawson", age: 24, hair_color: "black"};
y = {name: "Jane", age: 24, hair_color: "brown"};

testMatch = new Match(x, y);