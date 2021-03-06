#In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person. 

#Pseudocode
# 1. Create an array with names of members of cohort
# 2. Randomize items in the array. Split index into groups of 5, anything leftover into groups of 4, or anything leftover into groups of 3
# 3. Use modulus to do the split. A for loop will iterate and if/elsif statements will determine how things should be split
# 4. Groups should be returned as new arrays (non-destructive)


#Solution

SF_bobolinks = ["Jenna Andersen", "Kim Allen", "Jupiter Badot", "Ovi Calvo", "Mike Cerrone", "Eunice Choi", "Paul Etscheit", "Solomon Fernandez", "Kai Huang", "CJ Joulain", "Christopher Mark", "Nathan Park", "Rosslyn Sinclair-Chin", "Shawn Watson", "Nicholas Yee", "sample", "sample", "sample", "sample"]

def split(group)

# splits into group of five, but if the remainder is 1 or 2 it won't pull from the second-to last index to or third-to-last index to make those groups of four or three.
	if group.length % 5 == 0
		return group.shuffle.each_slice(5).to_a
	elsif group.length % 5 == 1
		return group.shuffle.each_slice(5).to_a
	elsif group.length % 5 == 2
		return group.shuffle.each_slice(5).to_a
	else group.length % 5 == 3
		return group.shuffle.each_slice(5).to_a

	# elsif group.length % 4 == 0
	# 	return group.shuffle.each_slice(4).to_a
	# else group.length % 3 == 0
	# 	return group.shuffle.each_slice(3).to_a
	end



end


p split(SF_bobolinks)

#Refactored
#Refactored with the help of John Dees during Office Hours

SF_bobolinks = ["Jenna Andersen", "Kim Allen", "Jupiter Badot", "Ovi Calvo", "Mike Cerrone", "Eunice Choi", "Paul Etscheit", "Solomon Fernandez", "Kai Huang", "CJ Joulain", "Christopher Mark", "Nathan Park", "Rosslyn Sinclair-Chin", "Shawn Watson", "Nicholas Yee", "sample", "sample"]

test = [1,2,3,4,5,6]

def split(group)


  if group.length % 5 == 0 || group.length % 5 == 3 || group.length % 5 == 1 
    acct_group = group.shuffle.each_slice(5).to_a 
  elsif group.length % 4 == 0 || group.length % 4 == 3 || group.length % 4 == 1 
    acct_group = group.shuffle.each_slice(4).to_a
  end
  
#   example of nested array
#   p acct_group[0] # this should return the first element (the first inner array) of account group
#   p acct_group[0][0] # this should return the first element of the first array of account group
  
  if acct_group.last.length == 1
    #adding the [0] returns the 0th element of the array, not the array itself
    acct_group.first << acct_group.pop[0]
  end
  
  acct_group.each_with_index do |element, i|
    puts "Group #{i+1}"
    print element
    # acts as line break to break up arrays
    puts
  end
end


split(SF_bobolinks)
# p SF_bobolinks.size

# What was the most interesting and most difficult part of this challenge?
# - The most interesting part was thinking through the pseudocode. Most difficult was definitely turning my code into reality. 
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# - Yes, largely because I'm starting to understand what Ruby can do and how something can be written. I'm also getting better at breaking down a problem into logical steps.
# Was your approach for automating this task a good solution? What could have made it even better?
# - I never quite made it to the point of automation I desire, which is to be able to break things into groups no matter the size of the group. Right now my solution will only split into groups of five if there are 5, 15, 20, 25 people. Otherwise it will split into four. And then it would split into three. This is not ideal.
# What data structure did you decide to store the accountability groups in and why?
# - An array. I didn't see any reason to do key/value pairs with a hash. 
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# - N/A, I didn't refactor because I couldn't quite make it to what I wanted. 
