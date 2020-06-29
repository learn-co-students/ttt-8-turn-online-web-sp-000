
def turn(board)
# ask for input
puts "Please enter 1-9:"
# get input
input = gets.strip.to_i
# convert input to index
index = input_to_index(input)
# if index is valid
  if valid_move?(board, index) == true
    # make the move for index
    move(board, index, "X")
    # show the board
    display_board(board)
  else
    # ask for input again until you get a valid input
    puts "Invalid move, please try again."
    turn(board)
  end
end


#code turn progam here

#generate and display the current board
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# convert the input of the user (spots 1-9) to the index values for the board
def move(array, index, value = "X")
  array[index] = value
end

# determine if the entered move is a valid move
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

#determine if the current position on the board is already taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == "  "
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

#convert user input to index
def input_to_index(user_input)
  user_input.to_i - 1
end
