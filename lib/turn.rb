def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index=input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char="X")
    display_board(board)
  else turn(board)
  end
end
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return TRUE if index.between?(0,8) && (board[index] != ("X" || "O") )
end

def input_to_index(input)
  index=input.to_i
  index -= 1
end

def move(board, index, char="X")
  board[index] = char
end

