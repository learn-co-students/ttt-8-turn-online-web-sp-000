

def display_board(board=[ "X", "X", "X", "X", "O", "O", "X", "O", "O",] )
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move)
  move = move.to_i - 1
  return move
end

def move(board,index,symbol= "X")
  board[index] = symbol

end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board,index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == ""|| board[index] == " "||board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  x = input_to_index(num)
  if valid_move?(board,x)
    move(board,x)
    display_board(board)
  else
    puts"invalid move"
    turn(board)


  end
end
