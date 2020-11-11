def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = (user_input.to_i) - 1
end

def move(board, user_input, character = "X")
   board[user_input] = character
end

def valid_move?(board, index)
  if !position_taken?(board, index) && (index).between?(0,8)
    return true
  else
    return false
  end
end

def position_taken? (board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  user_input.to_i-1
  if valid_move?(board, index)
     move(board, index, character = "X")
     display_board(board)
    else
     turn(board)
  end
end
