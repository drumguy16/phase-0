
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var bobsAge = 10;
var bobsBirthday = bobsAge + 1;
console.log(bobsBirthday)

var food = prompt("What is your favorite food?" , ""); 
alert("Hey! That's my favorite too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var counter = 0;
while (counter < 100) {
  counter += 1;
  if (counter % 15 == 0)
    console.log("FizzBuzz");
  else if (counter % 3 == 0)
    console.log("Fizz");
   else if (counter % 5 == 0)
     console.log("Buzz");
   else 
     console.log(counter);
	}


// Functions

// Complete the `minimum` exercise.
function min(num1, num2) {
	if (num1 < num2)
		return num1;
	else 
		return num2;
}

console.log(min(0, 9))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Brett",
	age: 30,
	"favorite foods": ["chicken","pig","squirrel"],
	quirk: "I tap on things when nervous."
	};