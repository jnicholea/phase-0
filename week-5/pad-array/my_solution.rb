
# # Pad an Array
# 
# # I worked on this challenge Alison Lyons
# 
# # I spent [1] hours on this challenge.
# 
# 
# # Complete each step below according to the challenge directions and
# # include it in this file. Also make sure everything that isn't code
# # is commented in the file.
# 
# 
# 
# # 0. Pseudocode
# 
# # What is the input?
# # An array, size of new/modified array, filler string
# # What is the output? (i.e. What should the code return?)
# # Either a new array or a modified array, with filler string appended when necessary
# # What are the steps needed to solve the problem?
# # 1. Define a method with three inputs
# # 2. Three inputs are array, minimum size of array, and filler string to pad array
# # 3. Find the difference between length of array and minimum size of array
# # 4. When length of array is less than minimum size, multiple difference by filler string
# # 5. Return copy of array for non-destructive, or return modified array for destructive
# 
# 
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
   difference = (min_size - array.length)
   difference.times {
     array << value}
     return array
end

p pad!([1, 2, 3, 4, 5], 10)

def pad(array, min_size, value = nil) #non-destructive
  copied_array = Array.new(array)
  difference = (min_size - array.length)
  difference.times {
    copied_array << value}
  return copied_array
end
 
p pad([1, 2, 3], 5,)


# # 
# # # 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  min_size - array.length.times {
     array << value}
     return array
end

p pad!([1, 2, 3], 10)

# # 
# # # 4. Reflection

# Were you successful in breaking the problem down into small steps?
# -Yes
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# -Yes, because my partner was on top of things and was able to start throwing out ideas right away. Our difficulties initially were that we weren't properly creating a new array.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# -We tried creating a new array by renaming the old array, but realized that we needed to use Array.new. My partner found this by looking in the Ruby docs.	
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# -We were able to eliminate the creation of a new variable and shovel the nil values into it. The refactored code doesn't pass the rspec, but the original code does. I'm not sure why.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# -I find it to be very readable
# # What is the difference between destructive and non-destructive methods in your own words?
# -Destructive methods change the original state of the thing being acted upon. Non-destructive methods take the original information and copy into a new place, preserving the original data to be accessed at a later date. I assume that non-destructive methods are usually best.
