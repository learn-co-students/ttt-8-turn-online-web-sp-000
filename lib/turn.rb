# displays the current board 
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# changes the player input number to an index array number
def input_to_index(index)
  index.to_i - 1 
end

# ensures the move is valid by making sure the value is on the board and making sure there is not a move already in that position 
def valid_move?(board, index)
  if index.between?(0,8) && board[index] != "X" && board[index] != "O"
    return TRUE
  end
end

# moves the player to that position in the index of the array, default being "X"
def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  
  if valid_move?(board,index)
    move(board,index, player = "X")
    display_board(board)
  else 
    turn(board)
  end
end 



#######################################################
# below is copy paste to compare from past labs #
# make sure to delete when complete with lab #
#######################################################
'

'