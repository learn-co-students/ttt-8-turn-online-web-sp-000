def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} " #row1
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} " #row2
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} " #row3
  puts
end

def input_to_index(user_input)
  return user_input = user_input.to_i - 1
end

def valid_move?(board,index)
 if index.between?(0,8) && position_taken?(board,index) != true
   true
 else
 end
end

def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    true
  else
  end
end

def move(array,index,value='X')
 return array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index,"X")
    display_board(board)
  else
    turn(board)
  end
end
