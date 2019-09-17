def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  input2 = input.to_i
input3 = (input2 - 1)
end

def move(board, input3, value = "X")
board[input3] = value
end

def greeting
puts "Welcome to Tic Tac Toe"
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while valid_move?(board, index) == false
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
end
    move(board, index)
    display_board(board)
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
     true
  else
     false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)

  if board[index] == " "
     false
   elsif board[index] == "" || board[index] == nil
     false
else
     true
  end
end
