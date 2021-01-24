#everything's gonna go in helper_method

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[06]} | #{board[7]} | #{board[8]} "
end 


def input_to_index(user_input)
  user_input.to_i - 1
end 


def move(board, index, value = "X")
  board[index] = value 
end 


def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end 


def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end


def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.chomp 
    index = input_to_index(user_input)
    if valid_move?(board, index)
      puts "valid"
      move(board, index, value = "X")
    else 
      turn(board)
    end 
    print display_board(board)
end