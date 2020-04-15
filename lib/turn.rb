board_array = [" "," "," "," "," "," "," "," "," "]
def display_board(board_array)
    puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
    puts "-----------"
    puts " #{board_array[3]} | #{board_array[4]} | #{board_array[5]} " 
    puts "-----------"
    puts " #{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
end

def input_to_index(input)
    input.to_i - 1
end 

def position_taken?(board, index)
    (board[index] ==  " " || board[index] == "" || board[index] == nil) ? false : true
end

def valid_move?(board, index)
    index.between?(0,8) && !position_taken?(board, index)
end 

def move(board, input_to_index, token = "X")
    board[input_to_index] = "O" && board[input_to_index] = token
end 

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
        if valid_move?(board, index) 
            move(board, index)
            display_board(board)
        else 
            "Please enter a valid sqaure"
            user_input = gets.strip
        end 
end



