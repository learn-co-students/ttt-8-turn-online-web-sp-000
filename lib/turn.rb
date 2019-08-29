def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
 # if valid_move?(board, user_input)
 #   true
 #    else turn(board)
  move(board, user_input, value = "X")
 end

def input_to_index(user_input) 
  user_input.to_i - 1
end

#return modified board with updated user input
def move(board, user_input, value = "X")
  board[user_input.to_i] = value
end

def valid_move?(board, user_input)
  if user_input != user_input.clamp(0,8)
    false
  else position_taken?(board, user_input) 
end 
end


def position_taken?(board, user_input)
  if board[user_input] == " " || board[user_input] == "" || board[user_input] == nil
    true
  else false
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end