
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1 
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end
  
def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  position_taken?(board, index)
  if valid_move?(board, index) == true
    move(board, index, player = "X")
    display_board(board)
  else
    puts "Invalid move! Please enter again"
    turn(board)
  end
end

=begin
  if valid_move?(board, index) == false
    puts "Invalid move! Please enter again."
  else
    until valid_move?(board, index) == true do
      
    end
  end
end
=end

=begin
  gets input.strip
  input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, player = "X")
  else
    until valid_move?(board, index) == true do
      puts "Invalid move! Please enter again."
    end
end
=end
