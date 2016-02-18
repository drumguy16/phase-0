// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Alyssa Ransbury
// This challenge took me [several] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}


// Pseudocode
// Iterate through votes with for loop. Each time unique property is encountered, adds new property set to initial value of one. If not unique, add 1 to existing property.
// Iterate through voteCount. for each property, set an array that holds only the property values(number of votes).
//find the max value in each array 
//find the property values that match max values in voteCount object. 
// set the keys of those values as values of corresponding keys in officers object.

// __________________________________________
// Initial Solution


// Tally the votes in voteCount.
var counter = function() {
  for(var key in votes) {
    if (votes[key]['president'] in voteCount['president']) {
     voteCount['president'][votes[key]['president']] += 1;
    }
    else {
      voteCount['president'][votes[key]['president']] = 1;
    }
  if (votes[key]['vicePresident'] in voteCount['vicePresident']) {
     voteCount['vicePresident'][votes[key]['vicePresident']] += 1;
    }
    else {
      voteCount['vicePresident'][votes[key]['vicePresident']] = 1;
    }
      if (votes[key]['secretary'] in voteCount['secretary']) {
     voteCount['secretary'][votes[key]['secretary']] += 1;
    }
    else {
      voteCount['secretary'][votes[key]['secretary']] = 1;
    }
        if (votes[key]['treasurer'] in voteCount['treasurer']) {
     voteCount['treasurer'][votes[key]['treasurer']] += 1;
    }
    else {
      voteCount['treasurer'][votes[key]['treasurer']] = 1;
    }
  }
}


counter();


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */

var winner = function() {
  var voteNums = [];
  for (var jobtitle in voteCount) { // going inside voteCount; keys are job title
    var indivVotes = []
    for (var name in voteCount[jobtitle]) { // going inside job titles to names of people who we voted for
     indivVotes.push(voteCount[jobtitle][name]);
    }
    voteNums.push(indivVotes);
    
  }

  var presMax = Math.max(...voteNums[0]);
  var vicePresMax = Math.max(...voteNums[1]);
  var secMax = Math.max(...voteNums[2]); 
  var tresMax = Math.max(...voteNums[3]);
  
  for(var name in voteCount.president){ 
    if (voteCount.president[name] === presMax) {
      officers.president = name;
    }
  }
  for(var name in voteCount.vicePresident){ 
    if (voteCount.vicePresident[name] === vicePresMax) {
      officers.vicePresident = name;
    }
  }
  for(var name in voteCount.president){ 
    if (voteCount.secretary[name] === secMax) {
      officers.secretary = name;
    }
  }
  for(var name in voteCount.treasurer){ 
    if (voteCount.treasurer[name] === tresMax) {
      officers.treasurer = name;
    }
  }
}

winner();






// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection
// Q: What did you learn about iterating over nested objects in JavaScript?
// A: That the divine creator of JavaScript hates me and wants me to be miserable. Also that, just like in Ruby, you must be sure to address the proper level of the parent object you intend to iterate over. I learned when it is helpful to use bracket notation vs. dot notation to access properties.

// Q: Were you able to find useful methods to help you with this?
// A: I got more experience with using for loops and for-in loops for iteration. Method-wise, We made use of Math.max(...) to find the max value in an array.

// Q: What concepts were solidified in the process of working through this challenge?
// A: I definitely solidified a few syntax issues I was having. Mainly in the contex of for-in loops. Also, I gained clarity on some do's and don't's in control flow.



// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)