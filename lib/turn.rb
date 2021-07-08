def turn(board)
  valid = false
 
  
  until valid == true
   puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
   valid = valid_move?(board, index)
  end 
  
    move(board, index, "X")
    display_board(board)
    
  
end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index) == true
    false
  else 
    if index.between?(0, 8) == true 
      true 
    else 
      false
    end 
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else 
    false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
  
end

