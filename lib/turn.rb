def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  user_index = input_to_index(input)
  if valid_move?(board, user_index)
    move(board, user_index, "X")
  else
    turn(board)
  end
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def position_taken?(board, index)
  if (board[index] == ("X") || board[index] == ("O"))
    true
  else
    false
  end
end
def valid_move? (board, index)
  (((0..8).include? (index)) && (!position_taken?(board, index)))
end
def input_to_index(user_input)
  user_input.to_i - 1
end
def move (board, user_index, user_value)
  board[user_index] = user_value
end
