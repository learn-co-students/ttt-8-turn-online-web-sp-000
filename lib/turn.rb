=begin
ask for input
get input
convert input to index
if index is valid
  make the move for index
  show the board
else
  ask for input again until you get a valid input
end
=end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  converted_input = input.to_i-1
end

def valid_move?(board, index)
  if index.to_i.between?(0, 8)
    if !position_taken?(board, index)
  return true
    end
  end
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, character="X")
  board[index] = character
  puts display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, character="X")
  else 
    puts "Please enter a valid number"
    turn(board)
  end
end
