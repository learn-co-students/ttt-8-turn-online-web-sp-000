def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end
def valid_move?(board, index)
  if !index.between?(0, 8)
    false
  elsif position_taken?(board, index) == false
    true
else
    false
  end
end
def move(board, input, char = "X")
  board[input] = char
  puts board
end
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == false
    turn(board)
  else move(board, index)
  end
  display_board(board)
end


