# board array
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# display_board is the method to build the board for output
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def position_taken?(board, index)
  # check if board - index is empty -> " " or ""
  # ternary solution:
  (board[index] == " " || board[index] == "" || board[index] == nil) ?
    false : true
  end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  end
end

def move(board, index, token = "X")
    board[index] = token
end

# ask for input
# get input
# convert input to index
# if index is valid
#  make the move for index
#  show the board
# else
#  ask for input again until you get a valid input
# end
def turn(board)
  # ask the user for input:
  puts "Please enter 1-9:"
  # gets the user input
  input = gets.strip
  # calls the input_to_index method
  index = input_to_index(input)
  #validates the input correctly
  if valid_move?(board, index)
    # makes valid move
    move(board, index, "X")
  else
    # asks for input again after a failed validation
    turn(board)
  end
  # displays a correct board after a valid turn
  display_board(board)
end
