def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
   index = user_input.to_i - 1               #this here converts a user_input to integer, subtracts 1, and returns -1 for strings without integers
end                                         #sets it to variable index, don't have to set to variable. but I did

def valid_move?(board, index)
  if index.between?(0,8) #if index is within available positions on board
    if !position_taken?(board,index) #if our position is not taken (call to our helper method position_taken?)
      return true                       # return true for valid move
    end
  end
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip                #create local variable 'input' that gets input from player. 'strip' eliminates whitespace.
  index = input_to_index(input)     #convert input to correct index with method call (#input_to_index(input))

  if valid_move?(board, index)      #if move is valid (allowed)
    move(board, index)              #call to #move making user move for index
    display_board(board)            #show the board
  else
    turn(board)                     #reiterate turn if previous turn failed
  end
end

def position_taken?(board, index)

  # We're accessing our array with board[index]
  board[index] != " "    #if index not empty, position is taken
end

def move(board, index, value = "X")
  board[index] = value                #set move on our board equal to a value. Default is X.
end
