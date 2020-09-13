def display_board(board)  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = ["X", "X", "X", "X", "O", "O", "O", "O", "O"]


def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
    board[index] != " "
end


def valid_move?(board, index)
    #index is within a range of 0-8 And board at index is not occupied
    index.between?(0,8) && !position_taken?(board, index)
end

def move(board, index, player= "X")
  board[index] = player
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    user_index = input_to_index(user_input)
    if valid_move?(board, user_index)
        move(board, user_index)
        display_board(board)
    else
        turn(board)
    end
    
end



