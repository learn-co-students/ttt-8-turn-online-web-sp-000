def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
   user_input.to_i - 1
end

def valid_move?(board, index)
if index.between?(0,8) && !position_taken?(board, index)
  true
end
end

def position_taken?(board, index)
  if board[index] == "  " || board[index] == " " || board[index] == nil
  false
else
  taken = true
end
end

def move(board, index, character = "X")
board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, character = "X")
    puts display_board(board)
  end
end
