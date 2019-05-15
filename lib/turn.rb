  #display the game board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

  #validate between range of options
def valid_move?(board, index)
  if index.between?(0,8) && position_taken(board, index)
    return true 
  
  else
    false 
  
    end
end

  #confirm position to be empty
def position_taken(board, index)
  if board[index] == "" || board[index] == " "
    return true 
    
  else if board[index] == "X" || board[index] == "O" || board[index] == "nill"
    return false 
  
  else 
    false
  
  end
    end
      
end

  #move value to board
def move(board, index, value = "X")
  board[index] = value
  
end

  #input to valid index
def input_to_index(input)
  index = input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) 
    move(board, index)  
    display_board(board)
  else 
    turn(board)
  end
  
  
end