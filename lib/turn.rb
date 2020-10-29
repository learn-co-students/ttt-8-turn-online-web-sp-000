board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
def valid_move?(board, index)
  index = 0  
  # if index = " " || index = "" || index = nil
  #   return true
  # end 
  # if board[index] = "X" || board[index] = "O" 
  #   return false 
  #   turn(board) 
  # end  
  if index.between?(0,8)
    position_taken?(index) 
   end
end 



   
def position_taken?(index) 
  # if board[index] = " " || board[index] = "" || #board[index] = nil 
  #   return false  
   
  if board[index] = "X" || board[index] = "O"
    return true 
  end 
 end 
 

 def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
   
  
  
  
def input_to_index(input)
  if (1..9).cover?(input)
    puts "invalid" 
    else string = input.to_i 
    index = string - 1 
 end 
end   
 



def move(board, index, value = "X")
  board[index] = value 
  display_board(board)
end 


def turn(board)
  puts "Please enter 1-9" 
  input = gets.chomp  
  input_to_index(input)
  valid_move?(board, input) 
 end   
 