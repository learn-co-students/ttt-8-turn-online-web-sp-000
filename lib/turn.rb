# code your #valid_move? method here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# converting user input
def input_to_index(input)
  input.to_i - 1
end


def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board,index) == false
    true
  else
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  elsif board[index] != " " || board[index] != ""
    false
  else
  end
end

#move method
def move (board, index, value="X")
  board[index] = "#{value}"
end

def turn(board)
  puts "Please enter 1-9:"
  #capture the users move
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, value="X")
    display_board(board)
  else
    turn(board)
  end
end
