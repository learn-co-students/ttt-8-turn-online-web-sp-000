board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#Shows the current state of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Converts user input into the appropriate array index
def input_to_index(user_input)
  return user_input.to_i - 1
end

#Confirms that the players move is infact a valid move
def valid_move?(board, index)
  if index.between?(0,8)  && !position_taken?(board, index)
    true
  else
    false
  end
end

#Checks to see if a position already has a token
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

#Makes a valid move
def move(board, index, player = "X")
  board[index] = player
end

#One full turn of TTT 
def turn(board)
  puts "Please enter 1-9:"

  user_input = gets.chomp
  index = input_to_index(user_input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
