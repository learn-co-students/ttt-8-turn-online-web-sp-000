def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

def position_taken?(board, index)
board[index] != " "
end

def valid_move?(board, index)
 if index.between?(0, 8)
   if !position_taken?(board, index) 
     true
   end
 end
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  #get input
user_input = gets.strip
#convert input to index
index = input_to_index(user_input)
#if index is valid
if valid_move?(board, index)
#  make the move for input
move(board, index, character = "X")
display_board(board)
#else
else
#  ask for input again until you get a valid input
turn(board)
#end
end
end

