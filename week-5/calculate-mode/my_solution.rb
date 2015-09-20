# Calculate the mode Pairing Challenge

# I worked on this challenge with Alison Lyons.

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) Most common number(s)
# What are the steps needed to solve the problem?
# Transform array into hash where keys represent the element in array, and values represent frequencies of the elements
# Iterate through hash to find frequencies of each key and return the maximum value(s)




# 1. Initial Solution

def mode(array)
  h = Hash.new(0)
  array.each do |x|
    h[x] += 1
  end


new_array = h.select {|a, b| b == h.values.max}.keys



end

array_1 = [1, 2, 3, 4, 5, 5, 7]
array_2 = [4, 4, 5, 5, 6, 6, 6, 7, 5]

p mode(array_2)



# 3. Refactored Solution
# Already spent 3 hours on this, not going to refactor



# 4. Reflection

Which data structure did you and your pair decide to implement and why?
-We knew from the hint that we needed to push each item of the array into a hash, count the number of occurences 
(that would become the value and the item from the array the key), and then later on in the challenge we realized 
we would need to turn the max results back into an array
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
-No, about the same. It's getting easier to talk it through as I understand better what Ruby can do.
What issues/successes did you run into when translating your pseudocode to code?
-We struggled to understand what to write in the block so we would get all of the max values back instead of just one.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? 
Were they difficult to implement?
-We iterated through the content twice. First to create the hash, then to look for the max values in the hash.
We used .each and .select

