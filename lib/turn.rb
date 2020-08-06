# Should accept a board as an argument and print out the current state of the board for the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(x)
  x = x.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

# code your #valid_move? method here - true if present on game board and not already filled
def valid_move?(board, index)
  if index < 0 || index > 9 
    FALSE
  elsif index >= 0 && index <= 9
    if position_taken?(board,index) == TRUE
      FALSE
    else
      TRUE
    end
  end   
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    FALSE
  elsif board[index] == "X" || board[index] == "O"
    TRUE
  end
end

def turn(board)
  puts "Please enter 1-9:"
  x = gets.strip
  index = input_to_index(x)
  if valid_move?(board, index) == TRUE
    move(board, index, value = "X")
    display_board(board)
  else
    return turn(board)
  end
end