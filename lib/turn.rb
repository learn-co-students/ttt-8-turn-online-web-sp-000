# display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts user input to integer

def input_to_index(input)
  input.to_i - 1
end

# check position to see if it is taken

def valid_move?(board, index)
  def on_board?(num)
    if num.between?(0, 8)
      return true
    else
      return false
    end
  end
  if (position_taken?(board, index)) == false && (on_board?(index)== true)
    return true
  else
    return false
  end
end

# position_taken method

def position_taken?(array, user)
  if array[user] == " " || array[user] == "" || array[user] == nil
    return false
  else
    return true
  end
end

# user num and place X or O
def move(board, input, value = "X")
  board[input] = value
end
def turn (board)
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
