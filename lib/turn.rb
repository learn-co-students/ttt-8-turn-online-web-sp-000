#displays a tic tac toe board, with board spaces passed as an array
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#coverts to integer and subtracts one
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

#Is it is an valid number
def valid_move?(board, index)
  if position_taken?(board,index) == false && index.between?(0,8)
      true
  else
      false
  end
end

#Checks the number to see if the position is already taken
def position_taken? (board,index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || "O"
    true
  end
end

#Takes a users num and the board, and places the X char in that position
def move(board, index, character = "X")
  board[index] = character
  return board
end

#Asks for a number, check if it is valid, and if it's not, continues to ask for a number

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
    if valid_move?(board, index) == true
      move(board, index)
      display_board(board)
    else
      turn(board)
    end
end
