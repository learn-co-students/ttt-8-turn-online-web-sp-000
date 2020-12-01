 def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  
  temp = input.to_i
  index = temp - 1
  return index
end


def valid_move?(board, index)
  
  def position_taken?(board, index)
    check = board[index]
    if check == " " || check == "" || check == nil
     false
    else
     true
    end
  end

  if !position_taken?(board, index) && index.between?(0,8)
     true
  else
     false
  end
end

def move(board,index,player_char ="X")
  board[index] = player_char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    
  if valid_move?(board, index) 
    move(board, index, player_char = "X")
    display_board(board)
  else
    turn(board)
    end
end