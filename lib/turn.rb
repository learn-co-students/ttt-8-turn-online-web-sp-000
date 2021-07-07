def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index < 0 
    false
  elsif board[index] == " "
    true
  elsif board[index] == "X" || board[index] == "O"
    false
  elsif board[index] == ""
    true
  else
    false
  end
end

def input_to_index(input)
  converted_input = input.to_i - 1
  return converted_input
end

def move(board, input, char = "X")
  puts board[(input)] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i
  index = input_to_index(input)
  if valid_move?(board, index) == true
    input = input - 1
    move(board, input, char = "X")
    display_board(board)
  else
    turn(board)
  end
end
  
  
  
  
  