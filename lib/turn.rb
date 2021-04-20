def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def update_array_at_with(board, index, value)
  board[index] = value
end

def position_taken?(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "], index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else false
  end
end

def valid_move?(board, index)
if index != 0 && index.between?(1, 8) == false
  false
elsif index == 0 || index.between?(1, 8) && position_taken?(board, index) == false
  true
  else false
  end
end

def move(board, index, value = "X")
  update_array_at_with(board, index, value)
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
   input = gets.strip()
   index = input_to_index(input)
   while valid_move?(board, index) == false
     puts "Please enter 1-9:"
     input = gets.strip()
     index = input_to_index(input)
   end
     move(board, index, value = "X")
 end
