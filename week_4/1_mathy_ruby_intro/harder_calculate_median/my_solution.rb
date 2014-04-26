# U2.W4: Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Hing Huynh].

# 1. Pseudocode

# Use the array as the input.
# The return should be the median of the array
# What are the steps needed to solve the problem?
  # - Sort array
  # - Check if array has even number of elements, then get the average of the two middle elements.
  # - If array has odd number of elements, return the element in the middle.

# 2. Initial Solution

def median(array)
  array = array.sort!
  if array.length % 2 == 0
    return 0.5*(array[array.length/2] + array[array.length/2 - 1])
  else 
    return array[(array.length - 1) / 2]
  end
end

# # 3. Refactored Solution

def median(array)
  array = array.sort!
  array.length % 2 == 0 ? 0.5 * (array[array.length/2] + array[array.length/2 - 1])  : array[(array.length - 1) / 2]
end

# 4. Reflection 

# I found this is a useful exercise for if/else statement.