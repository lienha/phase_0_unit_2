# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
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
    @card.reduce(:+) % 10 == 0
  end
end

# Refactored Solution
class CreditCard 
  attr_reader :card
  def initialize(card)
    raise ArgumentError.new("Invalid number of digits") unless card.to_s.size == 16
    @card = card.to_s.chars.map(&:to_i)
  end
  def check_card
    card.each_index { |i| @card[i] *= 2 if i.even? }.to_s.chars.map(&:to_i).reduce(:+) % 10 == 0
  end
end

# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end
card = CreditCard.new(4408041234567893)
assert { card.check_card == true }
another_card = CreditCard.new(4408041234567892)
assert { another_card.check_card == false }
# Reflection 
# In refactored solution, I only added attr_reader :card so in later method, the instance variable was
# not used. check_card method got shorter and easier to read by chain-linking different methods.