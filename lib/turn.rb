def display_board(the_board) #what's made in a method, stays in a method
  puts " #{the_board[0]} | #{the_board[1]} | #{the_board[2]} "
  puts "-----------"
  puts " #{the_board[3]} | #{the_board[4]} | #{the_board[5]} "
  puts "-----------"
  puts " #{the_board[6]} | #{the_board[7]} | #{the_board[8]} "
end


def input_to_index(user_input)
user_input.to_i-1
end

def move(board, index, player = "X")
board[index] = player
end

def valid_move?(board, index)
  if index.to_i.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    false
end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
  true
end
end

def turn(board)
puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)
if valid_move?(board, index)
  move(board, index, player = "X")
else
  puts "please try again"
  turn(board)
end
display_board(board)
end
