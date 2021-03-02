
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


def player(board)
   turn_count(board) % 2 == 0 ? "X" : "O"
end

def input_to_index(input)
  move = input.to_i - 1
  move
end
  

def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end

def position_taken?(board, index)
    if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false 
   else
      return true
   end
end

def move(board, index, character = "X")
  board[index] = character
  return board
end
