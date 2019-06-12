


def display_board(b)
  puts " #{b[0]} | #{b[1]} | #{b[2]} "
  puts "-----------"
  puts " #{b[3]} | #{b[4]} | #{b[5]} "
  puts "-----------"
  puts " #{b[6]} | #{b[7]} | #{b[8]} "
end


def position_taken?(board, index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def valid_move?(board, index)
  return index.between?(0,8) && !position_taken?(board, index)
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
  display_board(board)
end
