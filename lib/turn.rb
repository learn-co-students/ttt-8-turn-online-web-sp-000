def display_board(board)   
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "  
end

def input_to_index(input)
    index = input.to_i
    index -= 1

end

def move(board, index, token = "X")
    board[index] = token

end

def valid_move?(board, index)
    index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
    board[index] != " "
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
        play = move(board, index)#make movement for input
        display_board(board)
    else 
        turn(board)
        puts "Please enter a valid option"
    end
end


