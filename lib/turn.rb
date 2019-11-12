#display_board method to display current board to user
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index takes input from user and turns it into an array index
def input_to_index (user_input)
  return (user_input.to_i - 1)
end

#valid_move? makes sure the players input is good
def valid_move? (board, position)
  if ((board[position] != 'X' && board[position] != 'O') && (position >= 0 && position <= 8))
    return true
  else
    return false
  end
end

#move let play take turn if their input is valid
def move (board, user_input, token)
  if (valid_move?(board, user_input))
    board[user_input] = token
  else
    until (valid_move?(board, user_input))
      puts "Invalid Board Position try again with an integer between 1-9"
      user_input = gets.strip.to_i
    end
  end
end

#turn lets the player make a move if provided with valid input
def turn (board, token = 'X')
  puts "Please enter 1-9:"
  position = gets.strip
  move(board, input_to_index(position), token)
  display_board(board)
end
