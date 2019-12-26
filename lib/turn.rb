def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    display_board(move(board,index))
  else
    puts "Please enter a valid input"
    turn(board)
  end
end

def input_to_index(input)
  input = input.to_i
  return input - 1
end

def display_board(boardIn)
  if boardIn == nil
    puts "That was an unacceptable input"
  else
    puts " #{boardIn[0]} | #{boardIn[1]} | #{boardIn[2]} "
    puts "-----------"
    puts " #{boardIn[3]} | #{boardIn[4]} | #{boardIn[5]} "
    puts "-----------"
    puts " #{boardIn[6]} | #{boardIn[7]} | #{boardIn[8]} "
  end
end

def move(boardIn, input_index, character = "X")
  boardIn[input_index] = character
  return boardIn
end

# code your #valid_move? method here
def valid_move?(board, index)
  return index.between?(0,8) && !(position_taken?(board, index))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  spot = board[index]
  if spot == " " || spot == "" || spot == nil
    false 
  else
    true 
  end
end