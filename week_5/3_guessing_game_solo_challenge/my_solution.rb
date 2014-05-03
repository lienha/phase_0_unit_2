# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: an integer
# Output: return high, low or correct
# Steps:
    # create a class GuessingGame
    # create an initialize method that takes answer as an argument and return an instant variable answer.
    # define a guess method that takes an interger as an argument and returns the symbol :high if the guess 
    # is a bigger number than the answer, :correct if the guess is equal to the answer, and :low if the guess 
    # is lower than the answer.
    # define an instance method solved? which returns true if the most recent guess was correct and false otherwise.

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(integer)
    @guess = integer
    return :high if @guess > @answer
    return :low if @guess < @answer
    return :correct if @guess == @answer
  end

  def solved?
    @guess == @answer ? true : false
  end
end

# 4. Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(integer)
    @guess = integer
    return :correct if @guess == @answer
    @guess > @answer ? :high : :low
  end

  def solved?
    @guess == @answer ? true : false
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(20)
p game.guess(12) == :low
p game.guess(22) == :high
p game.solved? == false
p game.guess(20) == :correct
p game.solved? == true

# 5. Reflection 
# Another good exercise to familiarize with classes and methods in them.