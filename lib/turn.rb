#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
board = []
index = 0
move = index - 1

def valid_move?(board, move)
  if position_taken?(board, move) == true
    false
  else position_taken?(board, move) == false
    if move.between?(0,8)
      true
    else
      false
    end
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] ==  "O"
    true
  end
end

#move
def input_to_index(input)
  input.to_i - 1
end

def move(board, player_index, character = "X")
  board[player_index] = character
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  board_index = input_to_index(gets.strip)

  if valid_move?(board, board_index) == true
    move(board, board_index)
  else
    until valid_move?(board, board_index) == true
      puts "Please enter 1-9:"
      board_index = input_to_index(gets.strip)
    end
  end

  display_board(board)
end
