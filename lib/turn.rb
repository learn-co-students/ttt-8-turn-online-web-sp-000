
def move(board_array,user_input1,character = "X")
  board_array[user_input1] = character
  return board_array
end

def valid_move?(board, index)
  
if index.between?(0,8) && position_taken?(board, index) == false
 return true
else
 return false
end
end

def display_board(board_array)
  puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
  puts "-----------"
  puts " #{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
  puts "-----------"
  puts " #{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
end

def input_to_index(input)
  user_input = input.to_i - 1
end

def position_taken?(array, index)
  
   if array[index] == 'X' || array[index] == 'O'
     true
     elsif array[index] == nil
     false
     elsif array[index] == " " || array[index] == ""
     false
    end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  user_input = input_to_index(input)
  if valid_move?(board,user_input) == true
    move(board,user_input,character = 'X')
  else
    puts "Please enter 1-9:"
    input = gets.strip
  end
  display_board(board)
end