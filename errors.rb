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

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
