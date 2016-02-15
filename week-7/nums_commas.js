// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: John Pults.

// Pseudocode
// Create function that accepts a number as argument
// split characters in number and put into an array
// reverse the array 
// pop out three array items at a time startin from last three in array
// put objects three at a time from beginning of 1st array in to new array followed by comma character.Order of new array will be again reversed 
// continue until 1st array is empty
// join all elements in new array to string and return



// Initial Solution

function seperateComma(number) {
  
  var array = number.toString().split("");
  array.reverse();
  
  var new_array = []
  
  for (var i = 0; i < array.length; i++) {
    
    new_array.push(array[i]);
    
    if ((i + 1) % 3 == 0) {
      
      new_array.push(",");
      
    }
    
  }
  
  new_array.reverse();
  
  var string = new_array.join("");
  
  console.log(string);
  
}


seperateComma(1569743);

// Refactored Solution

function seperateComma(number) {
  var numString =  number.toString();
  var finalString = "";
  
  
  
  for(var i = -3; i >= -(numString.length) ; i-=3) {
  
    finalString =  "," + numString.slice(i, numString.length + (i + 3) ) + finalString ;
    }
  var extra = numString.length % 3;
  finalString = numString.slice(0,extra).concat(finalString);
  console.log(finalString);
}

seperateComma(1569743);


// Your Own Tests (OPTIONAL)




// Reflection
// Q:What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// A:Approaching the challenge from the JavaScript perspective was cool because it gave me a chance to reassess the logic for this solution. I feel like approaching a challenge from different angles always provides results in valuable insight. We did have to look at different possibilities for coming up with a solution.

// Q:What did you learn about iterating over arrays in JavaScript?
// A:I learned a variety of different powerful functions that are unique to arrays. I also gained experience working with 'for' loops and ways to approach working through solutions with those loops.

// Q:What was different about solving this problem in JavaScript?
// A:The methods available for modifying strings vs arrays in javascript and ruby have very different limitations. For example: strings in ruby have a reverse method, but strings in JavaScript do not. 

// Q:What built-in methods did you find to incorporate in your refactored solution?
// A:We utilized the 'slice' and 'concat' methods in our refactored solution.