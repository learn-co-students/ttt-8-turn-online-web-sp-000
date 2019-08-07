

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  new_input = input.to_i
  new_input -= 1
  return new_input
end

def valid_move?(board, index)
    if index.between?(1,9)
      if !position_taken?(board, index)
       return true
      end
    end
    index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board, index)
  board[index] != " "
end

def move(board, index, character = "X")
  board[index] = character
end 

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else 
    turn(board)
  end 
end 


