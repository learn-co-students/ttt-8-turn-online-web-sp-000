def display_board(board)
separator = "|"
lines = "-----------"

puts " #{board[0]} #{separator} #{board[1]} #{separator} #{board[2]} "
puts "#{lines}"
puts " #{board[3]} #{separator} #{board[4]} #{separator} #{board[5]} "
puts "#{lines}"
puts " #{board[6]} #{separator} #{board[7]} #{separator} #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
end

def valid_move?(board, index)
  def position_taken?(array, ind)
    if array[ind] == " " || array[ind] == "" || array[ind] == nil
      return false
    else
      return true
    end
  end

  def on_board?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    return true
  else
    return false
  end


end

def move (board,index,character="X")
  board[index]=character
  return board
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

