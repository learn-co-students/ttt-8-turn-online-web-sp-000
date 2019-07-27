def display_board(board)
  puts "Would you like to Play? (Y,N)"
end

if valid_move?(board,index)
    puts 'valid move'
    move(board, index, token)
    display_board(board)
   else
    puts 'try again'
    turn(board)
  end
  display_board(board)
end

def move(board, index, token)
  board[index] = token
  play(board)
  
end

def input_to_index(move)
   index = move.to_i - 1
   index
end

def turn(board)
  puts "Please enter 1-9:"
  #get the user input
  user_input = gets.strip
  #input to index
  index = input_to_index(user_input)
  token = current_player(board)
end