def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  #x_o_position =
  position_taken?(board, index)

  if valid_move?(board, index)
    move(board, index, x="X")
    display_board(board)
  else
    turn(board)
  end

end

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

def move(board, index, x="X")
  board[index] = x
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  else
    true
  end
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end



# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end
