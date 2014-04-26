# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# a number
# What is the output? (i.e. What should the code return?)
# a string represents the number with comma separate thousands
# What are the steps needed to solve the problem?
    # Create a method name separate_comma that takes a number as an argument.
    # Convert the number into a string
    # Set the comma insertion position
    # Return the string if it is less than 4
    # Otherwise iterate over the string and insert comma every 4 position from the right

# 2. Initial Solution
def separate_comma(num)
  str = num.to_s
  position = -4
  if str.length < 4
    str
  elsif str.length % 3 == 0
    ((str.length/3) - 1).times { str.insert(position, ","); position -= 4 }
    str
  else
    (str.length/3).times { str.insert(position, ","); position -= 4 }
    str
  end
end
# 3. Refactored Solution
# I don't have anything better. Is it possible to make it even more readable and efficient?


# 4. Reflection 
# Orginally I thought it would be fun to use recursion for this. But as I started, I just couldn't figure out how to get it to work.