
# HELPER METHODS

# prints out the current state of the board for the user
def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  line = "-----------"

  puts row1
  puts line
  puts row2
  puts line
  puts row3
end

# returns true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token
def valid_move?(board, i)
  if position_taken?(board, i) == false && i.between?(0,8) == true
    return true
  else
    return false
  end
end

# checks if the chosen index is occupied
def position_taken?(board, i)
  if board[i] == " " || board[i] == "" || board[i] == nil
    return false
  elsif board[i] == 'X' || board[i] == 'O'
    return true
  end
end

# returns the users's raw input as index
def input_to_index(input)
  num = input.to_i - 1
  num
end

# sets the correct index value of the position within the board equal to the token
def move(arr, i, char = "X")
  arr[i] = char
  arr
end

# evaluates whether the move is valid, makes the move if yes, asks for input if not
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  isvalid = valid_move?(board, index)

  if isvalid == true
    move(board, index)
    display_board(board)
  else
    puts "Sorry, invalid character :("
    turn(board)
  end
end
