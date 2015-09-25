# Your Names
# 1) Chris Mark
# 2) Jenna Andersen

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  cookbook = {"cookie" => 1, "cake" =>  5, "pie" => 7} #standard quantity for making each dishs
  
  if cookbook.any? do |key, value|
    key == item_to_make
  end
  p "Calculating order" 
  else
  raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = cookbook.values_at(item_to_make)[0] #referring to value at library hash from line 10 
  serving_size_mod = order_quantity % serving_size # equal amount of servings or if there are leftovers 
  

  if serving_size_mod == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else 
    return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, make additional #{item_to_make} to cover #{serving_size_mod} servings."
  end
  end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("brownie", 10)

#p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
#   -Include comments with your intentions. Use variables names that refer to the problems aiming to be solved. I thought more about how variable names should not just be about what to do, but how what th variable is doing fits in with the larger picture
# # Did you learn any new methods? What did you learn about them?
#   - I hadn't used .any on a hash before. I liked how in our approach above it matched in a broad way, whereas I initially argued that we should use has_key? but I think .any is a little bit more inclusive of the various options

# # What did you learn about accessing data in hashes? 
#   -We struggled to understand how we could keep the key linked with the value as we did things like pull the value from a key and % serving_size. Once we did that, and had that result, the key is no longer directly associaed with that value under serving_size_mod and we couldn't figure out how to link them back together.
# # What concepts were solidified when working through this challenge?
#   -Our guide helped us think about the ways that modulus and division operate differently, and how we can use them in different ways to parse the data


