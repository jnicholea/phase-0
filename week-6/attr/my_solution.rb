#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.



class NameData

  attr_reader :name

  def initialize
	 @name = "Jenna"
  end
 end

class Greetings

	def initialize
    @namedata = NameData.new
  end

  def print_greeting
	puts "Hello #{@namedata.name}! How wonderful to see you today"
  end

end



greet = Greetings.new
greet.print_greeting












# Reflection

# Release 1
# What are these methods doing?
# 	- The methods initialize with some defined instance variables, and then the methods define what will happen when the methods are called later on with some new assignments. It's a slightly different way than what we've done before, creating methods that take arguments and having the new assingments be given through arguments on a method.
# How are they modifying or returning the value of instance variables?
# 	- The instance_of_profile call on the Profile class triggers the creation of a profile for Kim, but then on line 71 the profile information changes when new information runs through the methods for change_my_age, etc.

#Release 2
# What changed between the last release and this release?
# 	-what_is_age has been replaced with the attribute reader :age. 
# Is this code simpler than the last?
# -Yes, it's shorter and easier to read

#Release 3
# What changed between the last release and this release?
	# -The methods for what_is_age and change_my_age have both been replaced by attr_reader and attr_writer. Because you can both read and write to them, you can both p them and reassign them using the same variable name .age
# Is this code simpler than the last?
	# - Yes, two full methods have been eliminated now, making the code much more concise and easier to read.

# # What is a reader method?
# 	-A reader method can look up the information, but can't change it
# # What is a writer method?
# 	- A writer method can change the method, but doesn't read it back to you
# # What do the attr methods do for you?
# 	-Eliminate the need for separate methods for each variable that allow you to read and/or write
# # Should you always use an accessor to cover your bases? Why or Why not?
# 	- No, sometimes you may only want to read the information there, without the ability to write over it (which can be done accidentally). Imagine an accessor that looks up a person's bank account information. If it's just for reading back the balance to the customer, not changing the amount due to deposits or withdrawals, making sure it's just _read is important
# # What is confusing to you about these methods?
# 	- It will take me some time to learn how to implement them, but I don't find it confusing. 