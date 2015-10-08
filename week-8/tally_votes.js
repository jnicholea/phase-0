// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Nathan Park.
// This challenge took me 3.5 hours.

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
  president: { president: "Bob" },
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

// 1. Create a function that iterates over the votes object and pushes vote count tally into voteCount object
//   a. Include a nested loop that will iterate over each object property in order to pass tests
// 2. Create a second function that iterates over voteCount nested objects and finds the max numbers of votes for each object property and returns those names
// 3. (winnning) names are assigned to officers object properties


// __________________________________________
// Initial Solution

// function votesTally(votes){
 
// }



// __________________________________________
// Refactored Solution






// __________________________________________
// Reflection

// //I am not submitting any code for this challenge (although my pair might, he technically did most of the work), 
// because after about 3.5 hours we still 
// were not able to get things to work. We looked up the solution of another student on the DBC github and spent an 
// extensive amount of time talking through what the solution was, why it worked, and what we should have done differently. 
// I could submit the code heavily inspired by the other student's working solution, but I don't really understand what 
// the point of that would be. It's checking a box, but if the purpose of these challenges is both to push us to grow
// and assess where we are, displaying a copied solution doesn't really acheive either of those goals. 

// I can tell you what I learned from looking through a working solution line-by-line:
// 1. Before running our for loop, we need to initialize the count to 0 so that the loop can add to or check against
// the total. 
// 2. We initially thought we would check against the nested values within the votes object, but pulling the information
// out of the votes object and then pushing it into the votecount object made iterating over the information a lot easier
// 3. As usual, I come out of these challenges feeling frustrated that I have such a weak foundation in the fundamentals.
// This is a consistent theme for me when it comes to Javascript, and either the language is much harder than Ruby or the
// course has deviated from the approach for Ruby and there is less emphasis on the fundamentals. Difficult challenges 
// are excellent opportunities for growth, but when you're giving me 3rd grade level challenges when I'm still bumbling
// along at the level of a kindergartener I'm going to spend most of my time spinning my wheels. Especially when this is
// compounded by the fact that we're facing down weekly deadlines when I have other obligations in my life that I'm
// trying to meet. Is this too much to write in the comment section of a reflection? Probably. Will this even reach 
// anyone who cares? I have no idea. But I wanted to take a chance to decompress and explain why this week and last week
// have me feeling very frustrated and deflated. I felt really good yesterday after I spent the day on Codecaedemy working 
// through SQL and Javascript courses, building up a foundation for my skillset, but I don't have time to devote there 
// because I have to keep up with the challenges for the course. 

// // What did you learn about iterating over nested objects in JavaScript?
//   -I learned that I would like to read a book or blog post that helps me better understand bracket notation.
// // Were you able to find useful methods to help you with this?
//   -No. I still miss Ruby.
// // What concepts were solidified in the process of working through this challenge?
//   - Detailed above.





// __________________________________________
// Test Code:  Do not alter code below this line.


// function assert(test, message, test_number) {
//   if (!test) {
//     console.log(test_number + "false");
//     throw "ERROR: " + message;
//   }
//   console.log(test_number + "true");
//   return true;
// }

// assert(
//   (voteCount.president["Bob"] === 3),
//   "Bob should receive three votes for President.",
//   "1. "
// )

// assert(
//   (voteCount.vicePresident["Bob"] === 2),
//   "Bob should receive two votes for Vice President.",
//   "2. "
// )

// assert(
//   (voteCount.secretary["Bob"] === 2),
//   "Bob should receive two votes for Secretary.",
//   "3. "
// )

// assert(
//   (voteCount.treasurer["Bob"] === 4),
//   "Bob should receive four votes for Treasurer.",
//   "4. "
// )

// assert(
//   (officers.president === "Louise"),
//   "Louise should be elected President.",
//   "5. "
// )

// assert(
//   (officers.vicePresident === "Hermann"),
//   "Hermann should be elected Vice President.",
//   "6. "
// )

// assert(
//   (officers.secretary === "Fred"),
//   "Fred should be elected Secretary.",
//   "7. "
// )

// assert(
//   (officers.treasurer === "Ivy"),
//   "Ivy should be elected Treasurer.",
//   "8. "
// )
