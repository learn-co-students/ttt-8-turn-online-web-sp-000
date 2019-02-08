def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts   "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts   "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
input = gets.strip
=begin
input_to_index(input)
valid_move?(board, index)
move(array, index)
display_board(board)
=end

end

def input_to_index(input)
   input.to_i - 1
end

def valid_move?(board, index)
if board[index] == " "
  true
else
    false

end
end

def move(array, index, value = "X")
array[index] = value
end
