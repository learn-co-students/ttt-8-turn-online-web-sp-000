def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
   turn(board)
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(user_input)
  user_input = user_input.to_i
  index = user_input - 1
end

def try_again(input)
  input = gets.strip
  input = input.to_i
  index = input - 1
end



# code your #valid_move? method here


def valid_move?(board, index)
  if ((position_taken?(board, index) == false) && (index.between?(0,8) == true))
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.


def position_taken?(board, index)
  if (board[index] == "X" || board[index] ==  "O")
    return true
  elsif (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
