#turn method
def turn(board)
  while move != " "
    puts "Please enter anoth position "
  end
end

#board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#is valid move method
def valid_move?(board, index)
  index = index.to_i - 1
    if !position_taken?(board, index) && index.between(0,8)
      true
    else
      false
    end
end

#move method
def move(board, index, character = "X")
  board[index] = character
  return board
end
