def input_to_index(input)
  input.to_i - 1
end

def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board,index)
end

def move(board, index, player="X")
  board[index] = player
end

def ask_for_input()
  puts "Please enter 1-9:"
  input = gets.chomp
  input_to_index(input)
end

def turn(board)
  index = ask_for_input()
  until valid_move?(board, index)
    index = ask_for_input()
  end
  move(board, index)
  display_board(board)
end
