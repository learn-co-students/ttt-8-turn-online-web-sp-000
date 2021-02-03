def display_board(m)
puts " #{m[0]} | #{m[1]} | #{m[2]}   "
puts "-----------"
puts " #{m[3]} | #{m[4]} | #{m[5]}   "
puts "-----------"
puts " #{m[6]} | #{m[7]} | #{m[8]}   "
end

board = ["O", " ", " ", " ", "O", "O", "X", "O", "O"]
display_board(board)

def input_to_index(user_input)
user_input.to_i-1
end

def valid_move?(board, index)
index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "NOT A VALID MOVE"
    turn(board)
  end
  end
