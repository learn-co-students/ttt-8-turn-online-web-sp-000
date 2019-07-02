def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end


def valid_move?(array, index)

  index.between?(0,8) && !position_taken?(array, index)
end


def position_taken?(array, index)
  array[index] != " "
end

def input_to_index(input)
  return input.to_i - 1
end


def move(array, index, value="X")
  array[index] = value
end

#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def turn(array)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(array,index) == true
    move(array, index, "X")
    display_board(array)
  else
    puts "This move is not correct."
    turn(array)
  end
end