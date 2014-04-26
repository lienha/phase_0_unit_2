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
  number = num.to_s
  position = -4
  if number.length < 4
    number
  elsif number.length % 3 == 0
    ((number.length/3) - 1).times { number.insert(position, ","); position -= 4 }
    number
  else
    (number.length/3).times { number.insert(position, ","); position -= 4 }
    number
  end
end

# 3. Refactored Solution
def separate_comma(num)
  number = num.to_s
  i = 3
  until number.length - i <= 0
    number.insert(number.length - i,","); i += 4
  end
  number
end

# 4. Reflection 
# Orginally I thought it would be fun to try recursion even if it's not
# fast as looping. But I just couldn't get it to work. 
# I'm also interested in how this can be done with .each