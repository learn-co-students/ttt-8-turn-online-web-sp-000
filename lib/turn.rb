def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  board = [" "," "," "," "," "," "," "," "," "]

def input_to_index(user_input)
      new_user_input = user_input.to_i
      new_user_input -= 1
      return new_user_input
end
def move(board, index, character = "X")
  board[index] = character
  return board
end

def valid_move?(board,index)
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    else
      return true
    end
  end

def on_board?(index)
    if index.between?(0,8) == true
      return true
    else
      return false
    end
  end

  if (position_taken?(board,index)) == false && (on_board?(index)) == true
    return true
  else
    return false
  end
  end
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    puts "Oops,"
    turn(board)
  end
end
