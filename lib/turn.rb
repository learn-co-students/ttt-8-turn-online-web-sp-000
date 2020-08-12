# Displays the board for the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Decides whether a user's move is valid
def valid_move?(array, index)
  if index > 8 || index < 0
    return false
  else if position_taken?(array, index) == false
    return true
  else
    return false
  end
end
end

# Decides whether a position on the board is already occupided
def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    return false
  else if array[index] == "X" || array[index] == "O"
    return true
  end
  end
end

# Changes the user input to an array index
def input_to_index(input)
  input.to_i - 1
end

# Defines the user's turn choice
def move(array, index, character = "X")
  array[index]= character
end

def turn(board)
  puts "Please enter 1-9:"
  #get input
  input = gets.strip
  #convert input to index
  index = input_to_index(input)
  #if index is valid
  if valid_move?(board, index) == true
    #make the move for input
    move(board, index, character = "X")
    display_board(board)
  else if valid_move?(board, index) == false
    puts "Invalid"
    turn(board)
  end
  end
end
