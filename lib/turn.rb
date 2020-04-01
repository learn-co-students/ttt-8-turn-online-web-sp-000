def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.strip.to_i - 1
end

def position_taken?(board,index)
  if (board[index] == "" || board[index] == " " || board[index] == nil)
        return false
  else
    #puts "true"
    return true
  end
end

def valid_move?(board, index)
  if (index >= 0 && index <= 8 && !position_taken?(board,index))
    #puts "true"
    return true
  else
    #puts "false"
    return false
  end
end

def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
  else
    puts "not a valid move"
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  until valid_move?(board, index)
    puts "Not a valid move, please input 1-9:"
    input = gets
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end
