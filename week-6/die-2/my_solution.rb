# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: A single string from the array, randomly selected
# Steps:
# 1. Create an empty array, to be filled with an array of user-input in the form of strings when the method is called
# 2. If array is empty, ArgumentError prompting for strings will be raised
# 3. Prompt user to shuffle the elements of the array, and then one random string will be returned


# Initial Solution

class Die
  def initialize

  	
  	puts "Welcome to Eeney-Meeney-Miney-Moe"
    puts "Give me a list of names and I'll tell you the very best one"
    sides
  end

  def sides
  	@names_array = []
  	puts "Please enter a list of names, with each name separated by a comma"
    names = gets.chomp
    	if names == nil
    		raise ArgumentError.new("I can't tell you who is the best if you don't give me a list of names")
  		end
    @names_array << names.split(/, /) 
    roll
  end

  def roll
  	puts "Are you ready? Hit enter and off we go"
  	go = gets
  	puts "Eeney-Meeney-Miney-Moe"
  	puts "Catch a tiger by the toe"
  	puts "If he hollers let him go"
  	puts "Eeney-Meeney-Miney-Moe"
  	puts "My mother told to pick the very best one"
  	best_one = @names_array.flatten.sample
  	puts "And you #{best_one} are it."

  end
end

game_1 = Die.new


# Refactored Solution

#I have no idea what to refactor on this. It both meets the challenge requirements and does what I set out to do. I would need to read up on style-guides and best practices to better format the code for readibility and to meet standard conventions.






# Reflection
# - What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#     - I was able to draw on my last die class to create the basic structure for getting user input, but previously I was returning a random object based on randomizing within a range of integers, whereas this time I wanted to return a random object within a user-defined array. I actually think this version was simpler, though it might have been faster because last time I was learning how to work with classes and chain methods
# - What does this exercise teach you about making code that is easily changeable or modifiable?
#     - When pseudo coding the problem and mapping out a solution it’s important to break down the steps into the simplest process. If I had crated a complex and difficult solution to the first challenge, the second time around I might have needed to start from scratch.
# - What new methods did you learn when working on this challenge, if any?
#     - I struggled with array#sample. All of the Stack Overflow responses were making it sound like it was really simple to use, but when I implemented it I was returning the entire array. On a whim I decided to try flattening the array first, and that returned a single element. I wonder if somehow my code was building a nested array from my user-input but I can’t see how that is happening. I need to keep working with arrays and user-input to better understand that.
# - What concepts about classes were you able to solidify in this challenge?
#     - It was actually the last challenge that helped me understand how using initialize can simplify the act of calling the method. Without it the methods have to be chained together using self, and the calls have to be chained together.
