# Displaying the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
################################################################################
def input_to_index(input)
  index = "#{input}".to_i - 1 #to_i will convert string to integer
end
################################################################################
valid_move = nil
def valid_move?(board, index)
  # return true if move valid, false or nil if not valid
  if (index >= 0 && index < 8 && position_taken?(board,index) == false) || (index < 8 && index > 0 && board == [" ", " ", " ", " ", " ", " ", " ", " ", " "])
    valid_move = true
  else
    valid_move = false
  end
end
################################################################################
def position_taken?(board,index)
   board[index] == " " || "" || nil # false
   (board[index] == "X") || (board[index] == "O") # true
end
################################################################################
def move(board, index, value = "X")
  board[index] = value
end
################################################################################
def turn(board)
  puts "Please enter 1-9:" # ask for input
  input = gets.strip # get input from user
  # convert input to index
  index = input_to_index(input)
  # if index is valid
  if valid_move?(board, index) == true
  # make the move for index
    move(board,index,"X")
  # show the board
    display_board(board)
  else
  # ask for input again until you get valid input
    puts "Please enter a valid position"
    input = gets.strip
  end
end
