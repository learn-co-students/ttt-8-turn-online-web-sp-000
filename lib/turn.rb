# display board on CLI
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  
  puts "Please enter 1-9:"
  
  user_input = gets.strip
  user_input = input_to_index(user_input)
  
  if valid_move?(board, user_input)
    move(board, user_input)
    display_board(board)
  else
    turn(board)
  end

end

# convert to integer and subtract 1
def input_to_index(user_input)

  user_input = user_input.to_i
  user_input -= 1

end

# validate the new move. 
# move must be empty and between 0, 8
def valid_move?(board, index)
  
  if !index.between?(0, 8) or board.at(index) != " "
    return false
  else
    return true
  end

end

# update board array with the new move.
def move(board, index, value = "X")
  board[index].replace(value)
end
