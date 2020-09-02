def display_board(board)
  line="-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if(board.length() != 9 || index > 8 || index < 0)
    return false
  end
  if(board[index]=="" || board[index]==" " || board[index]==nil )
    return true
  else
    return false
  end
end

def move(board, index, token="X")
  board[index]=token
end

def input_to_index(input)
  index=input.to_i-1
  return index
end
  
def turn(board)
  puts "Please enter 1-9:"
  index=input_to_index(gets.chomp)
  x=valid_move?(board, index)
  if x
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end