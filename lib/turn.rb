def valid_move?(array, index)
  if index.between?(0,8) && !position_taken?(array,index)
    true
  else
    false
  end
end

def position_taken?(array, i)
  if array[i] == " " || array[i] == "" || array[i] == nil
    false
  elsif array[i] == "X" || array[i] == "O"
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  index = num.to_i - 1
end

def move(array, index, player = "X")
  array[index] = player
  puts index
end

def turn(board)
  puts "Please enter 1-9:"
  player_move = input_to_index(gets.strip)
  if valid_move?(board, player_move);
    move(board, player_move)
    display_board(board)
  else
    turn(board)
  end
end