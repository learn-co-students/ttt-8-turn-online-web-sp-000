def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, pos)
  (pos.between?(0,8) && !position_taken?(board, pos)) ? true : false
end

def position_taken?(board, pos)
  (board[pos].nil? || board[pos] == "" || board[pos] == " ") ? false : true
end

def move(board, pos, char = "X")
  board[pos] = char
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
