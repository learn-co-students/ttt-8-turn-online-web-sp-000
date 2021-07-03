def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  if (!(Integer(input) rescue false)) 
    return -1
  else
    return Integer(input)-1
  end
end

def valid_move?(board, index)
  (index.between?(0,8) && !(board[index] == "X" || board[index] == "O"))
end

def move(board, index, input = "X")
  board[index] = input
end

def turn(board)
  puts "Please enter 1-9:"
  index = ""

  while true
    index = input_to_index(gets.strip)
    if (valid_move?(board, index))
      break
    else
      puts "Invalid input, please enter again"
    end
  end
  move(board, index) 
  display_board(board)
end
