// Release 1
var athletes = ['Sarah Hughes', 'Ladie\'s Singles']

var win = function(array) {
  array.push('win');
  console.log(array[0] + ' won the ' + array[1])
}

win(athletes)

// Release 2
var reverse = function(string){
  
  console.log(string.split('').reverse().join(''))
}
reverse("!sdrow ruoy elbmuJ")

// Release 3
var test = [1,4,0,9,8,2]

var evens = function(array) {
  var i = 0;
  var even_numbers = [];
  for (i = 0; i < array.length; i++) {
    if (array[i] == 0) {
      even_numbers.push(array[i])
    }
    else if (array[i] % 2 == 0) {
      
      even_numbers.push(array[i])
    }

  };
  console.log(even_numbers);
}
evens(test)

// Release 4
function Athlete(name, age, sport,quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
  
}
  
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflections

// Q:What JavaScript knowledge did you solidify in this challenge?
// A:Syntax! Syntax! Syntax!....And a bit of control flow. I also gained experience with the .reverse() array function.

// Q:What are constructor functions?
// A:constructor functions define a way to instantiate multiple instances of an object. I feel like it's kind of similar to setting up classes in Ruby.

// Q:How are constructors different from Ruby classes (in your research)?
// A:Aside from obvious syntax differences, They seem to function very similarly. You don't have explicit inititalize methods in constructor functions. I guess you don't really have instance variables in constructor methods, although you do have something similar.
