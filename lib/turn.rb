# Checks to see if the spot on the board is taken
def position_taken?(board, index)
  if board[index] == "" || board [index] == " " || board[index] == nil
    return FALSE
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

# Returns true if it is a valid ttt move
def valid_move? (board,index)
  if index.between?(0,8) && position_taken?(board, index) == false
    return true
  
  else
    return false
  end
end

# Displays the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Returns correct input after converting input to board index
def input_to_index (input)
 index = input.to_i;
 index - 1
end

# Modify Board Array
def move (board, index, player = "X")
  board[index] = player
end

# Execute one turn of ttt
def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  until valid_move?(board, index)
    puts "Invalid Input. Please try again"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board,index)
  display_board(board)
end
  