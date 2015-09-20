# Numbers to Commas Solo Challenge

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? (i.e. What should the code return?) An integer, with comma separating individual numbers if there are more than three, converted to a string (must have quotation marksr around it)
# What are the steps needed to solve the problem?
# 1. Convert integer to string
# 2. Cut up strings into invidual pieces
# 3. Count from last index, insert comma after every third index
# 4. Pull individual strings back out of array, join them back into one string


# 1. Initial Solution
def separate_comma(pos_integer)
	#final solution via Stack Overflow
	pos_integer.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse
	

	# my original solution, didn't quite add commas correctly and couldn't figure out how to join it back together
	# list = new_array.reverse.each_slice(3) { |a| p "#{a.join}," }


end

p separate_comma(100)




# 2. Refactored Solution
#As commented above, couldn't quite get to the solution on my own, used a Stack Overflow solution that was similar




# 3. Reflection

# -What was your process for breaking the problem down? What different approaches did you consider?
# --I knew that I would need to convert the integer to a string based on the challenge, and that to insert a comma into the string I would need to break it up into individual strings. I thought I would use a loop of some kind to count from the last index, but realized that can be difficult because the last index is always different. It made more sense to reverse it and start counting from the beginning. 
# -Was your pseudocode effective in helping you build a successful initial solution?
# --Even though I ended up using a slightly different approach as I went, the pseudocode was very helpful in helping me break down the process logically first. I built step-by-step based on my pseudocode, running the ruby in terminal each time to make sure I had successfully put my code together thus far. 
# -What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# --As is usually the case for me, I don't feel like I know enough to refactor, it's already difficult enough to come to one solution. I hope that will change over time as I start to be able to write more from scratch. 
# -How did you initially iterate through the data structure?
# --I thouht I needed to use a block, but each time I use a block I get stuck because I'm getting back my results as a variety of objects, but I can't figure out how to join them back together into an array or as one object compounded together.
# -Do you feel your refactored solution is more readable than your initial solution? Why?
# --N/A since I didn't refactor. Unless you call what I pulled from Stack Overflow a refactoring :), but my initial solution didn't pass the rspec tests.