def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input,)
  index = user_input.to_i - 1       #this here converts a user_input to integer, subtracts 1, and returns -1 for strings without integers
end                                 #sets it to variable index

def valid_move?(board, index)
  if index.between?(0,8) #if index is within available positions on board
    if !(position_taken?(board,index)) #if our position is not taken (call to our helper method position_taken?)
      true                       # return true for valid move
    end
  end
end

def turn(board)

  puts "Enter a number 1-9"
  input = gets.strip
  input = input_to_index(input)

  if valid_move?(board, index)      #if move is valid (allowed)
    move(board, index)
    display_board(board)
  else
    turn(board)     #reiterate turn
  end
end

def position_taken?(board, index)
  # We're accessing our array with board[index]
  taken = nil #initializing variable to nil
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    taken = false #updating variable to false, saying index is currently empty
  else
    taken = true  #updating variable to index being true or "full"
  end
end

  # We're accessing our array with board[index]
  #board[index] != " "    #if index not empty, position is taken

def move(board, index, value = "X")
  board[index] = value
end
