# U2.W6: Create a Car Class from User Stories

# I worked on this challenge [by myself, with: Hing Huynh].


# 2. Pseudocode



# 3. Initial Solution
class Car
  attr_accessor :speed_limit
  attr_reader :model, :super_cool_insulated_compartment, :total_distance
  def initialize(maker, model)
    @maker = maker
    @model = model
    @total_distance = 0
    @super_cool_insulated_compartment = []
  end
  
  def drive(distance, speed_limit)
    @distance = distance
    @speed_limit = speed_limit
    @total_distance += distance
    puts "#{model} is driving at #{speed_limit} miles per hour for #{@distance} miles."
  end
  
  def stop
    puts "#{model} stops."
  end
  
  def turn(direction)
    @direction = direction
    return "turning #{direction}"
  end
  
  def mileage
    return total_distance
  end
  
  def check_speed
    return "checking speed limit, current speed: #{@speed_limit} miles per hour."
  end
  
  def pizza(*toppings)
    pizza = []
    pizza << toppings
    super_cool_insulated_compartment << pizza
  end
  
  def delivery
    delivered_pizza = super_cool_insulated_compartment.shift.join(" & ")
    return "Pizza Delivery. Here's your #{delivered_pizza} pizza. That's $20, please. *hands over pizza*"
  end
end

# 4. Refactored Solution





# 1. DRIVER TESTS GO BELOW THIS LINE
prius = Car.new("Toyota", "Prius")
prius.drive(0.25, 25)
puts "At stop sign #{prius.turn(:right)}"
prius.drive(1.5, 35) 
puts "At school zone #{prius.check_speed}"
puts "Slowing down to #{prius.speed_limit = 15}"
prius.drive(0.25,prius.speed_limit)
puts "At stop sign #{prius.turn(:left)}"
prius.drive(1.4, 35)
prius.stop
puts "Total distance travelled is #{prius.mileage} miles."
prius.pizza("pepperoni", "cheese")
prius.pizza("pineapple", "ham")
prius.pizza("octopus", "clam", "shrimp")
prius.pizza("cheese")
p prius.delivery
p prius.delivery
p prius.delivery
p prius.delivery

# 5. Reflection 
# This is a fun exercise. I'm not sure if we did everything intended by the assignment. It was
# good to practice splat argument and use join method to print out different toppings.
