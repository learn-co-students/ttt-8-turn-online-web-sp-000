#displays a tic tac toe board, with board spaces passed as an array
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#coverts a user's place on the board to the index integer



def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

def position_taken?(board, index)
  position = board[index]
  if position == " " || position == "" || position == nil 
    return false 
  else true
end
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    return true 
  else false 
end
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end 

def move(board, index, character = "X")
  board[index] = character
  return board
end








