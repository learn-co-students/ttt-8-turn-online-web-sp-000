def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i - 1
end  

def move (board, index, char = "X")
  board[index] = char
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "")
    return FALSE
  elsif board[index] == NIL
    return FALSE
  else 
    return TRUE
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board,index) == FALSE
    return TRUE
  end
end  

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input) == TRUE
    move(board, input)
    display_board(board)
  elsif valid_move?(board, input) != TRUE
      turn(board)
  end
end  