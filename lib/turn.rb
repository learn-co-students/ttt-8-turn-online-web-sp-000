
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  position_taken?(board, index)
    if valid_move?(board, index) == true
       move(board, index, value="X")
       display_board(board)
     else
       puts "Invalid Input"
       turn(board)
     end
     end

def valid_move?(board, index)
     if position_taken?(board, index) == false && index.between?(0, 8)
        return true
     else
        position_taken?(board, index) == true
        return false
    end
    end
  def position_taken?(board, index)

  if board[index] != "X" && board[index] != "O"
        return false
      else
      board[index] == "X" && board[index] == "O"
        return true
    end
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, value="X")
  board[index] = value
end
