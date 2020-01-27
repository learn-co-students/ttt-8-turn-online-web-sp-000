def turn(board)
puts "Please enter 1-9:"

input = gets.strip
index = input_to_index(input)
if valid_move?(board, index) == true
  move(board, index, value = "X")
  display_board(board)
else
  puts "Please enter 1-9:"
  turn(board)
end

end
#display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index (input)
  index = input.to_i - 1
  return index
end
def move (array, index, value = "X")
array[index]=value
end
#valid_move method
def valid_move?(board, index)
  if index >= 0 && index <= 8
    return !position_taken?(board, index)
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  space = board[index]
  return !(space == " " || space == "" || space == nil)
end
#move method
