def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  input -= 1
  return input
end

def position_taken?(board, index)
  if (board[index] === " " || board[index] === "")
    return false
  elsif (board[index] === nil)
    return false
  elsif (board[index] === "X" || board[index] === "O")
    return true
  end
end

def valid_move?(board, index)
  if (index <= 8 && index >= 0 && !(position_taken?(board, index)))
    return true
  else
    return false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  validated_input = input_to_index(input)
  if (valid_move?(board, validated_input))
    move(board, validated_input)
    display_board(board)
  else
    unless (valid_move?(board, validated_input))
      puts "Please enter 1-9:"
      input = gets.strip

      validated_input = input_to_index(input)
    end
    display_board(board)
  end
end
