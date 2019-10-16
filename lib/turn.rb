def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (user_input)
  return user_input.to_i - 1
end

def move(board, index, value = "X")
  return board[index] = value
end

#valid move created method
def valid_move? (board,index)
  spot = index.to_i
  if spot.between?(0,8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

#position_taken created method
def position_taken?(board, index)
  if (board[index] == "" || board[index] == " " || board[index] == nil)
    return false
  else
    return true
  end
end

def turn (board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index (user_input)
  spot = index.to_i
  if spot.between?(0,8) && valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    gets.strip
  end

end
