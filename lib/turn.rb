def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "

end
#------------------------

def input_to_index(input)
  input.to_i - 1
end
#------------------------

def move(board,index,character = "X" )
  board[index] = character
end
#------------------------

def position_taken?(board, input )
  if board[input] == " " || board[input] == "" || board[input] == nil
    false
  else
    true
  end
end
#------------------------

def valid_move? (board, index)
  index = index.to_i
  withinrange = (index >= 0 && index <= 8)
  nottaken = !position_taken?(board, index)

  if (withinrange && nottaken)
    true
  else
    false
  end

end
#------------------------
def turn(board)

  puts "Please enter 1-9:"

  #get user input
  input = gets.strip

  #convert to array index
  index = input_to_index(input)

  #check if input valid
  if valid_move?(board,index)
    move(board,index,character = "X" )
    display_board(board)
  else
    #tell them invalid input and need to re-enter
    puts "Invalid input"
    turn(board)
  end

end
