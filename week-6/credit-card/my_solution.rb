# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Awilda Cantres.
# I spent 3 hours on this challenge.


# Pseudocode

#initialize
# Input: integer (16 digit card number)
# Output: integer or ArgumentError
# Steps:
# 1. new ArgumentError if card is not 16 digits
# 2. create instance variable for integer

#double
# Input: instance variable for integer
# Output: integer set with every other number doubled
# Steps:
# 1. reverse integer
# 2. convert into array
# 3. we iterate through each element to find which ones are in even slots
# 4. we double the even slot numbers
# 5. assign changes to double instance variable 

#sum
# Input: double instance variable
# Output: sum of all (including double digit elements)
# Steps: 
# 1. convert array contents to a string
# 2. split the string 
# 3. convert back to integer
# 4. add each number to get the total
# 5. assign changes to sum instance variable

#checkcard
# Input: sum instance variable
# Output: true or false
# Steps:
# 1. IF sum is divisible by 10 with no remainder, return true 
# 2. ELSE return false


# Initial Solution


class CreditCard
  
  def initialize(num)
    if num.to_s.length % 16 != 0
      raise ArgumentError.new("Integer must be 16 digits")
    end
    @num_split = num.to_s.split(//).map(&:to_i)
     @num_split  
    double
  end
  
  def double
    @odd_numbers = Array.new()
    @even_numbers = Array.new()
    
    
    @reverse = @num_split.reverse
    @odd_numbers << @reverse.values_at(1, 3, 5, 7, 9, 11, 13, 15)
    @even_numbers << @reverse.values_at(0, 2, 4, 6, 8, 10, 12, 14)
    

    @even_numbers << @odd_numbers.flatten.map! do |x|
         (x * 2)
    end
    
    @all_numbers = @even_numbers.flatten
    sum

   
  end
  
  def sum
     @all_numbers.collect! { |i| i.to_s }
     @to_sum = @all_numbers.join.split(//).map(&:to_i)
    
    @total = @to_sum.inject {|sum, num| sum + num}
    check_card
  end
  
  
  def check_card
    if @total % 10 == 0
      return true
    else
      return false
  end
  end
  
end

    

test=CreditCard.new(4563960125001999) 

#Refactor
#We spent 3 hours peer-pairing on this challenge. I'm moving on and not refactoring.

# What was the most difficult part of this challenge for you and your pair?
# 	-It was surprisingly difficult to turn a single integer into a string, split it, put it into an array, and then later on repeat the process of turning integers into strings and splitting them again
# What new methods did you find to help you when you refactored?
# 	- We did not refactor. My pair did show me how beneficial it can be to pseudocode in a way that creates an individual pseudocode section for each method. It made it a lot easier to move from one method to another after we had been stuck for a long time.
# What concepts or learnings were you able to solidify in this challenge?
# --I learned that when I create a new method with the intention of chaining it with another, I should write the name of my next method immediately before the end. We spent a lot of time trying to figure out why a certain piece of code in a method wasn't working, until I realized that the method wasn't being called. We would have saved a lot of time if we had done that up front.


