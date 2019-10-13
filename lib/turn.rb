require_relative "../lib/turn"
require 'pry'
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)

  def position_taken?(board, index)
    if (board[index] == nil) || (board[index] == " ") || (board[index] == "")
       return false
    elsif (board[index] == "X") || (board[index] == "O")
      return true
    end
  end

    #if less than 0 or greater than 8 is false
  if (index < 0) || (index > 8)
    return false
      #if index is between 0-8 return and the position is not taken, return true
    elsif (index.between?(0,8)) && !position_taken?(board, index)
      return true
  end
end



def input_to_index(input)
    return (input.to_i - 1)
  end


  def move(board, input_to_index, token = "X")
    return board[input_to_index] = token
  end


  def turn(board)
   puts "Please enter 1-9:"
#get input

#convert input to index, if index is valid, make the move.
  
end
