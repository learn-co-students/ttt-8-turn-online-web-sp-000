

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
if board[index] == " " || board[index] != board[index]
    return true
  else 
     return false 

end

end

  
def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board,display_board,char = "X")
  board[display_board] = char 
   return board
  
  end
  
def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

 

  
  