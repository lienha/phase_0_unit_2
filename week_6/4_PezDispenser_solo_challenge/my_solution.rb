# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# create a class PezDispenser
# create an initialize method that takes flavors as an argument.
# create see_all_pez method that returns all pez.
# create a get_pez method that returns the pez.
# create an add method that return the pez added.
# create a method count that returns what left in a dispenser.


# 3. Initial Solution

class PezDispenser
  attr_reader :flavors
  def initialize(flavors)
    @flavors = flavors
  end

  def see_all_pez
     "#{flavors}"
  end

  def get_pez
     flavors.sample
  end

  def add_pez(pez)
     flavors << pez
     puts "added #{pez}"
  end

  def pez_count
     flavors.size
  end
end
 
# 4. Refactored Solution
class PezDispenser
  attr_reader :flavors
  def initialize(flavors)
    @flavors = flavors
  end

  def see_all_pez
     "#{flavors}"
  end

  def get_pez
     flavors.sample
  end

  def add_pez(pez)
     flavors << pez
     puts "added #{pez}"
  end

  def pez_count
     flavors.size
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

# 5. Reflection 
# I don't see how I can further refactor. This is a straight-forward exercise.
# I learned to use sample method for the first time.