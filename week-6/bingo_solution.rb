# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent way too many hours (4) on this challenge.


# Release 0: Pseudocode
# Outline: Bingo board is created by nesting five arrays within one master array. Letters and numbers will be randomly generated. Letters will indicate the index to be checked within each array. B[0], I[1], N[2], G[3], 0[4]. If the randomly generated number is located within the index indicated by the randomly generated number (from "BINGO"), that number will be replaced with an x. 

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # def generate
  #   Randomly pull one string from an Array of ("b", "i", "n", "g", "g")
  #   Randomly pull one number from the range 1-00
  # end

# Check the called column for the number called.
    # def called
    #   Check indicated index for randomly generated number
    # end

# If the number is in the column, replace with an 'x'
  # def replace
  #   If called = :true
  #   original_number = x
  # end

  # Display a column to the console
  # def print_column
    #   display each letter-column array
    # end

# Display the board to the console (prettily)
  # def print_board
  # print board_with_x_inserted
  # end

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = {B: 0, I: 1, N: 2, G: 3, O: 4}
    # @bingo_array = ["B", "I", "N", "G", "O"]
    @bingo_array = @letters.keys
    @call_range = (1...100)
    generate
  end

  def generate


    @letter = @bingo_array.sample.to_s
    call_sample = @call_range.to_a.sample
    @call = call_sample.to_i
    @letter = "N"
    @call = 97


    @bingo_board_transposed = @bingo_board.transpose

    called
  end

  def called

    i = @letters[@letter.intern]
    @bingo_board_transposed[i].map! do |element|
      if element == @call
        "X"
      else
        element
      end
    end

    print_board

  end


  def print_board
    @working_board = @bingo_board_transposed.transpose

    p @working_board[0]
    p @working_board[1]
    p @working_board[2]
    p @working_board[3]
    p @working_board[4]

  end 
end




# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [["B", "I", "N", "G", "O"],
        [47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)




#Reflection


