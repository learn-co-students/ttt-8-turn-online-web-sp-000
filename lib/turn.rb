

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

  if (index.between?(0,8) && !position_taken?(board, index))

    return true
  else
   return false
  end
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def turn(board)
  puts "Please enter 1-9:"
input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index))
    board[index] = "X"
    puts "I entered #{input} in response to the gets prompt"
    display_board(board)
  else turn(board)
  end
end

def move(board, input, type)
  if (valid_move?(board, input))
    board[input] = type

  else turn(board)
  end
end
