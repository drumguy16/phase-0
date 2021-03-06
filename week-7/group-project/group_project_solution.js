
// PERSON 2: 

// (Pseudocode based on only reading Person 1's User stories)




// Define an array filled with only even numbers of your choosing
var evenNumbers = [2,4,6,8,10];
// Define an array filled with only odd numbers of your choosing
var oddNumbers = [1,3,5,7,9];

// Create a function named sum that accepts an array of integers as an argument
// and Returns the sum of the integers in the array
//   - Declare a new variable as the running sum, set equal to zero

//   - FOR each integer in the argument array, add it to the running sum variable
var sum = function(array) {
  var total = 0;
  for(var index = 0; index < array.length ; index++) {
    total += array[index];
  };
  return total;
}
//   - Return the running sum variable 

// Call the sum function with the even-numbers array passed in 
console.log(sum(evenNumbers))


// Call the sum function with the odd-numbers array passed in 
console.log(sum(oddNumbers))




// Create a function named average that accepts an array of integers as an argument 
// and returns the average of all the integers in the array 
//   - Call your new sum function with the argument array passed in to find its sum, and save the sum into a variable 
var average = function(array){
  var toAverage = sum(array);
  return (toAverage/array.length);
}

//   - Divide the sum of the argument array by the its length to find the average
//   - Return this average 

// Call the average function with the even-numbers array passed in 
 console.log(average(evenNumbers))
// Call the average function with the odd-numbers array passed in 

console.log(average(oddNumbers))


// Create a function median that accepts an array of integers as an argument 
// and returns the median of all the integers in the array 
var median = function(array) {
  if( array.length % 2 == 0) {
    var middle1 = array[(array.length/2)-1];
    var middle2 = array[array.length/2];
    var medianArray = [middle1, middle2];
    return average(medianArray);
  }
  else {
    var middle = Math.floor(array.length/2);
    return array[middle]
    
  };
  
}
//   - IF the length of the array is even (even number of integers)
//     - Find the middlemost pair of numbers by dividing the length by 2 and using the result as the index for one of the numbers and the result-minus-1 as the index for the other
//     - Create an array with those two middlemost values
//     - Return the average of the two middlemost values (use the previously defined average function)
//   - ELSE (the length of the array is odd)
//     - Find the middle value by dividing the length by 2 and using the result, rounded down, as the index
//     - Return that middle value 

// Call the median function with the even-numbers array passed in 
console.log(median(evenNumbers))
// Call the median function with the odd-numbers array passed in 
console.log(median(oddNumbers))