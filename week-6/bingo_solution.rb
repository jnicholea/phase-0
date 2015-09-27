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
    @bingo_array = ["B", "I", "N", "G", "O"]
    @call_range = (1...100)
    generate
  end

  def generate


    @letter = @bingo_array.sample
    @call = @call_range.to_a.sample

    @bingo_board_transposed = @bingo_board.transpose
    @B = @bingo_board_transposed[0]
    @I = @bingo_board_transposed[1]
    @N = @bingo_board_transposed[2]
    @G = @bingo_board_transposed[3]
    @O = @bingo_board_transposed[4]

    called
  end

  def called

    
    if @letter == "B"
      @B.map do |element|
        if element == @call
          element = "X"
          @B = @bingo_board_transposed[0]
        end
      end
    end

    if @letter == "I"
      @I.map do |element|
        if element == @call
          element = "X"
          @I = @bingo_board_transposed[1]
        end
      end
    end

     if @letter == "N"
      @N.map do |element|
        if element == @call
          element = "X"
          @N = @bingo_board_transposed[2]
        end
      end
    end

     if @letter == "G"
      @G.map do |element|
        if element == @call
          element = "X"
          @G = @bingo_board_transposed[3]
        end
      end
    end

     if @letter == "O"
      @O.map do |element|
        if element == @call
          element = "X"
          @O = @bingo_board_transposed[4]
        end
      end
    end

    else
        puts "No matches"

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


