# turn method

def turn(board)
  # ask the user for input (position 1-9)
  puts "Please enter 1-9:"
  
  # get input
  user_input = gets.strip
  
  # calls input to index method
  index = input_to_index(user_input)
  
  # if index is valid
  if valid_move?(board, index)
    # make the move for index
    move(board, index, character = "X")
  
    # show the board
    display_board(board)
    
  # else
  else
    # ask for input again until you get a valid input
    turn(board)
# end
  end
end
  
# display_board method

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# convert input to index

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input.to_i - 1
end

# valid_move? method

def valid_move?(board, index)
  # position is vacant AND move is present on the game board
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
    #puts "good move"
  # move is not present on the game board  
  elsif index < 0 || index > 8
    puts "You must move to a position within the tic-tac-toe board"
  # move is not vacant 
  elsif position_taken?(board, index)
    puts "The position must be vacant, not currently taken by a player"
  end
end

# position_taken? method

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

# move method

def move(board, index, character = "X")
  board[index] = character
end