board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
index = 0


def valid_move?(board, index)
  if position_taken?(board, index) && index.between?(0,8)
    puts position_taken?(board, index)
    puts index.between?(0,8) #&& turn(board)
  else
   puts position_taken?(board, index)
    puts index.between?(0,8) #&& turn(board)
   test_puts_method
   false
  end
end

#position_taken?

def position_taken?(board, index)

  if board[index] == " " || board[index] == "" || board[index] == nil
    true
  else
    false
  end
end

def test_puts_method
  puts "I'm here"
end

valid_move?(board,index)


