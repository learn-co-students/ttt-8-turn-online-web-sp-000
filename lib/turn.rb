def display_board(board=[" ", " ", " ", " ", " ", " ", " ", " ", " ", ])

puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input = input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board, index)
  if (position_taken?(board, index) == false) && (on_board?(index) == true)
    return true
  else
    return false
  end
end


def on_board?(num)
  if num.between?(0, 8)
    return true
  else
    return false
  end
end

def move(board, input, character="X")
board[input] = character
display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  input = input_to_index(num)
  if valid_move?(board, input)
    move(board, input)
  else
    turn(board)
  end
end
