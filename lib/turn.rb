require "pry"
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  input -= 1
end

def valid_move?(board, index)
  if index < 0 || index > 8
    false
  elsif board[index] == "" || board[index] == " " || board[index] == nil
    true
  end
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip

  input = input_to_index(input)


  if valid_move?(board, input)
    move(board, input, "X")
  else
    turn(board)
  end

  display_board(board)
end
