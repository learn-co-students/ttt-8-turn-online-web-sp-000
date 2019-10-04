require 'pry'
def display_board(board)
         puts " #{board[0]} | #{board[1]} | #{board[2]} "
         puts "-----------"
         puts " #{board[3]} | #{board[4]} | #{board[5]} "
         puts "-----------"
         puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#convert to Num
    def input_to_index(user_input)
      index = user_input.to_i - 1
      index
    end
  
#VERIFY
    def valid_move?(board, index)
    #return true if index is in range of 0-8 
      if index.between?(0,8) && board[index] == " "
         return true
      end
    end
    
#Movement
  def move(board, index, token = "X")
   
    # set correct index value of position within board = to token.
    board[index] = token
    token
  end
  
  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)
    
      if valid_move?(board, input) == true
       
          move(board, input, token = "X")
          else 
            turn(board)
       end
     display_board(board)
  end
    



  
  
  
  
  
  
  
  
  
  
  
  