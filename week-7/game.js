 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: Pierson the Fearless rolls the dice to get the treasure chest of gold coins from Mighty Dragon
// Goals: Take the gold coins from the Dragon and give them to Pierson. A random number between 1-3 is generated and the correct answer must be guessed.
// Characters: Pierson the Fearless, Mighty Dragon
// Objects: pierson (amount of gold), dragon (amount of gold)
// Functions: introduction, numGenerator, numGuess, gameEnding

// Pseudocode
// 1. Introduce game concept and characters to user. Set up Dragon with 3 gold coins, set up Pierson with 0 gold coins. 
// 2. numGenerator selects random number
// 3. User uses numGuess function to guess at random number
// 4. If numGuess === numGenerator, move 1 gold coin from Dragon to Pierson.
// 5. Repeat until Dragon object contains 0 gold coins

// Initial Code

var player = {
		  name: "Pierson",
		  gold: 0,
	};
	var foe = {
		  name: "Dragon",
		  gold: 3,
	};

var introduction = function(){
	console.log("Welcome to Pierson the Fearless versus Mighty Dragon. Dragon has three gold coins, and Pierson wants those gold coins for himself. Guess the number the Dragon is thinking and he hands over a gold coin. The game is won when the Dragon has zero gold coins and Pierson has them all.");
	

	console.log(player, foe);
	questionLoop();
};

var questionLoop = function(userGuess){
	var randomNum = Math.floor((Math.random() * 3));
	
	console.log(randomNum);

	while (userGuess === randomNum){
		player.gold += 1;
		foe.gold -= 1;
		console.log("Hand over the gold Dragon!");
		break
	};
	while (userGuess !== randomNum){
		console.log("Try again Pierson.")
		break
	};
	while
		(foe.gold === 0) {
		console.log("You now have all of the Dragon's gold. You win!") 
		break
	};

};


introduction();
questionLoop(2);
console.log(player, foe);
questionLoop(1);
console.log(player, foe);
questionLoop(3);
console.log(player, foe);
questionLoop(1);
console.log(player, foe);
questionLoop(3);
console.log(player, foe);
questionLoop(2);
console.log(player, foe);










// Refactored Code






// Reflection


What was the most difficult part of this challenge?
	- I was very frustrated by this challenge. It took me a long time to figure out how to write a game that worked
	with Javascript this way, because frankly I think it's a stupid time to have us write a game. No one would ever
	write a game in this way with the amount of knowledge we have. A game needs user input, something we can't do 
	directly in terminal using Javascript (as far as I can tell). I worked a lot faster once I gave up on trying to
	design an actual game that someone would play and just put something together that created objects and manipulated
	the properties of those objects.
What did you learn about creating objects and functions that interact with one another?
	- I couldn't figure out how to pass variables between functions properly so I eneded up using one function to do everything.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
	-I didn't refactor. I did learn how to generate random numbers in a range though, which will come in handy
How can you access and manipulate properties of objects?
	-I used the dot notation method for this. In other challenges we used square brackets.
//
//
//
//
//
//
//
//