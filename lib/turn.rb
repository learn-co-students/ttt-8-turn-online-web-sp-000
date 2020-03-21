def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  num = input.to_i
  final = num - 1
  final
end


index = input_to_index("5")

def move(board, index, move = "X")
  board[index] = move
end


def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O" || index > board.length() || index < 0
    false
  else
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

board = [" ", " ", " ", " ", "X", " ", " ", " ", " "]
index = 0
valid_move?(board, index)
