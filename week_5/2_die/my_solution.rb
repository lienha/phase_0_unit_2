# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: Hing Huynh].

# 2. Pseudocode

# Input: an array of letters
# Output: a random letter after rolling the die
# Steps:
    # create a class Die
    # create an initialize method that takes one argument labels which is an array, if the array is empty raise the ArgumentError.
    # create a method that returns the sides of the die
    # create a method roll that returns a random side of the die.


# 3. Initial Solution

class Die
  def initialize(labels)
    raise(ArgumentError, 'array is empty') unless labels.length > 0
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(sides)]
  end
end


# 4. Refactored Solution
class Die
  def initialize(labels)
    raise(ArgumentError, 'array is empty') unless labels.length > 0
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(sides)]
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
new_die = Die.new(("A".."F").to_a)
another_die = Die.new(("G".."Z").to_a)
p new_die.sides == 6
p new_die.roll 
p another_die.sides 
p another_die.roll
p another_die.roll
p another_die.roll
p another_die.roll

# 5. Reflection 
# This is an expansion from the previous exercise; a good practice for using class
# and methods in it.
