# I worked on this challenge by myself.
# This challenge took me .5 hours.


# Pseudocode

# Input: An array of numbers
# Output: An array of numbers, with multiples of 3, 5, and 15 replaced with 
# Fizz, Buzz, and FizzBuzz (respectively)
# 1. Loop through the array using a for Loop
# 2. Set up if/elsif statements to catch numbers that are %3, %5, and %15 and replace them with
# the corresponding word
# 3. Print out a new array with the modifications




# Initial Solution

def super_fizzbuzz(array)

  array.map do |x|
    if (x % 15 == 0) 
      x = "FizzBuzz"
    elsif (x % 5 == 0)
      x = "Buzz"
    elsif (x % 3 == 0)
      x = "Fizz"
    else 
      x
    end
  end

end

p super_fizzbuzz([5, 7, 2, 3, 9, 1, 3, 3, 5, 15, 30, 45])


# Refactored Solution

# //I looked online for shorter solution, but without getting into 
# stuff like 1.upto(?d){|i|i%3<1&&x=:Fizz;puts i%5<1?"#{x}Buzz":x||i} the above looks pretty DRY
# and clean to me. 



# Reflection

# # What concepts did you review or learn in this challenge?
#   -I didn't learn anything new, for me this was about getting some confidence back. 
#   Javascript is so awful! But after a few minutes of trying to get my brain to switch
#   back to Ruby I was able to write this out without looking at anything else and it was
#   the nice little boost I needed to feel like I'm not going to suck onsite.
# # What is still confusing to you about Ruby?
#   -Pretty much anything more complicated than this. I need more time, and more practice.
# # What are you going to study to get more prepared for Phase 1?
#   -I'm going to try to complete all of the challenges in the Ruby Review. I learn best 
#   by doing small and simple tasks that help me build up a skillset one at a time. 
#   Complicated challenges tend to get me all twisted up in the concepts and I have a hard
#   time unpacking the simple principles once it is over. 
