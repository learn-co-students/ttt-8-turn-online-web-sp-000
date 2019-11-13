def display_board (board)
  rows=[]
  rows << " #{board[0]} | #{board[1]} | #{board[2]} "
  rows << "-----------"
  rows << " #{board[3]} | #{board[4]} | #{board[5]} "
  rows << "-----------"
  rows << " #{board[6]} | #{board[7]} | #{board[8]} "
  
  rows.each do |row|
    puts row
  end
end

def input_to_index(input)
  value = input.to_i
  user_move_request = value-1
end

def valid_move?(board, index)
  if board[index] == NIL
    FALSE
  elsif board[index].to_i < 0
    false
  elsif board[index].strip.length != 0
    false
  else
    true
  end
end