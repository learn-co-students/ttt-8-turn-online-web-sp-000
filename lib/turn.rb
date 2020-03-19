# code your #valid_move? method here
def valid_move?(board, index)
  if (index < 0 || index > 8)
    return false
  else
    return !position_taken?(board, index)
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  converted_input = user_input.to_i
  output = converted_input - 1
end

def move(current_board, index, x_or_o = "X")
  current_board[index] = x_or_o
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip.to_i
  user_index = input_to_index(user_input)

  # until the user's input is valid, keep running the test
  until valid_move?(board, user_index)
    puts "Not a valid user input."
    user_index = input_to_index(gets.strip.to_i)
  end

  move(board, user_index)
  display_board(board)
end
