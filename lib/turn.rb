# printa out the current state of the board for the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# converts user input to board index value
def input_to_index(user_input)
  user_input.to_i - 1
end

# accept board and index from user and return true if the index is within the correct range (0-8) and is currently unoccupied by an X or O current_player
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

# helper methods for valid_move?
# checks to see if the user's submitted position is free (false) or already filled (true)
def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

# set correct index value of position within the board equal to current_player
def move(board, index, current_player = 'X')
  board[index] = current_player
end

# takes a turn and update board
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
