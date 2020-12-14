#defining the turn method using the helper methods defined below

def turn(board)
  #asking the user for their input
  puts "Please enter 1-9:"
  #the gets method actually *gets* the user input
  input = gets
  
  #now calling the input_to_index method to convert the input to an integer and to the proper ruby index equivalent
  index = input_to_index(input)
  if valid_move?(board, index) == true
    #calling the move index
    move(board, index)
  else
    turn(board)
  end
  
  display_board(board)

end

# Define display_board that accepts a board and prints
# out the current state.
def display_board(board = [" "," "," "," "," "," "," "," "," "])
  row_one = " #{board[0]} | #{board[1]} | #{board[2]} "
  dashes = "-----------"
  row_two = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_three = " #{board[6]} | #{board[7]} | #{board[8]} "
  puts row_one
  puts dashes
  puts row_two
  puts dashes
  puts row_three
end

#defining the input_to_index method
def input_to_index(input)
  index = input.to_i - 1
end


#move method
def move(board, index, character = "X")
  board[index] = character
end


#valid_move? method 
def valid_move?(board, index)
  #this first if statement is checking if the index is on the board and if the position has been taken
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  elsif index > 9 || index < 0
    false
  elsif position_taken?(board, index) == true
    false
  end
end


# defining #position_taken? method so that it can be used in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end
