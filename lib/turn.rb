board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
char = "X"
index = 0

def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  divider = "-----------"
puts row1
puts divider
puts row2
puts divider
puts row3
end



def move(board, index, char = "X")
    board[index] = char
end



def position_taken?(board, index)
  if board[index] == ("") || board[index] == (" ") || board[index] == nil
    return false
  else board[index] == ("X") || board[index] == ("O")
    return true
  end
end




def input_to_index(input)
 input.to_i - 1
end




def valid_move?(board, index)
   if !position_taken?(board, index) && index.between?(0,8)
      true
else
  false
end
end



def turn(board)
  puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)


 if valid_move?(board, index) == true
   move(board, index, char = "X")
   display_board(board)
else
  loop do
    turn(board)
break
end
end
end
