def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end


# code your #valid_move? method here
def valid_move?(board, index)
  if index >= 0 && index <= 8 && !position_taken?(board, index)
    return true 
  else 
    return false 
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == 'X' || board[index] == 'O'
    return true 
  else
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

# code your input_to_index and move method here!
def input_to_index(user_input)
  (user_input.to_i) -1 
end

def move(array, index, character = 'X')
  array[index] = character
end

# code the #greeting method here!
def greeting(name)
  puts "Hello #{name}. It's nice to meet you."
end
