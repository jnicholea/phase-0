##Notes for Guide
#This is a makeup GPS, as I was ill the day mine was scheduled and missed the appointment. I complete this challenge alone. It took me 2 hours.


##Pseudocode

#1. Create a hash, this will hold items as keys and quantities as values
#2. Create a method that adds items and quantities to the hash
#3. Create a method that removes items and quantities from the list, return message for items that do not exist in the list
#4. Create a method that updates quantities for items in the list. 
#5. Create a method that prints the list. Break items out of the hash and list each one on a new line with their quantities next to them. 

# list_creation = new_hash {key = items, values = quantities}

# add_items
# 	add items and quantities
# end

# remove_items
# 	remove items and quantities
# 	IF item does not exist in list, add statement indicating it is not present on list
# end

# update_quantities
# #the toddler always needs more milk 	
# update quantity of items 
# end

# print_list
# 	EACH item printed on new line, includes quantity
# end

##Solution

new_list = Hash.new(0)

def add_items(item, quantity, list)
	list[item] = quantity
end

def remove_items(item, list)
	list.delete(item)
	unless list.key?(item)
    puts "The item #{item} is not on your list"
	end
end

def update_quantities(item, new_quantity, list)
	list[item] = new_quantity
end


def print_list(list)
	list.each do |(item, quantity)|
    puts "Buy #{item}, #{quantity} of them."
  end 
end



add_items("apples", 5, new_list)
add_items("grapes", 100, new_list)
add_items("milk", 3, new_list)
remove_items("carrots", new_list)
update_quantities("milk", 5, new_list)

print_list(new_list)

#Reflection
# What did you learn about pseudocode from working on this challenge?
# -This was the first time I've laid out my pseudocode in a format similar to actual code. It really was helpful to reference it as I worked through each section. I'll plan to do that from now on. I think it prevents the stuck feeling that somestimes comes from digging into the code and not being sure what to do next. 
# What are the tradeoffs of using Arrays and Hashes for this challenge?
# -I'm not sure how an array could ever be a good solution for this. Maybe if the items didn't have quantities? But with quantities a hash makes much more sense.
# What does a method return?
# -A method returns the result of the function.
# What kind of things can you pass into methods as arguments?
# -variables, strings, integers or floats, objects
# How can you pass information between methods?
# -By creating an initial hash, and then having every method push the information from list into the new_list using arguments on the method. At least I think I understand how it works now.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# -At first I thoguht it was stupid to do this without classes (I've already done the die challenge, pt 1), but now I see how doing it without method chaining forced me to use (non instance) variables in a different way and really think about how they are connected together. 









