def display_board(board)
divider = "|"
lines = "-----------"

puts " #{board[0]} #{divider} #{board[1]} #{divider} #{board[2]} "
puts "#{lines}"
puts " #{board[3]} #{divider} #{board[4]} #{divider} #{board[5]} "
puts "#{lines}"
puts " #{board[6]} #{divider} #{board[7]} #{divider} #{board[8]} "
end


# board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#     index = 0
def position_taken?(board, index)
  puts display_board(board)
  if board[index] == " "
    false
  elsif board[index] == ""
    false 
  elsif board[index] == nil 
    false 
  elsif board[index] == "X" || board[index] == "O"
    true
end
end

def valid_move?(board, index)
  #binding.pry
 if !position_taken?(board, index) && index.between?(0, 8)
  
  true
else
  false
end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(user_input)
  changed_input = user_input.to_i 
  changed_input -= 1
  return changed_input
end

# def move(board_array, index, character = "X")
#   board_array[index] = character
#   return board_array
# end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if !valid_move?(board, index)
    user_input = gets.strip
  else 
    move(board, index, token = "X")
    display_board(board)
  end
end