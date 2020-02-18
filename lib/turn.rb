# accept board as argument and print out current state of board for user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# collect moves to pass to the board
def move(board, index, value = "X")
  board[index] = value 
end

def input_to_index(user_input)
  index = user_input.to_i - 1 
end

def valid_move?(board, index)
  if board[index] == " " || board[index] == ""
      true 
  elsif
      board[index] == "X" || board[index] == "O"
      false 
  else
      false
  end 
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
    if  user_input.to_i.between?(1, 9)
      index = input_to_index(user_input)
      valid_move?(board, index)
      move(board, index, value = "X")
      display_board(board)
   else
      turn(board)
  end 
end