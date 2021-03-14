
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(array, index, current_player)
  array[index] = current_player
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def turn_count(board)
  turn = 0
  board.each do |index|
    if index == "X" || index == "O"
      turn += 1
    end
  end
end

#Asking the user for their move by position 1-9.
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  input = input_to_index(user_input)
  if valid_move?(board, input)
    move(board, input, character = "X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    user_input = gets.chomp
    input = input_to_index(user_input)
  end
end
#Receiving the user input.
def input_to_index(user_input)
 input = user_input.to_i - 1
 input
end
#Convert position to an index.
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
#If the move is valid, make the move and display the board to the user.
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end
#If the move is invalid, ask for a new move until a valid move is received.
