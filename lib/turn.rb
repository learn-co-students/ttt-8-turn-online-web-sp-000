def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
end

def move(board, index, character = "X")
  def update_array_at_with(array, index, value)
    array[index] = value
  end

  update_array_at_with(board, index, character)
  board
end

def valid_move?(board, index)
  if (index > 8 || index < 0)
    return false
  else
    if position_taken?(board, index)
      return false
    else
      return true
    end
  end
end

def position_taken?(board, index)
  if ((board[index] == " ") || (board[index] == "") || (board[index] == nil))
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"

  x = gets.strip
  y = input_to_index(x)

  if valid_move?(board, y)
    move(board, y, character = "X")
    display_board(board)
  else
    #while !valid_move?(board, y)
      puts "Please enter 1-9:"
      x = gets.strip
    #end
    display_board(board)
  end
  #turn(board)
end
