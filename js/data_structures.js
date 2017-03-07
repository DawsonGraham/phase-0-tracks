var colors = ["red", "blue", "green", "yellow"];

var names = ["Ponyta", "Rapidash", "Squirtle", "Charmander"];

colors.push("purple");

names.push("Bulbasaur");

var horses = {};

for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses)

function Car(make, model, year) {
	this.make = make;
	this.model = model;
	this.year = year;

	this.honk = function() {console.log("BEEEEEEEP!!!");};
}

var newcar = new Car("Honda", "Civic", 2001)
console.log(newcar.make + " " +  newcar.model)

newcar.honk();

var anothercar = new Car("European", "Ferrari", 2016)
console.log(anothercar.model)