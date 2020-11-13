#display_board
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#prints arbitrary board
board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]
display_board(board)

# Receive the user input and Convert position to an index

def input_to_index(user_input)
  user_input.to_i - 1
end

#Validmove?
def valid_move?(board, user_input)
  if user_input.between?(0,8) && !position_taken?(board, user_input)
    return true
  elsif user_input.between?(0,8) && position_taken?(board, user_input)
    return false
end
end

#define position_taken?
def position_taken?(board, user_input)

if board[user_input] == " " || board[user_input] == "" || board[user_input] == nil
  return false
elsif board[user_input] == "X" || board[user_input] == "O"
  return true
else
  return false
end
end
#make move and display_board
def move(board, user_input, value = "X")
  board[user_input] = value
  display_board(board)

end

def turn(board)

  puts "Please enter 1-9:"
  user_input = gets.strip.to_i - 1
  input_to_index(user_input)
  if valid_move?(board, user_input)
    move(board, user_input, value = "X")
  else
    turn(board)
end

end

#inValidmove?
  #ask for a new move until a valid move is received.
