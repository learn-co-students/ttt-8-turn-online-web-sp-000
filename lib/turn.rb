

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user = user_input.to_i
  user -= 1
end

def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O"
    false
 elsif index < 0 || index > 9
   false
 elsif board[index]
     true

  end
end

def move(board,index,player)
  board[index] = player
end



def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip

interger = input_to_index(index)
valid = valid_move?(board,interger )
if valid == false
  puts "Please enter 1-9:"
  index = gets.strip

end
 #interger = input_to_index(index)
move(board,interger,"X")
display_board(board)
end




# def input_to_index(input_to_index)
# end
# index = 4
# expect(valid_move?(board, index)).to be_falsey
#
# index = -1
