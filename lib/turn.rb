def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def input_to_index(input)
  input = input.to_i
  input - 1
end

def valid_move?(board, index)
  if index.between?(0, 8) == false
     return false
   else if 
     board[index] == "X" || board[index] == "O" 
     return false;
     # if space is taken by x or by o, return false 
   else
      return true;
   end 
end 
end


def move(board, index, player)
  board[index] = player
end 
 
 def current_player(board)
  turn_count(board) % 2 == 0? "X" : "O"
end

def turn_count(board)
  counter = 0
  board.each {|space|
    if space == "X" || space == "O"
      counter += 1   
    end
  }
  counter
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, current_player(board))
    display_board(board)
  else 
    turn(board)
  end 
end 

  
