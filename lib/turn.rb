def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip

    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
      break
    end
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
  (input.to_i) - 1
end

def move(board, index, player_char = "X")
  board[index] = player_char
end

def valid_move?(board, index)
  if index < 8 && index >= 0
    if position_taken?(board, index)
      return false
    else
      return true
    end
  else
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else
    return true
  end
end
