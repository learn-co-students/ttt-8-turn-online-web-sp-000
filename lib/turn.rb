

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end


def valid_move?(board, index)
    
    index.to_i
     
    if position_taken?(board, index) == false && index.between?(0, 9)
        true 
    else
        nil
    end
end



def position_taken?(board, index)
    i = index
    
    if board[i] == "" || board[i] == " " || board[i] == nil
        false
    elsif board[i] == "X" || board[i] == "O"
        true
     else
        nil
    end
end

def input_to_index(input)
    index = input.to_i
    index -= 1
end

def move(array, index, player = "X")
    array[index] = player
 end

def turn(board)
    
    puts "Please enter 1-9:"
    
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
        move(board,index)
    else 
        turn(board)
    end
display_board(board)
    
end