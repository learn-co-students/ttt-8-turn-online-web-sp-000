board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "   
  puts "-----------"  
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input) 
  #(1..9).include?(user_input)
number = user_input.to_i 
index = number - 1
end  


 def valid_move?(board, index)
  if index.between?(0,8)
    if !position_taken?(board, index) 
      true 
    end
  end
end 

 
 
def position_taken?(board, index)
 if board[index] == " " || board[index] == "" 
   false 
 else
   true 
 end 
 end 
 
 
def move(board, index, value = "X")   
  board[index] = value   
end 



def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.chomp   
    index = input_to_index(user_input) 
 if valid_move?(board, index) 
   move(board, index)
   display_board(board)
 else 
   turn(board) 
  end  
end 
