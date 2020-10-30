board = [" ", " ", " ", " ", " ", " ", " ", " "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

user_input = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, character = "X")
  board[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else
    turn(board)
  end
end
