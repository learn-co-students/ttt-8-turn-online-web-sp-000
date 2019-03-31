def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (input)
  num = input.to_i
  index = num - 1
end

def position_taken? (board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    false
  elsif (board[index] == "X") || (board[index] == "O")
    true
  end
end


def valid_move? (board, index)
  if (!(position_taken?(board, index))) && index.between?(0, 8)
    true
  else
    false
  end
end

def move (board, index, token = "X")
  board[index] = token
end


def turn (board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  while !(valid_move?(board, index))
    puts "Please enter 1-9:"
    num = gets.strip
    index = input_to_index(num)
  end
  move(board, index)
  display_board(board)
end
