def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end

def move(array, index, character = 'X')
  array[index] = character
end
def position_taken?(board,index)
 if board[index] == " "
   false 
   elsif board[index] == ""
   false 
   elsif board[index] == nil 
   false 
 else board[index] == "X" || "O"
   true
 end
end

def input_to_index(input)
  integar = input.to_i 
  result = integar - 1 
  return result
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character = 'X')
    display_board(board)
 else
   turn(board)
  end 
end