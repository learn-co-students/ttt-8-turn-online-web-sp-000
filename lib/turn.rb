board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    index = 0  
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    return false 
  elsif board[index] = "X" || "O"
  return true 
 end
end   


def valid_move?(board, index)
  if not index.between?(0, 8)
    then return false
    else puts "This is an invalid move"
      
    if board[index] = " " || board[index] = "" || board[index] = nil
      return true
      elsif board[index] = "X" || "O"
        return false
        puts "That position is already taken"
    end 
    def turn(board)
  end 
end 
end 

def display_board(board)
  puts "# {board[0]} | # {board[1]} | # {board[2]}"
  puts "-----------"
  puts "# {board[3]} | # {board[4]} | # {board[5]}"
  puts "-----------"
  puts "# {board[6]} | # {board[7]} | # {board[8]}"
end  

  
def input_to_index(input)
  if (1..9).cover?(input)
    puts "invalid"
    def turn(board)
    end 
    else string = input.to_i 
    index = string - 1 
  end 
end   



def move(board, index, value = "X")
  board[index] = value 
end 


def turn(board)
  puts "Please enter 1-9:"
end  



  