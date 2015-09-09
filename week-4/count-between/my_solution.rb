# Count Between

# I worked on this challenge by myself (with some excellent help from John during office hours!).

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below


def count_between(list_of_integers, lower_bound, upper_bound)
   list_of_integers.count {|i| i >= lower_bound && i <= upper_bound }
end

p count_between([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2, 8) 




