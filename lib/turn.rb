board= [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, user_input, value="X")
array[user_input]=value
end

def valid_move?(board, index)
  if index.between?(0,8)
    if position_taken?(board, index)
      return false
    else
      return true
    end
  else
    return false
  end
end


def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input= gets.strip
    index= input_to_index(user_input)
    if valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
    else
      turn(board)
    end
  end
