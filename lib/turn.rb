board = [
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
  " ",
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def position_taken?(board, user_input)
  if board[user_input] == " " || board[user_input] == "" || board[user_input] == nil
      return true
  elsif board[user_input] == "X" || board[user_input] == "O"
        return false
  end
end

def valid_move?(board, user_input)
  if user_input.between?(0, 8) && position_taken?(board, user_input)
    return true
  end
end

def move(board, user_input, value = "X")
  board[user_input] = value
  return display_board(board)
end

#turn method

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
end
