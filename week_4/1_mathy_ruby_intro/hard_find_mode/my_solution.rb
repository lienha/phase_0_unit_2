# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: Hing Huynh].

# 1. Pseudocode
# create a method called mode that takes an array as an argument.
# create a hash and pass elements of the array in with the number of times the elements appear.
# sort the new hash so that the most often occuring numbers move to beginning of the array.
# create variable with the value of the first element of the array.
# select the elements with highest frequencies displaying both the elements and the frequencies.
# return only elements with high frequencies.
# sort the elements in accending order.


# What is the input?
  # array
# What is the output? (i.e. What should the code return?)
  # sorted array with elements of highest frequencies in accending order.
# What are the steps needed to solve the problem?
  # create a method called mode that takes an array as an argument.
  # create a hash and pass elements of the array with the number of times the elements appear.
  # sort the new hash so that the most often occuring numbers move to beginning of the array.
  # create variable with the value of the first element of the array.
  # select the elements with highest frequencies displaying both the elements and the frequencies.
  # return only elements with high frequencies.
  # sort the elements in accending order.


# 2. Initial Solution
def mode(arr)
  count = Hash.new(0)
  arr.each { |value| count[value] += 1 }
  count = count.sort_by { |key, value| value }
  count.reverse!
  high = count[0][1]
  count.select! { |key, value| value == high } 
  result = count.collect(&:first)
  result.sort!
end

# 3. Refactored Solution
def mode(arr)
  count = Hash.new(0)
  arr.each { |value| count[value] += 1 }
  count = count.sort_by { |key, value| value }.reverse!
  count.select! { |key, value| value == count[0][1] }.collect(&:first).sort
end
# 4. Reflection 
# After having the hash with items in high frequencies appear first, we took quite a while figuring out what method to pick them out of the hash and put them into an array. Once that was accomplished, refacting to make it more readable was a breeze.


