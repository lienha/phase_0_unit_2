# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: Hing Huynh, with: Celeen Rusk].


# 2. Pseudocode
# create BoggleBoard class
# copied methods from the boggle_board exercise of week 5
# create initialize method with 3 variables @boggle_board, numbers of rows, numbers of columns.
# add attr_reader for those three variables.
# under driver tests, create an assert method.
# create tests for each methods.
# create tests to print out the strings of each row and column of the boggle_board.
# create test that return true for coordinate that equals to "k"

# 3. Initial Solution

class BoggleBoard
  attr_reader :boggle_board, :num_rows, :num_cols
  def initialize(boggle_board)
    @boggle_board = boggle_board
    @num_rows = boggle_board.length
    @num_cols = boggle_board[0].length
  end
  
  def create_word(*coords)
    coords.map { |coord| boggle_board[coord.first][coord.last] }.join("")
  end
  
  def get_row(row)
    boggle_board[row]
  end

  def get_col(col)
    boggle_board.transpose[col]
  end
end 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
# 4. Refactored Solution
class BoggleBoard
  attr_reader :boggle_board, :num_rows, :num_cols
  def initialize(boggle_board)
    @boggle_board = boggle_board
    @num_rows = boggle_board.length
    @num_cols = boggle_board[0].length
  end
  
  def create_word(*coords)
    coords.map { |coord| boggle_board[coord.first][coord.last] }.join("")
  end
  
  def get_row(row)
    boggle_board[row]
  end

  def get_col(col)
    boggle_board.transpose[col]
  end
end 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)





# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
def assert
  raise "Assertion failed!" unless yield
end
assert { boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock" }
assert { boggle_board.get_row(0) == ["b", "r", "a", "e"] }
assert { boggle_board.get_row(1) == ["i", "o", "d", "t"] }
assert { boggle_board.get_col(0) == ["b", "i", "e", "t"] }
assert { boggle_board.get_col(1) == ["r", "o", "c", "a"] }
(0...boggle_board.num_rows).to_a.each { |row| puts boggle_board.get_row(row).join }
(0...boggle_board.num_cols).to_a.each { |col| puts boggle_board.get_col(col).join }
assert { boggle_board.get_row(3)[2] == "k" }

# 5. Reflection 
# This exercise was straight-forward. It was a little tricky to figure out how to return
# the strings for each row and column. In this exercise I figured out how to utilize attr_reader,
# so the instance variables were not used in later methods.