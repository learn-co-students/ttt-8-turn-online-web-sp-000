def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    puts "Invalid input."
    turn(board)
  end
  display_board(board)
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  index >= 0 && index <= 9 && !position_taken?(board, index)
end

def position_taken?(board, index)
  entry = board[index]
  !(entry == " " || entry == "" || entry == nil)
end

def move(board, index, character = "X")
  board[index] = character
end

def display_board(board)
  divider = "-----------"
  puts createRow(board, 0)
  puts divider
  puts createRow(board, 3)
  puts divider
  puts createRow(board, 6)
end

def createRow(board, startIndex)
  row = " #{board[startIndex]} |"
  row << " #{board[startIndex + 1]} |"
  row << " #{board[startIndex + 2]} "
end
