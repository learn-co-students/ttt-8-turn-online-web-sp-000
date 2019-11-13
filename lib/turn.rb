def display_board(
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts "Display Board"
#board output
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def move(board,index, token)
  board[index] = token
end

def input_to_index(move)
   index = move.to_i - 1
   index
end

def turn(board)
  puts "Please enter 1-9:"
    #get the user input
    user_input = gets.strip
    #input to index
    index = input_to_index(user_input)
    token = current_player(board)

    #check for validation
    if valid_move?(board,index)
      puts "valid move"
      move(board, index, token)
      display_board(board)
     else
      puts "try again"
      turn(board)
    end
    display_board(board)
  end
