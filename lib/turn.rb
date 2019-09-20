require 'pry'

def display_board(board)

 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def input_to_index(input)
  
  input = input.to_i - 1
end 

def valid_move?(board, idx)
  
  if idx.between?(0,8) && !position_taken?(board, idx)
    true 
  else 
    false
  end 
end 

def position_taken?(board, idx)
  board[idx] != " "
end 

def move(board, idx, character = "X")
  
  board[idx] = character
end 

def turn(board)
  
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  
  if valid_move?(board, input)
    # binding.pry
    move(board, input, character = "X")
    display_board(board)
  else 
    turn(board)
  end 
  
end 
