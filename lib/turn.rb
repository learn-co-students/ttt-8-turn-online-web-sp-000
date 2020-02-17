# accept board as argument and print out current state of board for user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn
  puts "Please enter 1-9:"
  user_input = gets.strip
  if user_input.to_i.between?(1, 9)
    puts "value of user_input valid. #{user_input}" 
    return user_input
  else
    puts "Incorrect Choice. #{user_input}"
    turn 
  end 
end

# validate user's choice is between 1 and 9
def valid_move(board, index)
  if board[index] == "X" || board[index] == "O"
    return "false" 
  else
    return "true" 
  end
end 

#converts user_input to interger then -1 then return as index
def input_to_index(user_input)
  user_input = user_input.to_i
  index = user_input - 1
end

# collect moves to pass to the board
def move(board, index, value = "X")
  board[index] = value 
end

