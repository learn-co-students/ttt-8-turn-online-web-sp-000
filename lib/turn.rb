def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
  if (index.between?(0,8)) && position_taken?(board,index) == false
    true
  else nil
end
end

def position_taken?(board,index)
  if (board[index] == " ") || (board[index] == "")
    false
end
end

def move(array, index, value = "X")
array[index] = value
end

# get input
# convert input to index
# if index is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end
def turn(board)
  puts "Please enter 1-9:"
  value = gets.strip
  new_position = input_to_index(value)
  if valid_move?(board, new_position) == true
    move(board, new_position)
    display_board(board)
  else
    turn(board)
  end
end
