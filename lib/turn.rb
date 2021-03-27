def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 9)
    true
  else
    false
  end
end

def move(board, move, current_player = "X")
  board[move] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Not a valid entry."
    turn(board)
  end
end



def input_to_index(input)
  if input =~ /[^1-9]/
    index = -1
  elsif input.class == "Fixnum" && input > 0 && input < 10
    index = input - 1
  else
    index = input.to_i - 1
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end
