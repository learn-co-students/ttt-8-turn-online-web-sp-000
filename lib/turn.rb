def valid_move?(board,index)
  index.between?(0,8) && !(position_taken?(board,index))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  !(board[index] == " " || board[index] == "" || board[index] == nil) ?
  true : false
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
index = user_input.to_i - 1          #convert to integer and covert to index
return index                         #return index for use in other methods
end

def move (board,index,value = "X")
board[index] = value                   #set the value of the board's index to X
end

def turn(board)
puts "Please Enter 1-9:"
user_input = gets.strip 
input_to_index(user_input)
if valid_move?(board,index) || !position_taken?(board,index)
  move(board,index,value = "X")         #move function call, set default value variable
  display_board(board)                  #display changed board
else
  puts "Please enter a valid input"
  turn(board)
end
end
