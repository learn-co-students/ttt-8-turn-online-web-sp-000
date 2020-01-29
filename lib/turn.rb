def valid_move?(board, index)
  if position_taken?(board, index) == true
    puts "That position is already populated with a value. Please try again"
  elsif index.between?(0, 8) == false
    puts "That is an invalid input. Please enter a value between 1 and 9"
  else
    true
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def display_board(board_array)
  puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
  puts "-----------"
  puts " #{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
  puts "-----------"
  puts " #{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board_array, index, char="X")
  board_array[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  clean_input = input_to_index(input)
  if valid_move?(board, clean_input) == true
    move(board, clean_input)
    display_board(board)
  else
    turn(board)
  end
end