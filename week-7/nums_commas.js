// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Eric Shou.

//PseudoCode

//Input: An integer 
//Output: A string with commas placed every third character from the right.

//Steps:

//1. Convert integer to a string
//2. Place the string into an array
//3. Convert each character in the string to an individual string object.
//4. Reverse the string 
//5. Insert comma every third character
//6. Reverse again and join everything together

//Initial solution

var separateComma = function(num){
  var toString = String(num);
    if (toString.length < 4)
      return toString; 
    else 
      
      var numArray = toString.split("");
      var reverseArray = numArray.reverse();
  
      for (var counter = 3; counter < reverseArray.length; counter+=4){
      reverseArray.splice(counter, 0 ,",") 
      };
   var output=reverseArray.reverse().join("");
    console.log(output);
    return output
        
  
};

console.log(separateComma(1000000));

// Refactored Solution
//nil



// Your Own Tests (OPTIONAL)
// nil



// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// 	-The logic was the same, but the code felt completely different. A lot harder to figure out because Javascript just returns "undefined" for everything if you haven't written your code correctly
// // What did you learn about iterating over arrays in JavaScript?
// 	-I think pretty much all itierating over arrays happens using i=x, i < x, i++ or something similar
// // What was different about solving this problem in JavaScript?
// 	-We don't know anything about JS and spent a LOT of time being silent, googling to try to figure stuff out
// // What built-in methods did you find to incorporate in your refactored solution?
// 	-.split, .reverse, and we finally figured out how to use .splice once we looked up what other people did to solve this challenge 