def turn(board)
  puts "Please enter 1-9" 
  input = gets.chomp  
  input_to_index(input)
 end   


def valid_move?(board, number)
    if index.between?(0,8) && !position_taken 
    position_taken 
  else  turn(board)
 end
 end 



def position_taken?(board, number) 
  if board_number = "X" || board_number = "O"
     turn(board)
   else display_board(board)
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
  if (1..9) cover?(input)
then index = string - 1 
  else 
    puts "invalid"
    turn 
    
#   if (1..9).cover?(input)
#     puts "invalid" 
#   else string = number.to_i 
#     index = string - 1 
#   end 
# end   
 

def move(board, index, value = "X")
  board[index] = value 
  display_board(board)
end 



 
 
 #adam weissman 
