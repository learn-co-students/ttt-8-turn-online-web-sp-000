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

def position_taken?(board,p_move)
  return (board[p_move] == "X" || board[p_move] =="O") || !(board[p_move] == " " || board[p_move] == "" || board[p_move] == nil)
end

def valid_move?(board,p_move)
  return (p_move >= 0 && p_move <= 8 && !position_taken?(board,p_move))
end

def move(board,move,x_or_o = "X")
  board[move] = x_or_o
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board,index)
    if position_taken?(board,index)
      puts "Sorry, that position is taken, please select another."
    else
      puts "Sorry, that is not a valid move. Please select a number 1 through 9."
    end
    input = gets.strip
    index = input_to_index(input)
  end
  move(board,index)
  display_board(board)
end
