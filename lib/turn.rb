def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  index = input_to_index(input)
    if valid_move?(board, index)&&index.between?(0,8)
      move(board, index)
      display_board(board)
    else
      turn(board)
    end
end

def move(board, index, token = "X")
  board[index] = token
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.to_i 
  if position_taken?(board, index) == false && index.between?(0,8)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)

    if board[index] == " "||board[index] == ""||board[index] == nil 
     false
    elsif board[index] == "X"||board[index] == "O"
     true
    end
end

def input_to_index(input)
   input.to_i - 1
end

