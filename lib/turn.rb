def valid_move?(board, number)
#     if index.between?(0,8) && !position_taken?
#     return true 
#     end 
#     position_taken(board, index)
 end



def position_taken?(board, index) 
  if board_index = "X" || board_index = "O"
    return board(index)
  end 
     turn(board)
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
  # board[index] = value 
  # display_board(board)
end 


def turn(board)
  # puts "Please enter 1-9" 
  # input = gets.chomp  
  # number = input_to_index(input)
  # valid_move?(board, index) 
 end   
 
 
 #adam weissman 
