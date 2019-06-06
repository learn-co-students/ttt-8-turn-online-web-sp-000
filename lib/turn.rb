def move(board,index,token="X")
  index=index.to_i
  board[index]=token
end
  
def turn(board)
  puts "Please enter 1-9:"
  index=gets.chomp
  index=input_to_index(index)
  if valid_move?(board,index)==TRUE
    move(board,index)
    display_board(board)
  elsif valid_move?(board,index)==FALSE
    puts "Re-enter a valid position"
    index=gets.chomp
    index=input_to_index(index)
  end
end

def display_board(board)
  puts " "+board[0]+" | "+board[1]+" | "+board[2]+" "
  puts "-----------"
  puts " "+board[3]+" | "+board[4]+" | "+board[5]+" "
  puts "-----------"
  puts " "+board[6]+" | "+board[7]+" | "+board[8]+" "  
end
 
def input_to_index(index)
  index=index.to_i-1
end

def position_taken?(board,index)
  index=index.to_i
  if board[index]==" "
    return FALSE
  else
    return TRUE
  end
end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index) == FALSE
    return TRUE
  else 
    return FALSE
  end
end