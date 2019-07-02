def display_board(board)
separator = "|"
lines = "-----------"

puts " #{board[0]} #{separator} #{board[1]} #{separator} #{board[2]} "
puts "#{lines}"
puts " #{board[3]} #{separator} #{board[4]} #{separator} #{board[5]} "
puts "#{lines}"
puts " #{board[6]} #{separator} #{board[7]} #{separator} #{board[8]} "
end

def input_to_index(input)
  input_as_integer = input.to_i
  input_as_integer -= 1 
  input_as_integer
end

def valid_move?(board, index)
  if index.between?(0, 8) && !(position_taken?(board, index))
    TRUE
  else
    FALSE
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil   
    FALSE
  else 
    true 
  end
end

def move(board, index, character = "X")
  board[index] = character
  board
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp 
  index = input_to_index(num) 
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
