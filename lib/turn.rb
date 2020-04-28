#helper methods

#display_board should accept a board as an argument and print out the current state of the board
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move? Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token. include #position_taken?
def valid_move?(board, index)

  def position_taken?(board, index)
    if (board[index] == "X" || board[index] == "O")
      return true
    elsif board[index] == " "
      return false
    elsif board[index] == ""
      return false
    elsif board[index] == nil
      return false
    end
  end

  def number_valid?(num)
    if num.between?(0, 8) == true
      return true
    else
      return false
    end
  end

  if (position_taken?(board, index) == false) && (number_valid?(index) == true)
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

#move This method should accept a board, an index from the user (which was converted from their raw input with input_to_index), and a token to mark that position with (you can give that argument a
#default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.

def move(board, index, character = "X")
  board[index] = character
  return board
end


def turn (board)
  puts "Please enter 1-9:"
  num = gets.strip.to_i #ask for input and get input
  index = input_to_index(num) #convert input to index
  if valid_move?(board, index) == true
    move(board, index) #make the move for index
    display_board(board) #show the board
  else
    turn(board) #ask for input again until you get a valid input
  end
end
