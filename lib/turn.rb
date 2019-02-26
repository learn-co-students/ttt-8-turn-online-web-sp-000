def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i-1
  
 end


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def move(board, index, value = "X")
 board[index] = value
end
 
move(board, 0, "X")
# The element at index 0 of array 'board' is set to the value "X"
board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]

move(board, 8)

# code your #valid_move? method here
def valid_move?(board, index)
   if position_taken?(board, index)
    return false
    elsif index.between?(0, 8) == false
      return false
  else 
    return true
  
  end
  end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  return false if board[index] == " "
  return false if board[index] == ""
  return false if board[index] == nil
  return true if board[index] == "X" || "O"
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


 

