# ask individuals their first, last, and middle name. Greets them.
puts 'Hello, welcome to DBC. What is your first name?'
first_name = gets.chomp
puts 'That is an excellent first name. And what is your last name?'
last_name = gets.chomp
puts 'Your parents were obivously brilliant because those two names could not be more perfect for each other. And why dont you tell me your middle name?'
middle_name = gets.chomp
puts 'Well, ' + first_name + ' ' + middle_name + ' ' + last_name + ' that is quite the combination. I predict good things for you.'

# ask for the favorite number of a user, return an i+1 value and ask if that number is better
puts 'Now that I know your name, can you tell me your favorite number?'
fav_num = gets.to_i
puts 'You said your favorite number is ' + fav_num.to_s + ' but don\'t you think ' + (fav_num + 1).to_s + ' is a whole lot better?'


How do you define a local variable?
	-Name your variable (preferably lowercase and using an underscore, similar to var_1) and place an = after it, then the object after it
How do you define a method?
	-There are a few different ways to do this. Here is one of them. Start with def, add a space, open parantheses, place arguments within the parantheses separated by a comma and then a space, close parantheses
What is the difference between a local variable and a method?
	-a variable refers to an object that is to be acted upon, the method defines how the object is to be acted upon
How do you run a ruby program from the command line?
	- ruby name_of_program.rb
How do you run an RSpec file from the command line?
	- rspec name_of_rspec.rb
What was confusing about this material? What made sense?
	- Some screenshots showing what I'm supposed to be getting when I run an rspec, and what the possible options are (invalid screens) would have been very helpful because I got some results that left me confused about what I was supposed to be doing (sometime when I run rpec I don't get anything about errors or failures)
ADDRESS SOLUTION https://github.com/jnicholea/phase-0/blob/master/week-4/address/my_solution.rb
MATH SOLUTION https://github.com/jnicholea/phase-0/blob/master/week-4/define-method/my_solution.rb
DEFINE-METHOD SOLUTION	https://github.com/jnicholea/phase-0/blob/master/week-4/math/my_solution.rb