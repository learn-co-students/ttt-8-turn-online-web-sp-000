def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.to_i.between(1,9)
    if !position_taken?(board, position.to_i-1)
      true
    end
  end

    # position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def position_taken?(board, position.to_i-1)
  !(position(board, location).nil? || position(board, location) == " ")
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
end
