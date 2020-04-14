#ask for input

#get input

#convert input to index

#if index is validation
  #make the move for index
  #show the board
#else
  #ask for input again until valid input
#end


#----------------------#

#test variables
test_board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
test_move = 4

#welcoming the user
def welcome
  puts "Hello there! Welcome to Tic-Tac-Toe!"
end

#ask for the user's move
def ask_move
  puts ("Please enter 1-9:")
  return gets.strip
end

#display board method
def display_board(board)
  row = "-----------"

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#convert input to index
def input_to_index(input)
  return input.to_i - 1
end

#validate move method
def valid_move?(board, index)
  if (index >= 0 && index <= 8)
    if (position_taken?(board, index) == false)
      return true
    elsif (position_taken?(board, index) == true)
      return false
    end
  else
    return false
  end
end

#position taken
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  elsif (board[index] == "X" || board[index] == "O")
    return true
  end
end

#defines the player's turn
def turn(board)
  input = ask_move
  index = input_to_index(input)
  if (valid_move?(board, index) == true)
    move(board, index)
  elsif (valid_move?(board, index) == false)
    puts "This is not a valid move."
    return false
    while (turn(board) == false)
      return false
      turn(board)
    end
  end
end

#move the piece
def move(board, index, token="X")
  board[index] = token
  display_board(board)
end
