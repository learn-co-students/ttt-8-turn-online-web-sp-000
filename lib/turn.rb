# accept board as argument and print out current state of board for user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, value = "X")
  board[index] = value 
end

def input_to_index(user_input)
  index = user_input.to_i - 1 
end

def valid_move?(board, index)
  if board[index] == " " || board[index] == ""
      return true 
  elsif
      board[index] == "X" || board[index] == "O"
      return false 
  else
      return false
  end 
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
    if  user_input.to_i.between?(1, 9)
      index = input_to_index(user_input)
      valid_move = valid_move?(board, index)
        if valid_move == true 
          move(board, index, value = "X")
          display_board(board)
        else 
        end 
   else
      turn(board)
  end 
end