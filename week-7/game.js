
 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: to chomp any marbles that roll on to the screen with your hungry hippo
// Overall mission: chomp any marbles that roll in to your path
// Goals: chomp at least 50 marbles
// Characters: Hippo1 and Hippo 2
// Objects: Marbles and Hippos
// Functions: chomp and release marbles

// Pseudocode
// create hippo1 hippo2 and marbles
// marbles will have a roll function that generates a random number of marbles to be rolled onto the screen
// both hippo1 and hippo2 have a chomp function that will chomp a randomly selected number of the marbles rolled 
// after user prompts hippo1 to chomp, hippo 2 will automatically chomp and eat the remaining marbles on the screen
//after each roll chomp the amount of marbles consumed by each hippo will display to the screen. 
//The first hippo to chomp 50 marbles wins
//The winner will be displayed to the console

// Initial Code


var hippo1 = {
  marbleCount: 0,
  winner: false,

  chomp: function() {
    var marblesChomped = Math.floor((Math.random() * newRoll) + 1);
    hippo1.marbleCount += marblesChomped;
    console.log("hippo1 ate " + marblesChomped + "marbles. hippo1 has " + hippo1.marbleCount + "total marbles.");
    var remainingMarbles = (newRoll - marblesChomped);
    hippo2.marbleCount += remainingMarbles;
    console.log("hippo2 ate " + remainingMarbles + "marbles. hippo2 has " + hippo2.marbleCount + "total marbles.");
    if(hippo1.marbleCount >= 50) {
      console.log("hippo1 wins!");
    }
    else if(hippo2.marbleCount >= 50) {
      console.log("hippo2 wins!");
    }
    else if(hippo1.marbleCount >=50 && hippo1.marbleCount === hippo2.marbleCount) {
      console.log("It's a tie!");
    }
    else {
      console.log("Roll more marbles to continue.");
    }
  },
  rollMarbles: function() {
   newRoll = Math.floor((Math.random() * 10) + 1);
    console.log(newRoll + " marbles have been rolled onto the board. Chomp 'em!!!");
    return newRoll;
  }
} 

var hippo2 = {
  marbleCount: 0,
  winner: false  
}

var newRoll = null
console.log("Engage in Hippo hop!");

// Driver Code

hippo1.rollMarbles();

hippo1.chomp()

hippo1.rollMarbles();

hippo1.chomp()


// Refactored Code


var hippo1 = {
  marbleCount: 0,

  chomp: function() {
    var marblesChomped = Math.floor((Math.random() * newRoll) + 1);
    hippo1.marbleCount += marblesChomped;
    console.log("hippo1 ate " + marblesChomped + " marbles. hippo1 has " + hippo1.marbleCount + " total marbles.");
    var remainingMarbles = (newRoll - marblesChomped);
    hippo2.marbleCount += remainingMarbles;
    console.log("hippo2 ate " + remainingMarbles + " marbles. hippo2 has " + hippo2.marbleCount + " total marbles.");
    if(winner(hippo1) == true) {
      console.log("hippo1 wins!");
    }
    else if(winner(hippo2) == true) {
      console.log("hippo2 wins!");
    }
    else if(winner(hippo1) == true && hippo1.marbleCount === hippo2.marbleCount) {
      console.log("It's a tie!");
    }
    else {
      console.log("Roll more marbles to continue.");
    }
  },
  rollMarbles: function() {
   newRoll = Math.floor((Math.random() * 10) + 1);
    console.log(newRoll + " marbles have been rolled onto the board. Chomp 'em!!!");
    return newRoll;
  }
}; 

var hippo2 = {
  marbleCount: 0,
};

var winner = function(player) {
  if(player.marbleCount >= 50) {
    return true;
      }
       else {
         return false;
      }
};
  
var newRoll = null;
console.log("Engage in Hippo hop!");

// Driver Code

hippo1.rollMarbles();

hippo1.chomp()

hippo1.rollMarbles();

hippo1.chomp()




// Reflection
// Q: What was the most difficult part of this challenge?
// A: The most difficult part of this challenge, for me, was planning out a game structure that I thought I could break down into pseudocode and evntually translate to JavaScript. I studied the first game example for inspiration. 

// Q: What did you learn about creating objects and functions that interact with one another?
// A: I learned that flow control is very important in Javascript when determining how objects and functions interact with eachother. I also learned, 1st hand, how liberal the javascript language is. It didn't always throw error messages when something wasn't working how I expected.

// Q: Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// A: For this challenge I had to use a built in javascript function to generate random numbers; Math.random().  This function generates a random number but you have to add a few modifications if you want the generated number to be an integer: Math.floor((Math.random() * 10) + 1) generates an integer between 1 and 10. 

// Q: How can you access and manipulate properties of objects?
// A: I used the dot method to access properties of objects. i.e. hippo1.marbleCount to access the total count of marbles for the object, hippo1.
//
//
//
//
//
//
//