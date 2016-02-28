// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:



// Release 1:

document.getElementById("release-0").className = "done";


// Release 2:

document.getElementById("release-1").style.display = "none";


// Release 3:

document.getElementsByTagName('h1')[0].textContent = "I completed release 2";


// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251" ;


// Release 5:

var i;
for (i=0; i < document.getElementsByClassName("release-4").length; i++){
	document.getElementsByClassName("release-4")[i].style.fontSize = "2em";

}

// Release 6

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

// Reflections
// Q:What did you learn about the DOM?
// A:I learned how to access and manipulate HTML elements by their id, class, and tag names.

// What are some useful methods to use to manipulate the DOM?
// docoment.getElementById, document.getElementsByClassName, and document.getElementsByTagName all came in very handy for accessing different nodes in the DOM.
