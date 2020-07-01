
def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def valid_move?(board, index)
  if index.between?(0, 8) && board[index] != "X" && board[index] != "O"
    TRUE
  else
    FALSE
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def position_taken?(board, index)
  if board[0] == " " || board[0] == "" || board [0] == nil
    FALSE
  else
    TRUE
  end
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def input_to_index(number)
 number.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def update_array_at_with(array, index, value)
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index) == TRUE
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end