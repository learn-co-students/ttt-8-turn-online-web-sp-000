require 'pry'
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  # binding.pry
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  # binding.pry
if board[index] == " "
  return false
elsif board[index] == ""
  return false
elsif board[index] == nil
  return false
else board[index] == "X" || board[index] == "O"
  return true
end
end

def input_to_index(user_input)
user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
