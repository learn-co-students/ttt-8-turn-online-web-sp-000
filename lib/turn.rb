def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def update_array_at_with(array, index, value)
  array[index]=value
  return array
end

def move(board, index, char)
  update_array_at_with(board, index, char)
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end


def valid_move?(board, index)
  if position_taken?(board,index) || index < 0 || index > 8
    return false
  elsif !position_taken?(board, index)
    return true
  end
end


def turn(board)
  puts "Please enter 1-9:"
  user_input= gets.strip
  index = input_to_index(user_input)
  if  valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

