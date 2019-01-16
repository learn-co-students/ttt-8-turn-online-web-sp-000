def display_board(board=[])
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
  
def valid_move?(board,index)
index.between?(0,8) && !position_taken?(board,index)
end
  
def move(board,position,value="X")
board[position] = value
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == " "  
    false
  elsif board[index] == ""
    false
  else  
    false
  end
end

def input_to_index(user_input)
  user_input.to_i-1
end

def turn(board)
  puts "Please enter 1-9:"
  answer = gets.strip
  response_index = input_to_index(answer)
  if valid_move?(board,response_index)
    move(board,response_index,value="X")
  else 
    puts "This is not valid"
    turn(board)
  end
   display_board(board)
end