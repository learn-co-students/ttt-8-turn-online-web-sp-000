def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end
end


def position_taken?(board, index)
  cell = board[index]
  
  if cell == " "
    return false
    
  elsif cell == ""
    return false
      
  elsif cell == nil
    return false
       
  else cell == "X" || "O"
    return true
  end
end


def input_to_index(value)
  value.to_i - 1 
end


def move(board, index, value = "X")
  board[index] = value
  
  board
end


def turn(board)
  valid_move_made = false
  
  until valid_move_made do
    puts "Please enter 1-9:"
    
    move_index = input_to_index(gets)
    
    if valid_move?(board, move_index)
      display_board(move(board, move_index))
      valid_move_made = true
    end
  end
end


