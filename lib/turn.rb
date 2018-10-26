#display_board method
board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move? method 
def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    return true 
  end

end

#position_taken? method 
def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    return false
  else
    return true
  end
end

#input_to_index method
def input_to_index(user_input)
  index = user_input.to_i - 1
end

#move method
def move(board, index, value = 'X')
  board[index] = value
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index) == true && position_taken?(board, index) == false
    move(board, index, value = 'X')
    display_board(board)
  else turn(board)
end
 
end

