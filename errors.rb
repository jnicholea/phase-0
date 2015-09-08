# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# 1. What is the name of the file with the error?
# => The error is occuring in the error.rb file.
# 2. What is the line number where the error occurs?
# => The error is on line 8.
# 3. What is the type of error message?
# => The error type is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => It lets me know what was unexpected, and what it was expected
# 5. Where is the error in the code?
# => The up arrow points to the equal sign right before cartmans_phrase
# 6. Why did the interpreter give you this error?
# => Assignment of a variable name and then equal sign should be before, not after, the object(?) that is assigned to the variable 
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The error is occuring in the error.rb file.
# 2. What is the line number where the error occurs?
# => It says the error was on line 170. I assume because that's when it stopped looping? If it was missing an end statement I'm not sure why it wouldn't be an infinite loop though.
# 3. What is the type of error message?
# => The error type is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => It lets me know it was expecting the keyword end
# 5. Where is the error in the code?
# => Line 28, where an end needs to be inserted
# 6. Why did the interpreter give you this error?
# => I needed to end both the def and the while

# --- error -------------------------------------------------------

south_park = "funny"

# 1. What is the line number where the error occurs?
# => 48
# 2. What is the type of error message?
# => undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# => This is a NameError for an object
# 4. Where is the error in the code?
# => line 48
# 5. Why did the interpreter give you this error?
# => there needs to be an = and something defined after south_park

# --- error -------------------------------------------------------

def cartman()

# 1. What is the line number where the error occurs?
# => 63
# 2. What is the type of error message?
# => undefined method
# 3. What additional information does the interpreter provide about this type of error?
# => NoMethodError tells us that the method was not defined properly
# 4. Where is the error in the code?
# => before cartman
# 5. Why did the interpreter give you this error?
# => def needed to be added before cartman() to make it a method

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
end

# 1. What is the line number where the error occurs?
# => Another missing end, so ruby says it's at the bottom of the code, presumably because it finishes moving through the code and doesn't find the end it is looking for
# 2. What is the type of error message?
# => syntax
# 3. What additional information does the interpreter provide about this type of error?
# => it expected the keyword end
# 4. Where is the error in the code?
# Line 83
# 5. Why did the interpreter give you this error?
# It needs an end after cartmans_phrase to know that it should stop looking at that variable and move on to the method below

# --- error -------------------------------------------------------

def cartman_says(offensive_message1, offensive_message2)
  puts offensive_message1
  puts offensive_message2
end

cartman_says("Screw you guys", "I'm going home")

# 1. What is the line number where the error occurs?
# => 103
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => the wrong number of arguments are provided, 0 of the 2 expected
# 4. Where is the error in the code?
# => after cartman_says two arguments need to be provided
# 5. Why did the interpreter give you this error?
# => It has no arguments to input into the method



# --- error -------------------------------------------------------

def cartmans_lie(name, lie)
  puts "#{name}, #{lie}!"
end

cartmans_lie("Kyle", 'A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# => 124
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => wrong number of arguments
# 4. Where is the error in the code?
# => after Cartman's cartmans_lie
# 5. Why did the interpreter give you this error?
# => Only one argument is provided, two were expected

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => 139
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum helped me see that five can't be "respect my authoritay"-ed five times, but "respect my authoritay!" can be multiplied five times
# 4. Where is the error in the code?
# => It's the order of the method and object
# 5. Why did the interpreter give you this error?
# => The method needs to be a number for an arithmetic function to be applied to it

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
# => 154
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => n/a
# 4. Where is the error in the code?
# => after the /
# 5. Why did the interpreter give you this error?
# Basic rules of math say a number can't be divded by zero

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => 170
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => it says the file cannot be found and then tells the path where it expected to find it
# 4. Where is the error in the code?
# => this file does not exist
# 5. Why did the interpreter give you this error?
# => answered above


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# -The first time I encountered the error relating to a missing "end" was the most difficult for me because I kept scrolling down to the bottom and not understanding why it would tell me the error was on line 170 when there was no code on line 170
# -yes, and the key was acutally reading the error message I was getting in its entirety. Previously I had looked at the line number, looked at my code, and tried to figure out the problem before reading the entire error message. The end error message situation taught me that I should first use the error message code from ruby to understand what ruby thinks the problem is, and then look at my code. 
# -yes
# -described above, google was helpful as well
