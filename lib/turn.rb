
def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
# convert input to integer and subtract 1.
  input.to_i - 1
  # users count from 1, Ruby from 0
end

#valid_move?
def valid_move?(board, index)
  if !position_taken?(board, index) && (index).between?(0,8)
    true
  else
   false
  end
end
def position_taken?(board, index)

  if board[index] == " " || board[index] == "" || board[index] == nil
  	false
  else
   true
 end
end
#move allows "X" player in the bottom right and "O" in the top left
def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
     userInput = gets.strip
    # gets input and calls input_to_index
    index = input_to_index(userInput)
    if !valid_move?(board, index)
      # asks for input again after a failed validation
      turn(board)
    else # makes valid moves
      move(board, index, character = "X")
    end
  display_board(board)
end

   #displays a correct board after a valid turn
