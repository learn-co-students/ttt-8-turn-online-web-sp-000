def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  elsif position_taken?(board, index) == true
    "That space is already taken."
    return false
  elsif position_taken?(board, index) == false
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

def input_to_index(input)
return (input.to_i - 1)
end

def move(board, index, character = "X")

  def update_array_at_with(array, index, value)
  array[index] = value
  end

  update_array_at_with(board, index , character)

  return board
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board, index) == false
      puts "That space is not available."
      turn(board)
    else
      move(board, index, character = "X")
      display_board(board)
    end
end
