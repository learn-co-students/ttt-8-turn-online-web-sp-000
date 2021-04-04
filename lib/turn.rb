def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8)
    return true if board[index] == " "
  end
  return false
end

def input_to_index(input)
  int = input.to_i
  int - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  unless valid_move?(board, index)
    turn(board)
  else
    move(board, index, char = "X")
    display_board(board)
  end
end