board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(player_input = "1")
  player_input = player_input.to_i
  player_input_sub = player_input - 1
end


def move(board, player_input_sub, player_character = "X")
  board[player_input_sub] = player_character
end

def valid_move? (board, index)
  if position_taken?(board, index) == true
    return false
  elsif position_taken?(board,index) == false
    return true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if index.between?(0,8) != true
    return true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  player_input_sub = input_to_index(input)
  if valid_move?(board, player_input_sub) == false
    puts "Please enter 1-9:"
    input = gets.strip
  else  
    move(board,player_input_sub)
    display_board(board)
  end
  
end