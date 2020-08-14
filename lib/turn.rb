def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  #check if index is a space on the board
  if index > 8 || index < 0
    false
  #check if space is unoccupied
  elsif board[index] == "" || board[index] == " " || board[index] == nil
    true
  else
    false
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, position, symbol="X")
  board[position] = symbol
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end


