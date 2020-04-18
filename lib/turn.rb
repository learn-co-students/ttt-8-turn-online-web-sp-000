#display_board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index 

def input_to_index(user_input)
  return user_input.to_i - 1
end

#valid_move?

def valid_move?(board,index)
  if index.between?(0,8)
    if  position_taken?(board,index)
      false
    else
      true
    end
  else
    false
  end
end

#position_taken?

def position_taken?(board,index)
  if board[index] == "X" or board[index] == "O"
    true
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else  board[index] == " "
    false
  end 
end

def
move(board,input_to_index,players_character = 'X')
  board[input_to_index] = players_character
end

#turn

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board,index)
    move(board,index,players_character ='X') 
    display_board(board)
  else
    puts "Please enter 1-9:"
    turn(board)
  end
end