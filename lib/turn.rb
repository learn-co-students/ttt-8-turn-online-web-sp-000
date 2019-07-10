#output the board
def display_board(
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts 'display board'
#board output
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid move and position taken methods
def valid_move?(board, index)
  if index.between?(0, 8) && ! position_taken?(board, index)
    return TRUE
  else 
    return FALSE
  end
end
# position_taken method
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    then FALSE
  elsif board[index] == "X" || board[index] == "O"
    then TRUE
  end
end

#CHANGE INFO TO INTEGER
def input_to_index(move)
   index = move.to_i - 1
end
#MAKE MOVE ON BOARD
def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, token = "X")
  else 
    puts "Please enter 1-9:"
    turn(board)
  end
  display_board(board)
end


