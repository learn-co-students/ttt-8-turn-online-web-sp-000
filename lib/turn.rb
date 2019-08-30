def  display_board(board) 
  print " #{board[0]} | #{board[1]} | #{board[2]} "
  print "-----------"
  print " #{board[3]} | #{board[4]} | #{board[5]} "
  print "-----------"
  print " #{board[6]} | #{board[7]} | #{board[8]} "
end   

def input_to_index(user_input)
  user_input.to_i - 1 
end   

def valid_move?(board, index)
  if index < 0 || index > 8
  false 
  else
    board[index] == " "
  end 
end   

def move(board, index, token = "X")
  board[index] = token 
end   
  
def turn(board, token = "X") 
  puts "Please enter 1-9:"
  user_input = gets 
  index = input_to_index(user_input)
  if valid_move?(board, index) 
    move(board, index, token) 
    display_board(board)
  else 
    user_input
    turn(board, token) 
  end   
end   