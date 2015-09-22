# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Maximum number of sides, as supplied by user
# Output: Random number between 1 and maximum number supplied by user
# Steps:
# 1. Create object with prompt to introduce user to game
# 2. Create prompt for user to initialize roll
# 3. Create roll method, which will return a random number between 1 ... 30
# 4. Return result to user


# 1. Initial Solution

class Die


  def initialize

  puts "Welcome to Die Roll (Or Die!)"
    puts "A completely harmless die rolling game with an ominous name"
    puts "What is your name?"
    name = gets.chomp 
    puts "Hello " + name + ". Let's get rolling."
    sides
   

  end


  def sides
    puts "Think of a number, see if you can guess what the die will roll."
    puts "How many sides do you want the die to have?"
   @sides_result = gets.to_i
   if @sides_result == 0
    raise ArgumentError.new("Only numbers greater than one are allowed")
  end
   puts "You want #{@sides_result} sides."
    roll
   
  end

  def roll
    puts "Have you decided on your guess for what the die will roll? (y/n): "
    again = gets
    again_loop = again.chomp
    if again_loop == "y" || again_loop == "yes" || again_loop == "Yes" || again_loop == "YES"
      puts "Roll baby!"

    else
      puts "You are a disappointment to your parents."
      puts "...."
      puts "...."
      puts "...."
 
    end
  
    die_roll = 1 + rand(@sides_result)
    puts "You rolled #{die_roll}."

  end
end

game_1 = Die.new




# 3. Refactored Solution

#No time for such things. Let's count my initial solution as a refactored one.
#I certainly spent enough time on it :|>





# 4. Reflection

# What is an ArgumentError and why would you use one?
# -An ArgumentError is a sort of customized error return that will help the user better understand what they need to change
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# -I did some method chaining, before I learned that I can just use initialize. Actually that's some
# code refactoring I did, but I worked over my initial solution and didn't save it.
# What is a Ruby class?
# -Classes are like blueprints. If your house is an object, the plans to build the house are the blueprint. 
# Why would you use a Ruby class?
# -You can create lots of individual houses within the class of the blueprint.
# What is the difference between a local variable and an instance variable?
# -A local variable is only available within the method. An instance variable is available within the class.
# Where can an instance variable be used?
# -Within the methods within a class.