def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)

  if input == -1
    puts "Invalid input---input must contain an integer, 1-9."
    turn(board)
  elsif !valid_move?(board, input)
    puts "The location you entered is already occupied."
    turn(board)
  else
    board = move(board, input)
    display_board(board)
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
  index = input.to_i - 1
  return index
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
 if (board[index] == " ") || (board[index] == nil)
   return false
 elsif (board[index] == "X") || (board[index] == "O")
   return true
 end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end
