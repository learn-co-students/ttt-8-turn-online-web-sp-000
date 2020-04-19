require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def position_taken?(board, index)
  if board[index] == " " || board[index] =="" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

#board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
#index = 4
def valid_move?(board,index)
  # binding.pry
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end


def move(board,index,xo="X")
  board[index] = xo
end

def input_to_index(user_input)
  user_input.to_i - 1
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    #  puts "Please enter X or O"
    #  xo = gets.strip
     puts "The move is valid"
     move(board,index)
     display_board(board)
   else
     puts "Input invalid and provide valid location"
     turn(board)
   end
end
