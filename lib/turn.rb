
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index)
    move(board, index)
  display_board(board)
  else
    puts "invalid number entry, please try again"
    turn(board)
  end
end

# Helper methods

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



def move(board, index, value = "X")
    board[index.to_i] = value
end


def valid_move?(board,index)
  if position_taken?(board, index) != true && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif board[index] == "O" || board[index] == "X"
    true
  end
end
