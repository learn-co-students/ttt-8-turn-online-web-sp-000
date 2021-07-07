


def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
   user_input.to_i - 1
end

def valid_move?(board, index)
   index > -1 && board[index] != 'X' && board[index] != 'O'
end

def move(board, index, value)
  board[index] = value
end

def turn(board)
  index = 0
  loop  do
    puts "Please enter 1-9:"
    input = gets.chomp
    index = input_to_index(input)
    break if index > -1
  end
  valid_move?(board, index)
  move(board, index, 'X')
  display_board(board)
end
