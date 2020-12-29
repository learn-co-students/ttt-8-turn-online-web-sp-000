def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def valid_move?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil) && (index >= 0 && index <= 8)
    true
  end
end

def move(board, index, value)
  board[index] = value
end

def turn(board)
  accept_move = 0 #this is used to continue to ask for moves until move is accepted in the UNTIL loop
  until accept_move == 1  #continues to ask for a valid move until a valid move is recieved
    puts "Please enter 1-9:"
    user_input = gets.strip
    converted_input = input_to_index(user_input) #converts input into an integer
    if valid_move?(board, converted_input) == true #if a valid move is received then we change variable accept_move to exit our UNTIL loop
      accept_move = 1
    end
  end
  move(board, converted_input, value = "X")
  display_board(board)
end
