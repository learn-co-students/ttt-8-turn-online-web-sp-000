board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"   
 puts " #{board[3]} | #{board[4]} | #{board[5]} " 
 puts "-----------"   
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
user_input = ["1","2","3","4","5","6","7","8","9"]

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, value="X")
    board[index] = value
end
def valid_move? (board, index)
   if index.between?(0,8) && position_taken?(board, index) == false
           TRUE
   else
       FALSE
   end
end

def position_taken? (board, index)
   if board[index] == " "
       FALSE
   elsif board[index] == ""
       FALSE
   elsif board[index] == nil   
       FALSE
   else
       TRUE
   end
end

def turn(board)
    puts "Please enter 1-9:"
        turn=gets.strip.to_i
        index = input_to_index(turn)
    if valid_move?(board, index)
        move(board, index)
        display_board(board)
    else
        puts "That is an invalid entry!"
        turn(board)
    end
end