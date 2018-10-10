def turn (board)
cturn = 0
until cturn == 1
puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
if valid_move?(board,index) == true then
  move(board,index,"X")
  display_board(board)
  cturn += 1
else puts "Please enter 1-9:"
end
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (input)
  input.to_i - 1
end

def move(board,index,character = "X")
    board[index] = character
end

# code your #valid_move? method here
def valid_move? (board,index)
if position_taken?(board,index) == true
  then false
    elsif index >= 0 && index <= 8
      then true
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    then false
  elsif board[index] == "X" || board[index] == "O"
    then true
  end

end
