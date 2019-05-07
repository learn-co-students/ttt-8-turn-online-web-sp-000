def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts"-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts"-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i

  if index.is_a? Integer
    return index - 1
  else
    return -1
  end
end

def valid_move?(board, index)
  if index < 9 && index >= 0
    if board[index] == "" || board[index] == " " || board[index] == nil
      return true
    else
      return false
    end
  else
    return false
  end

end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
