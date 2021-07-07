#Displays the tic-tac-toe board and assigns each space to an array element
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Converts users input to an int that is used for the array index
def input_to_index(input)
  input.to_i - 1
end

#Checks to see if a position on the board is not taken
def position_taken?(board, index)
    board[index] == " " || board[index] == "" || board[index] == nil ? false : true
end

#Checks to ensure the player move is valid by ensuring the position isn't taken and their input matches array indicies 0 - 8.
def valid_move?(board, index)
  position_taken?(board, index) == false && index.between?(0, 8) ? true : false
end

#Updates the array with a move from the player
def move(board, index, player_character = "X")
  board[index] = player_character
end

#A players turn that accepts input for board position they want to play assigned to variable 'input'. Turns that str input into an int thats used as the array indicies via #input_to_index helper method. If the #valid_move helper method is true, call the #moev helper method to update the array with the players move and then display the updated game board. If the #valid_move is false, until its true use recursion to call the #turn method again. A break is placed to ensure it doesn't infinite loop calling #turn.
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    until valid_move?(board, index) == true
      turn(board)
      break
    end
  end
end
