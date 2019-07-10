def display_board(board)
  puts "  #{board[0]} | #{board[1]}  | #{board[2]}   "
  puts "----------------"
  puts "  #{board[3]} | #{board[4]}  | #{board[5]}   "
  puts "----------------"
  puts "  #{board[6]} | #{board[7]}  | #{board[8]}   "
end


def input_to_index(input)
  if input.class == "String"
      -1 
  else
    index = input.to_i - 1
  end
end

def valid_move?(board, index)
  if index >= 0 && index <=8 && board[index] == " "
    TRUE
  else
    FALSE
  end
end

def move (board, index, player_character)
  if valid_move?(board, index) == TRUE
    board[index] = player_character
  else
    while valid_move?(board, index) == FALSE
      puts "Not a valid move. Please try again!"
      input = gets.strip
      index = input_to_index(input)
      if valid_move?(board, index) == TRUE
        board[index] = player_character
        break
      end
    end
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  player_character = "X"
  move(board, index, "X")
  if board[index]== player_character
    display_board(board)
end






   




