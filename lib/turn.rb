#Display Board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


#Converting user input to an array index
def input_to_index(input)
  index = input.to_i - 1
  return index
end


#Determining open squares
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end


#Valid Move?
def valid_move?(board, index)
 if position_taken?(board, index) == false && index.between?(0, 8) == true
    return true
 elsif position_taken?(board, index) == true && index.between?(0, 8) == true
    return false
 elsif position_taken?(board, index) == true && index.between?(0, 8) == false
    return false
 elsif position_taken?(board, index) == false && index.between?(0, 8) == false
    return false
 end
end


#Placing the player's token on the board using player input
def move(board, index, players_token = "X")
  board[index] = players_token
end


#Turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board, index, players_token = "X")
    display_board(board)
  else
    turn(board)
  end    
end