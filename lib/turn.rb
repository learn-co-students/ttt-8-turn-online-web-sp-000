def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, char = "X")
  board[position] = char
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil || board[index] == "  "
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
  if index > 8 || index < 0
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end

def turn(board)
  counter = 0
  while counter < 1
    puts "Please enter 1-9:"
    user_input = input_to_index(gets.strip)
    
    if valid_move?(board, user_input)
      move(board, user_input)
      display_board(board)
      counter += 1
    end
  end
end
