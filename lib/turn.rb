def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    puts "Please enter a valid number."
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  position_index = input.to_i - 1
end

def move(board, position_index, value = 'X')
  board[position_index] = value
end

def valid_move? (board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken? (board, index)
  if board[index].include?("X" || "O")
    true
  end
end