# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1

# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p  nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |outer| 
  if outer.kind_of?(Array)
    outer.map! {|inner| inner + 5}
  else outer + 5  
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |outer| 
 
  if outer.kind_of?(Array)
    outer.each do |inner| 
      if inner.kind_of?(Array)
        inner.each {|innerinner| innerinner.insert(-1, "ly")}
      else inner.insert(-1, "ly")
      end
    end
  else  outer.insert(-1, "ly")
  end
end

p startup_names



#Reflect

# - What are some general rules you can apply to nested arrays?
#     - Pairing with Kim helped me see that I need to approach the data from the inside out, not the outside in. We also sketched somethings out on paper which helped us follow the flow of the logic.
# - What are some ways you can iterate over nested arrays?
#     - Iterating through nested arrays is about setting up the loops so that they identify what the object is, and then know what to do once they hit something different. Loops must also be nested, similar to the way the array itself is nested.
# - Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#     - We used insert to add “ly” to the end of names, which is a great method for manipulating strings that I hadn’t used before.