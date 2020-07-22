def display_board(board = [" "," "," "," "," "," "," "," "," "] )
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(string)
  string.to_i - 1
end

def move(board,position,character = "X")
  board[position] = character
end

def position_taken?(board,index)
if board[index] == " "
  return false
end
if board[index] == ""
  return false
end
if board[index] == nil
  return false
end
if board[index] == "X" || board[index] == "O"
  return true 
end
end

def valid_move?(board,index)
  !position_taken?(board, index) && index.to_i.between?(0,8)
end

def turn(board)
  puts "Please enter 1-9:"
number = gets.strip
valid = input_to_index(number)
valid2 = valid_move?(board,valid)
if valid2 == false
turn(board)
else valid2 == true
move(board,valid)
display_board(board)
end
end

