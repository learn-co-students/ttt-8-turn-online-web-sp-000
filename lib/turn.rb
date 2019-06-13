

#puts "Welcome to Tic Tac Toe!"

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end
#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#display_board(board)

#puts "enter your number here:"

#input=gets.strip
input = 3


def input_to_index(input)
  input.to_i - 1
end

index = input_to_index(input)

def move(board, index, token = "X")
  board[index] = token
end

def position_free?(board, index)
  # returns "true" if board position is empty/available
  # returns "false" if board position is full in any way.
  board[index] == "" || board[index] == " " || board[index] == nil
end

def valid_move?(board, number)
  # returns 'true' if the inputed number is between 0 and 8, AND ALSO if the position is free as per the position_free? method.
  number.between?(0,8) && position_free?(board, number)
end


#move(board, index)
#display_board(board)
#puts valid_move?(board, index)
