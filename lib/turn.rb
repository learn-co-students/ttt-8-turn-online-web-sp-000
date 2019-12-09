def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if input.to_i.between?(1, 9)
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
      puts "Sorry, that is not a valid move"
    end
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index].nil? || board[index].strip == ""
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
  array
end