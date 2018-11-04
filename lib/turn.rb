



def turn(board)

  
  puts "Please enter 1-9:"
  
input = gets.strip

index = input_to_index(input)

if valid_move?(board, index)
  move(board, index)
 
else
  puts "sorry invalid move, try again"
  turn(board)
end
 display_board(board) 
end



# display_board(board)

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# input_to_index(input)

def input_to_index(input)
 input.to_i-1
end

#valid_move?

def valid_move?(board, index)
  if position_taken?(board, index) && index.between?(0,8)
    true
 else
    false
  end

end

#position_taken?

def position_taken?(board, index)

  if board[index] == " " || board[index] == "" || board[index] == nil
    true
  else
    false 
  end
end


#move

def move(board, index, character = "X")
  
  board[index] = character
end

  
=begin 
  
ask for input
get input
convert input to index
if index is valid
  make the move for index
  show the board
else
  ask for input again until you get a valid input
end
end


  
=end 
