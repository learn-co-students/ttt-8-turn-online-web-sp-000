def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false
    if (0..8).include?(index)
      return true
    end
  end
  return false
end

def input_to_index(user_input)
  #take the user's input ("1"-"9") and convert it to the index of the board array (0-8)
  user_input.to_i - 1
end

def move(board, move_position, char = "X")
  #represents a user moving into a position, like the middle cell, in Tic Tac Toe
  board[move_position] = "#{char}"
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end
