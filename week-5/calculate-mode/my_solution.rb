# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


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




# 4. Reflection