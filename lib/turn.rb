  # Asking the user for their move by position 1-9.
  # Receiving the user input.
  # Convert position to an index.
  # If the move is valid, make the move and display the board to the user.
  # If the move is invalid, ask for a new move until a valid move is received.  

# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end

# def display_board(board)
#   puts " #{board[0]} | #{board[1]} | #{board[2]} "
#   puts "-----------"
#   puts " #{board[3]} | #{board[4]} | #{board[5]} "
#   puts "-----------"
#   puts " #{board[6]} | #{board[7]} | #{board[8]} "
# end
# 
# def input_to_index(input)
#   input.to_i - 1
# end 
# 
# def move(board, position, character="X")
#   board[position] = character
# end 
# 
# def valid_move?(board, index) 
#   # Present on the game board and not already filled with a token.
#   if index.between?(0,8) && !position_taken?(board, index) 
#   # returns true if the move is valid and false or nil if not
#     true 
#   else 
#   # returns nil or false for a position that is not on the board (like 100)
#     false 
#   end
# end 
# 
# def position_taken?(board, index)
#   if board[index] == ' ' || board[index] == '' || board[index] == nil
#     return false 
#   else 
#     return true 
#   end 
# end 
# 
# def turn(board)
#   puts "Please enter 1-9:"
# end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end