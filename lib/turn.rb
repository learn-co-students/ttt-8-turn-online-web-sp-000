# METHODS

# Show the Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Change Input to Index
def input_to_index(input)
  index = input.to_i - 1
end

# Checks to see if Position Occupied
def position_taken?(board, index)
  if board[index] === " " || board[index] === ""
    false
  else
    true
  end
end

# Checks for Valid Moves
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) === false
    true
  else
    false
  end
end

# move(board, index, player="X")

def move(board, index, player = "X")
  board[index] = player
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) === false
    turn(board)
  else
    move(board, index, player = "X")
  end
end

# TURN
  # ask for move by position 1-9
  # get input
  # convert input to an index
  # if index is valid
    # make the move at index
    # display the board
  # else
    # ask for a new move until a valid move is received
  # end
# end