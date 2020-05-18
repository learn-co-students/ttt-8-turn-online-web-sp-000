def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
return user_input.to_i - 1
end

def move(array, index, value = "X")
array[index] = value
return array
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0,8)
    return !position_taken?(board, index)
  else  
    return FALSE
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(b, i)
  if b[i] == " " || b[i] == "" || b[i] == nil
    return nil
  else
    return TRUE
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board,index)
  else
    turn(board)
  end
  display_board(board)
end
