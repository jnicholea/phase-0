// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var firstName = "Jenna", lastName = "Andersen"
console.log(firstName + " "  + lastName)

// var x = prompt("What is your favorite food?")
// alert("Hey, that's my favorite food too. Twinsies!")




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
//FIZZBUZZ

// Write a program that uses console.log to print all the numbers from 1 to 100, with two exceptions. For numbers divisible by 3, print "Fizz" instead of the number, and for numbers divisible by 5 (and not 3), print "Buzz" instead.

// When you have that working, modify your program to print "FizzBuzz", for numbers that are divisible by both 3 and 5 (and still print "Fizz" or "Buzz" for numbers divisible by only one of those).

// My Python solution from May
// for i in range (1, 101):
//     if i % 7 == 0:
//         print '"I will either find a way, or make one." -Hannibal'
//     else:
//         print i


// Thank cheese for Stack Overflow and that i % 15 bit
for (var i = 1; i <= 100; i++) 
{
	if (i % 15 === 0)
		console.log("FizzBuzz");
	if (i % 3 === 0)
		console.log("Fizz");
	else if (i % 5 === 0)
		console.log("Buzz");
	else
		console.log(i);
}






// Functions

// Complete the `minimum` exercise.

var min = function(num1, num2)
{ 
	if (num1 < num2) 
	  return num1
	else 
	  return num2
	}

console.log(min(70, 6));



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = [
{name: "Jenna"},
{age: 30},
{favFoods: ["popcorn", "cheesecake", "cheese"]},
{quirk: "I own a dozen manual-focus film cameras"},
];

console.log(me);

