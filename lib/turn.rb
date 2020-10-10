
def turn(board)
# ask for input
  puts "Please enter 1-9:"
# #get input
  user_input = gets.strip
# #convert input to index 
  index = input_to_index(user_input)
#check to see if the move is valid 
  if valid_move?(board,index) == true
#show the board
# #define the move method
    move(board, index)
   display_board(board)
 else
# #ask for input again until you get a valid input by running turn again
  turn(board)
  end 
end



#--------------------------------------------------------
def move(board, index_board_array, character = "X")
  board[index_board_array] = character
end
#--------------------------------------------------------
def input_to_index(user_input)
  user_input.to_i - 1
end
#--------------------------------------------------------
def valid_move?(board,index)
    if index.between?(0,8) && position_taken?(board,index) == false
        true
    else 
        false
    end
end
#--------------------------------------------------------
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end
#--------------------------------------------------------
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

