def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input) 
  if valid_move?(board, index) == false 
    puts "Invalid move."
    turn(board)
  else
    move(board, index, players_character = "X")
    display_board(board)
  end
end



board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def valid_move?(board, index)
  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
       false
    else
      true
    end
  end
  
  def on_board?(num)
    if num.between?(0, 8) == true
      true
    else
      false
    end
  end

  if (position_taken?(board, index)) == false && (on_board?(index) == true)
    true
  else
    false
  end
end



def update_array_at_with(array, index, value)
  array[index] = value
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end 

def move(board, index, players_character = "X")
  update_array_at_with(board, index, players_character)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



display_board(board)

