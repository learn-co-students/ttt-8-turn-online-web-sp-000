
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def valid_move?(board, index)
   if index.between?(0,8) && ((board[index] == " ") || (board[index] == ""))
       true
     elsif (board[index] == " ") || (board[index] == "") || (board[index] == nil)
       false
   end
 end

 def move(board, index, char = "X")
   board[index] = char
 end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp.to_i
  index = input_to_index(user_input)
  while valid_move?(board, index)
    puts "Please enter 1-9:"
  end
  move(board)
  display_board(board)
end
