def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index > 8 || index < 0
    false
  else
    !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
  
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(input)
  index = input.to_i
  index -= 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  position_taken = position_taken?(board, index)
  valid_move = valid_move?(board, index)
  
  # while true do
  #   if !position_taken && valid_move
  #     break
  #   else
  #     puts "Please enter 1-9:"
  #     input = gets.strip
  #     index = input_to_index(input)
  #     position_taken = position_taken?(board, index)
  #     valid_move = valid_move?(board, index)
  #   end
  # end
  
  until !position_taken && valid_move do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    position_taken = position_taken?(board, index)
    valid_move = valid_move?(board, index)
  end
  
  move(board, index)
  
  display_board(board)
end