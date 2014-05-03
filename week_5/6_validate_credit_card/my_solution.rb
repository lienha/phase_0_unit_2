# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Martin Lear, Hing Huynh].

# 2. Pseudocode

# Input: 16-character number
# Output: true or false boolean
# Steps:
  # create a credit card class with separate methods
  # 1st method initialize the class and create an array from the argument passed
  # 2nd method modifies the array and calculate the sum to check if it is the multiple of 10 
  # and returns the result in boolean true or false


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s.chars.map { |e| e.to_i }
    raise ArgumentError.new ("Invalid input, not enough numbers!") unless @card_number.length == 16  
  end
  
  def check_card
    i = @card_number.length - 2
    while i >= 0
      @card_number[i] = @card_number[i] * 2 
      i -= 2
    end
    @card_number = @card_number.join.to_s.chars.map {|z| z.to_i}
    @sum = @card_number.reduce(:+)
    (@sum % 10) == 0 ? true : false
  end
end

# 4. Refactored Solution

class CreditCard
  def initialize(card)
    raise ArgumentError.new("Invalid number of digits") unless card.to_s.length == 16
    @card = card.to_s.chars.map(&:to_i)  
  end
  def check_card
    i = @card.length - 2
    while i >= 0
      @card[i] *= 2
      i -= 2
    end
    @card = @card.to_s.chars.map(&:to_i)
    @card.reduce(:+) % 10 == 0 ? true : false
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

card = CreditCard.new(4408041234567893)
p card.check_card == true
another_card = CreditCard.new(4408041234567892)
p another_card.check_card == false

# 5. Reflection
# The harder part of the exercise is to figure out how to efficiently split the doubled-up numbers
# into 2 digits. It was enlightening that turning them into string complished that.
