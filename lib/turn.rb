
def input_to_index(str)
  str = str.to_i - 1
  return str
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
# must move to a position within the board '1 - 9'
# position must be vacant

  if index.between?(0, 8) == true && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  space = board[index]
  if space == " " || space == "" || space == nil
    return false
  else 
    return true
  end
end

piece = "X"
def move(board, index, piece= "X")
  board[index] = piece 
  return board
end

def turn(board)
  input_valid = false
  until input_valid == true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) == true
      move(board, index, "X")
      display_board(board)
      input_valid = true
     else
      input_valid = false
    end
  end
end
