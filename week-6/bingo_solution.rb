# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.
# START 3:30PM Oct 18, 2015
# END


# Release 0: Pseudocode
=begin
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  DEFINE a method named call
    RETURN a string containing a randomly selected letter from the word 'bingo' and a number between 1 and 100
  END

# Check the called column for the number called.
  DEFINE a method called check that takes an argument of type string that is called "location" and an argument of type array called "board"
    FOR EACH element in the "board"
      IF "location" contains the letter B check at index 0 for the number "location" contains and call method replace x if true
      ELSE IF "location" contains the letter I check at index 1 for the number "location" contains and call method replace x if true
      ELSE IF "location" contains the letter N check at index 2 for the number "location" contains and call method replace x if true
      ELSE IF "location" contains the letter G check at index 3 for the number "location" contains and call method replace x if true
      ELSE IF "location" contains the letter O check at index 4 for the number "location" contains and call method replace x if true
      END
    END
  END

# If the number is in the column, replace with an 'x'
  DEFINE a method called "replace" that takes two integers as arguments called "arr" and "sub_arr"
    REPLACE the value at "bingo_board" location "arr", "sub_arr" with "X"
  END

# Display a column to the console
  DEFINE a method "printColumn" that takes an integer as argument called "column"
    FOR EACH item in the bingo_board RETURN the value at the index "column"
  END

# Display the board to the console (prettily)
  DEFINE a method called "print_board"
    FOR EACH sub array in array bingo_board print value returning a new line once each sub array is completed printing
  END
=end
# Initial Solution

# class BingoBoard
#   attr_reader :last_call, :bingo_board
#   def initialize(board)
#     @bingo_board = board
#     @last_call = String.new
#   end

#   def call
#     last_call.replace (["B","I","N","G","O"].sample + (1 + rand(100)).to_s)
#     p last_call
#   end

#   def check
#     if last_call.include? "B"
#       mark(last_call[1, last_call.length - 1].to_i, 0)
#     elsif last_call.include? "I"
#       mark(last_call[1, last_call.length - 1].to_i, 1)
#     elsif last_call.include? "N"
#       mark(last_call[1, last_call.length - 1].to_i, 2)
#     elsif last_call.include? "G"
#       mark(last_call[1, last_call.length - 1].to_i, 3)
#     elsif last_call.include? "O"
#       mark(last_call[1, last_call.length - 1].to_i, 4)
#     else
#       print "#{last_call} not found"
#     end
#   end

#   def mark(value, sub_arr)
#     bingo_board.each do |index|
#       if index.at(sub_arr) == value
#         index[sub_arr] = "X"
#       end
#     end
#   end

#   def print_board
#     p "B I  N  G  O"
#     bingo_board.each do |index|
#       index.each { |sub_index| print sub_index.to_s + " " }
#       print "\n"
#     end
#   end

# end

# Refactored Solution

class BingoBoard
  attr_reader :last_call, :bingo_board, :heading
  def initialize(board)
    @bingo_board = board
    @last_call = String.new
    @heading = ["B","I","N","G","O"]
  end

  def call
    last_call.replace (heading.sample + (1 + rand(99)).to_s)
    p last_call
  end

  def check
    column = heading.index(last_call[0])

    bingo_board.each_index do |index|
        if bingo_board[index][column] == last_call[1, last_call.length - 1].to_i
          mark(index, column)
        end
    end
  end

  def mark(arr, sub_arr)
    bingo_board[arr][sub_arr] = "X"
  end

  def print_board
    p "B I  N  G  O"
    bingo_board.each do |index|
      index.each { |sub_index| print sub_index.to_s + " " }
      print "\n"
    end
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call

print "\n"

new_game.check

new_game.print_board





#Reflection
=begin
- How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
    The pseudcode for this challenge was a bit more difficult because this challenge had a fair bit more work to be done. My pseudocode style works for the most part, its hard not to just dive in to the code and start working it out but pseudocoding helps me to plan ahead.

- What are the benefits of using a class for this challenge?
    The benefits are that you can encapsulate  the methods that are needed to operate on a bingo board, checking whether your board contains the value that is called, and updating the board when there is a match, showing a print out of the board.

- How can you access coordinates in a nested array?
    Two main ways that you can access coordinates in a nested array are:
      array[x][y]
      array.at(x).at(y)

- What methods did you use to access and modify the array?
    The method that I used in my refactored version to access and update the values in the array was the bracket notation array[x][y]

- How did you determine what should be an instance variable versus a local variable?
    Local variables were items that weren't required for other methods whereas instance variables were those that were required in multiple arrays.

- What do you feel is most improved in your refactored solution?
    My refactored solution has a much more concise check method, it is much less repetitive.
=end