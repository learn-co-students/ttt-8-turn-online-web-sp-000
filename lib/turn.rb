


def input_to_index(user_input)
   index = user_input.to_i - 1
end




def valid_move?(board, index)
  index.between?(0, 8) && !(position_taken?(board, index))
end

def move(array, index, name = "X")
  array[index] = name
end

def position_taken?(board, answer)
  board[answer] != " " 
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def turn(board)
    puts "Please enter 1-9:"
    answer = gets.chomp
    index = input_to_index(answer)
    if valid_move?(board, index)
      move(board, index)
       display_board(board)
    else
      puts "That is an invalid entry!"
      turn(board)
    end 
end



