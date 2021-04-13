def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board,index,token = "X")
  board[index] = token
  display_board(board)
end


def input_to_index(input)
   index = input.to_i - 1 
end


def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken?(board,index) == false 
    return true
   elsif index.between?(0,8) == true && position_taken?(board,index) == nil
    return true 
  else
    return false
  end
end
    

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
     return false
  elsif board[index] == "X" || board[index] == "O" 
    return true 
  end 
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  index = input_to_index(input)
  
  if valid_move?(board,index) == true 
    move(board,index,token = "X")
  else
    until valid_move?(board,index) == true
    puts "Please enter 1-9:"
    input = gets.strip.to_i
    index = input_to_index(input)
     end
   end
 end
 
