def input_to_index(index)
  index = index.to_i - 1
  #for testing purposes
#  puts "You have chosen #{index} as your space"
  return index
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (index > 8 || index < 0)
    #for testing purposes
  #  puts "Out of range"
    return false
  else
    if (board[index] == " " || board[index] == "")
      return true
    else
      # for testing purposes
    #  puts "Taken space"
      return false
    end
  end
end

def move(board, input, player = "X")
  board[input] = player
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if (valid_move?(board, index))
    move(board, index)
  else
    turn(board)
  end
end
