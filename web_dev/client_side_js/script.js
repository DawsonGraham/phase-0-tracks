var paragraph = document.createElement('p');

var text = document.createTextNode("Hello is is our script text!");


function addColor (event) {
	event.target.style.border = "2px solid green";
}


var els = document.getElementsByTagName("em");
var el = els[0];
el.addEventListener("mouseover", addColor);

function alertMessage () {
	alert("This is our super cool alert message!")
}

window.setInterval(alertMessage, 10000);