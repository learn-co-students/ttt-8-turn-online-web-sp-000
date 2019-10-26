# display empty board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index
  def input_to_index(input)
    # convert input to integer and subtracts 1
    input.to_i - 1
  end

# code the move method here!
  def move(array, index, character = "X")
    array[index] = character
  end

  # code your #position_taken? method here!

  def position_taken?(array, index)
    if array[index] == " " || array[index] == "" || array[index] == nil
      return false
    elsif array[index] == "X" || array[index] == "O"
      return true
    end
  end

# code your #valid_move? method here
def valid_move?(array, index)
  if index.between?(0,8) && !position_taken?(array, index)
    return true
  else position_taken?(array, index) == true
    return false
  end
end

# turn method
def turn(array)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid = valid_move?(array, index)
  # check that index is valid
    if valid == false
      turn(array)
    else
      move(array, index, character = "X")
      display_board(array)
    end
end



# if index is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end
