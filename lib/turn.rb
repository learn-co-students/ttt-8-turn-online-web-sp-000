#Tic Tac Toe board aligned with the 'board' array index
def display_board(marker)
  puts " #{marker[0]} | #{marker[1]} | #{marker[2]} "
  puts "-----------"
  puts " #{marker[3]} | #{marker[4]} | #{marker[5]} "
  puts "-----------"
  puts " #{marker[6]} | #{marker[7]} | #{marker[8]} "
end

#is theplayers move valid? - Tested against valid index number and ensuring space isn't taken.
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

#Helper method for valid_move? method
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

# convert gets move number to an int and apply that to the array, with default value X
def input_to_index(input)
  input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  valid_move = valid_move?(board, index)
  if valid_move == true
    move(board,index)
    puts display_board(board)
  else
    until valid_move == true
      turn(board)
      break
    end
  end
end
