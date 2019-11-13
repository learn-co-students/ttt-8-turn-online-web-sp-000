def display_board (board)
  rows=[]
  rows << " #{board[0]} | #{board[1]} | #{board[2]} "
  rows << "-----------"
  rows << " #{board[3]} | #{board[4]} | #{board[5]} "
  rows << "-----------"
  rows << " #{board[6]} | #{board[7]} | #{board[8]} "
  
  rows.each do |row|
    puts row
  end
end

def input_to_index(input)
  value = input.to_i
  user_move_request = value-1
end

def valid_move?(board, index)
  if index == NIL
    FALSE
  elsif index > 9 || index < 0
    FALSE
  elsif board[index].strip.length != 0
    FALSE
  else
    TRUE
  end
end

def move(board, index, letter="X")
  if valid_move?(board, index)
    board[index] = letter
    display_board(board)
  else
    puts "Invalid Move"
    turn(board, letter)
  end
end

def turn (board, letter ="X")
  puts "Please enter 1-9:" 
  input = gets.chomp
  index = input_to_index(input)
  move(board, index, letter)
end