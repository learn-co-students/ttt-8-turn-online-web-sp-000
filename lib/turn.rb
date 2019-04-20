def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def input_to_index(input)
  return input.to_i - 1
end


def valid_move?(board, input)
  index = input.to_i
                #convert input to a integer
                
  positionTaken = position_taken?(board, index)
                #create varaible to hold the #position_taken method
  
  move = index + 1
                #create varaible to hold the input into the index and add 1 because arrays start at 0

  if positionTaken == true
    return false
  elsif (positionTaken == false && move.between?(1, 9) == true)
    return true
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
       return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

  
end
