# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: Hing Huynh].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
    #create a method creat_word that takes two arguments board and *coords and returns a word from joining coordinated letters.


# Initial Solution
  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end
 
# Refactored Solution
# Nothing here.


# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
    # change boggle_board to a global variable
    # create get_row method that takes row as an argument and return boggle_board row.

# Initial Solution
$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
                
def get_row(row)
    $boggle_board[row]
end

# Refactored Solution
# Nothing here.

# DRIVER TESTS GO BELOW THIS LINE
get_row(1) #=>  ["i", "o", "d", "t"]

# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
    # still use global variable boggle_board
    # create get_col method that takes col as an argument and return the column of boggle_board array.

# Initial Solution

def get_col(col)
    $boggle_board.transpose[col]
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
get_col(1)  #=>  ["r", "o", "c", "a"]

# Reflection 
# I think this exercise is for us to get used to find positions in a multi-dimentional array.