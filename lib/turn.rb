
# Define display_board that accepts a board and prints
# out the current state.


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if (index < 0) || (index > 8)
    return false
  elsif position_taken?(board, index)
    return false
  elsif (index >= 0) && (index <= 8)
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || "O"
    return true
  end
end



# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i
  index -= 1
end

def move(board, index, value = "X")
    board[index] = value

end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = 0
  input_to_index(input)
  index = input.to_i
  index -= 1

  if valid_move?(board, index)
    move(board, index, value = "X")
    display_board(board)
  else
    turn(board)
  end
end
