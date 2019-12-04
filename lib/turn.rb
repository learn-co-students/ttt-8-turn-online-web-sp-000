#print out current state of board for the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts user input to an int and makes sure it fits correctly into an array with 9 elements
def input_to_index(input)
  input.to_i - 1
end

#Checks if the user input is a valid move or not
def valid_move?(board,index)
  #return true for valid position on empty board (between 0-8)
  if index.between?(0,8) && position_taken?(board,index) == false
    return true
  else
    return false
  end
end

#Checks if the user input has already been entered
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

#Sets the correct index value of position within the board equal to the token
def move(board, index, character = "X")
  board[index] = character
end


def turn(board)
  puts "Please enter 1-9:"
  #get input from user
  input = gets.strip
  #Converts input from user to index
  index = input_to_index(input)
  #If input is valid
  if valid_move?(board, index) == true
    #Make the move for input
    move(board, index, character =  "X")
    #Diplsay current board
    display_board(board)
  else turn(board)
  end
end
