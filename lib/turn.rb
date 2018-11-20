def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
index = input.to_i - 1
end

def valid_move?(board, index)
index.between?(0, 8) && !position_taken?(board, index)

end

def position_taken?(board, index)
  board[index] == 'X' || board[index] == 'O' ? true : false
end

def move(board, index, value='X')
 board[index] = value
end


def turn(board)
  puts "Please enter 1-9:" # ask user for input
  input = gets.strip #get user input
  index = input_to_index(input) # sets index to method who convert input to index
   if valid_move?(board, index) == true # validates input, if true move and display board
    move(board, index, value='X') #make the move for index
    display_board(board) #show the board
  else
  turn(board)# if validation fails start over
  end
end
