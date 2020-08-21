




board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

  if position_taken?(board, index) != true && index.between?(0,8)
    true
  else
    false
  end
def position_taken?(board, index)
if ( board[index] ==  " ") || (board[index] == "" ) || (board[index] == nil )
  return false
else ( board[index] ==  "X") || (board[index] == "O" )
  return true 
end
end 
