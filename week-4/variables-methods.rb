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

