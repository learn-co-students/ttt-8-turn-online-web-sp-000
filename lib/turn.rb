#Following Methods are the building blocks of this TicToc game.


# displays the game board as an array
def display_board(board=" ")
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# takes the user input (string) and converts that into an index value
def input_to_index(input)
  converted_number = input.to_i - 1
end

# validates the user input as a "possible" move, in two parts
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

# defines the components of a move and executes that move
def move(board, converted_number, player_char= "X")
  board[converted_number] = player_char
end

# combines much of the above into a full turn cycle
def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else turn(board)
  end
end
