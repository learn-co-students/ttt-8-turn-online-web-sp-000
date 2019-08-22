def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(number)
  number.to_i-1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board, index)
   if position_taken?(board,index) == false && index.to_i.between?(0, 8)
     return true
   end
 end

 def move(array, index, value = "X") #Defines 3 arguments: the board array, the index value the user chose, and the value of their character.
  array[index] = value #Takes our array with empty spaces, selects a value, and sets that value equal to the user character.
end

def turn(board) #Defines a method that takes the argument of board.
  puts "Please enter 1-9:" #Displays a string prompting the user for a number.
  number = gets.to_i #Stores the user's value as a variable and converts to an integer.

  index = input_to_index(number) #Variable equal to the method that accepts the number as the argument.

  validity = valid_move?(board,index)

  if validity == true
    move(board,index,value = "X")
    display_board(board)
  else
    turn(board)
  end

end
