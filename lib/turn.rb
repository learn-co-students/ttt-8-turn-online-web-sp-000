def turn(board)
 puts "Please enter 1-9:"
 input = gets.strip.to_i
 index = input_to_index(input)
if !valid_move?(board, index)
turn(board)
else
move(board, index)
display_board(board)
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
 if index.between?(0, 8) && !position_taken?(board, index)
   return true
 end
end

def position_taken?(board, index)
 if board[index] == " " || board[index] == "" || board[index] == nil
  return false
else
  return true
  end
 end

 def input_to_index(number)
   number.to_i
   converted_input = (number.to_i - 1)
 end

 board = [" ", " ", " "]

 def move(board, number, value="X")
  board[number] = value
 end
