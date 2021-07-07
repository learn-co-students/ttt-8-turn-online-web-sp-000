def display_board(x)
  puts " #{x[0]} | #{x[1]} | #{x[2]} "
  puts "-----------"
  puts " #{x[3]} | #{x[4]} | #{x[5]} "
  puts "-----------"
  puts " #{x[6]} | #{x[7]} | #{x[8]} "
end

def input_to_index(user_input)
  user_input.strip.chomp.to_i - 1
end

def move(board, index, mark = "X")
  board[index] = mark
  return board
end

def position_taken?(board, input)
  if board[input] == "X" || board[input] == "O"
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets)
  if valid_move?(board, input)
    move(board, input, mark = "X")
    display_board(board)
  else
    display_board(board)
    turn(board)
  end
end