def turn(board) 
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  check = valid_move?(board,index)
  value = "X"
    
    if check == true
      move(board,index,value)
      display_board(board)
    else
      turn(board)
    end
    
end



# Helper Methods below


def input_to_index(num)
  num.to_i - 1
end

def move(array, index, value="X")
  array[index] = value
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
 if position_taken?(board,index)
   return false
 elsif index.between?(0,8)
   return true
 end
end


def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == "" || board[index] == " " || board[index] == nil
    return false
  end
end