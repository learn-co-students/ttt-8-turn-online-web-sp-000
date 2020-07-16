def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move? (board, index)
  #if statement to see if the position is taken
  #when the position is taken, return false
  if position_taken?(board, index)
    return false
  elsif position_taken?(board, index) != true && index.between?(0,8)
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    taken = true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move (board, input, character = "X")
  board[input] = character
end

def turn(board)
  puts "Please enter 1-9:"

  #get input
  input = gets.strip
  #convert input to index
  index = input_to_index(input)
  #if index is valid
  if valid_move?(board, index)
  #make the move for input
    move(board, index, character = "X")
    display_board(board)
  #else
  else
    #ask for input again until you get a valid input
    display_board(board)
    turn(board)
  end

  #end

end
