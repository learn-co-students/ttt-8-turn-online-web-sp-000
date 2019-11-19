def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" ", " ", " "]
# code your input_to_index and move method here!

def input_to_index(move)
  index = move.to_i - 1
  return index
end
  
def move(board, index, value = "X")
  board[index] = value
end

def position_taken?(board,position)
  if board[position] == " "
    false
    elsif board[position] == ""
    false
    elsif  board[position] == nil
    false
    else   board[position] == "X" || "O"
    true
  end
end

def valid_move?(board, index)
  if (index < 0 || index > 8)
    return false
  elsif position_taken?(board, index)
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets.chomp
  index = input_to_index(move)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else turn(board)
  end
end
