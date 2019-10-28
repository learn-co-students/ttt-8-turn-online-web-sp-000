require "pry"
def display_board(board)


   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def move(board, index, player = "X")
   board[index] = player
end
def position_taken?(board, index)
   if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false
   else
      return true
   end
end
def input_to_index(input)
  input.to_i - 1
end
def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.chomp
    input = input_to_index(input)
    if valid_move?(board, input)
      move(board, input)
      puts display_board(board)
    else
      puts "That is an invalid entry!"
      turn(board)
    end
end
