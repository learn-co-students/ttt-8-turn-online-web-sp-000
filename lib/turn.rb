def turn(board)
  puts "Please enter 1-9:"
  index = gets
  index = input_to_index(index)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    index = gets
    index = input_to_index(index)
  end
  move(board, index)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  if index.to_i < 0
    return false
  end

  if board[index] != "X" and board[index] != "O" and board[index] != nil
    return true
  end

  return false
end

def move(board, index, player="X")
  board[index] = player
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
puts board[10] == nil
