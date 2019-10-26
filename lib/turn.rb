def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board,index) == true
      move(board,index)
    else
      turn(board)
  end
  display_board(board)
end

def valid_move?(board,index)

  if (position_taken?(board,index) ==  false) &&  (index <= 8 && index >= 0)
      true
    else
      false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    else
      true
    end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index (input)
  intput2 = input.to_i
  return intput2 - 1
end

def move (board,index, default_choice = "X")
  board[index] = default_choice
end
