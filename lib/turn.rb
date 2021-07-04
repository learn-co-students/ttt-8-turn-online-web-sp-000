def turn (board)
  turns = 0
  while turns < 1 do
    puts "Please enter 1-9:"
    
    input = gets.strip
    
    index = input_to_index(input)
    
    if valid_move?(board, index) == true
      move(board, index)
      turns += 1
    end
  end
end

def move(board, index, symbol = "X")
  board[index] = symbol
  display_board(board)
end

def input_to_index (input)
  index = input.to_i - 1
  return index
end


def valid_move? (board, index)
  if index.between?(0, 8) == true
    if !(position_taken?(board,index))
      return true
    else
      return false
    end
  end
end

def position_taken? (board,index)
  if board[index] == "" || board[index] == " "
    return FALSE
  elsif board[index] == "O" || board[index] == "X"
    return true
  elsif board[index] == nil
    return false
  end
end

def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end