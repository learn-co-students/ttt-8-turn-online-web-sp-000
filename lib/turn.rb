def position_taken?(board, index)
  square = board[index]
#
  if square == " "
    false
  elsif square == ""
    false
  elsif square == nil
    false
  elsif square == "X"
    true
  elsif square == "O"
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
#  index = input_to_index(input)
  if (input_in_range?(index) && (!(position_taken?(board, index))))
    true
  end
end

def move(board, index, token = "X")
  #input = gets.strip
  board[index] = token
  #turn(board)
end

def input_to_index(input)
  index = input.to_i - 1
end

def input_in_range?(index)
  if index.between?(0, 8)
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
#  puts "x or o?"
#  token = gets.strip

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
