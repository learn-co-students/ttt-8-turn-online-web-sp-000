def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index <= 8 && index >= 0
    if board[index] == " " || board[index] == "" || board[index] == nil
      true
    end
  else board[index] == "X" || board[index] == "O"
    false
  end
end


def input_to_index(user_input)
  converted_input = user_input.to_i
  index = converted_input - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board, index) == true
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board, index)
  puts "+Please enter 1-9:"
  display_board(board)
end
