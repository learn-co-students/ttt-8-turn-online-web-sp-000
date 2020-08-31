board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#display-board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

#valid-move
def valid_move?(board, index)
  if index < 0 || index > 8
    false
  else
    if position_taken?(board,index) == true
      false
    else
      true
    end
  end
end

#position taken
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

#move
def move(board, index , player_character = "X")
  board[index] = player_character
  end

  #input to index
  def input_to_index(input)
    input.to_i - 1
    index = input.to_i - 1
    return index
    end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index = input_to_index(input)
    if valid_move?(board,index) == false
      turn(board)
      else
        move(board, index)
        display_board(board)
    end
end
