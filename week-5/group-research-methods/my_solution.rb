# Research Methods

# I spent 1.5 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.grep(/#{thing_to_find}/)
end

p my_array_finding_method(i_want_pets, "t")


def my_hash_finding_method(source, thing_to_find)

  new_array = source.select {|k, v| v == thing_to_find}.keys
end

p my_hash_finding_method(my_family_pets_ages, 3)

# # Identify and describe the Ruby method(s) you implemented.
# # For the first part, finding items in an array, I knew I wanted to grep. I first wrote in a string directly into the parantheses on line 10, to test out if it work and it did. The trickier part was figuring out how to put thing_to_find. I couldn't get it to work and finally decided to ask a question on Stack Overflow. Someone there told me that I needed to use interpolation to allow code to appear within a string. That will be really helpful in the future.
# #For the second part I was able to use lessons from 5.3 to figure out how to push the results (all of the results, not just the first one) into an array. Withiout new_array in front the results are returned as individual objects, not just as an array. Adding .keys at the end of the code block says that I want just the keys, not the values or pairs. .select will create a new hash, but then .keys at the end seems to override pulling both key/value and new_array pushes it into an array. 
# #

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #
