def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(userInput)
  index = userInput.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return false
  end
  if board[index] == " " || board[index] == ""
    return true
  end

end

def turn (board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
