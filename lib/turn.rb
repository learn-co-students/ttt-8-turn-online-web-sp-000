def turn(board)
    puts "Please enter 1-9:"
    spot = input_to_index(gets)
    character = "X"
  until valid_move?(board,spot)
    puts "Please enter 1-9:"
    spot = input_to_index(gets)
  end
  display_board(move(board, spot, character))
  move(board, spot, character)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  good_number(position) && !(position_taken?(board, position))
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def good_number(index)
  index.between?(0, 8)
end

def move(board,index,character)
  board[index]="#{character}"
  board
end

def input_to_index(input)
  input = input.to_i
  input-1
end
