def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
end

def input_to_index(input)
  input = input.to_i - 1
end

def position_taken?(board, input)
  board[input] == "X" || board[input] == "O"
end

def valid_move?(board, input)
  position_taken?(board, input) == false && (0..8).include?(input)
end

def move(board, input, player = "X")
  if valid_move?(board, input) == true
    board[input] = player
  end
end

def input_message
  puts "Please enter 1-9:"
end

def turn(board)
  input_message
  
  input = gets.strip
  input = input_to_index(input)
  
  if valid_move?(board, input) == false
    input_message
    input = gets.strip
    input = input_to_index(input)
  else
    board[input] = "X"
  end
  
  display_board(board)
end