# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: Hing Huynh].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# create method called assert to raise argument error assertion failed unless yield
# creates var name "name " and assign it string of "bettysue"
# runs assert method on name equals "bettysue"  which should yield because statement 
# is true.
# Then runs assert method on name equals "billybob" which should raise argument error
# because statement is false.

# 3. Copy your selected challenge here
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

card = CreditCard.new(4408041234567893)
p card.check_card == true
another_card = CreditCard.new(4408041234567892)
p another_card.check_card == false



# 4. Convert your driver test code from that challenge into Assert Statements
def assert
  raise "Assertion failed!" unless yield
end
assert { card.check_card == true }
assert { another_card.check_card == true }

# 5. Reflection
# This is to get familiarized with using assert.
