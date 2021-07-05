def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

def valid_move?(board,index)
  return true if position_taken?(board, index) == false && index.between?(0, 8)
  else return false if position_taken?(board, index) == true && index.between?(0,8)
end

def position_taken?(board, index)
  return false if board[index] == " " || board[index] == "" || board[index] == nil
  else return true
end

def move(board, index, letter)
  board[index] = letter
end

def turn(board)
  letter = gets.chomp
  puts "Please enter 1-9:"
  index = input_to_index(letter)
    if valid_move?(board,index)
      move(board, index, letter="X")
      display_board(board)
    else turn(board)
  end
end

