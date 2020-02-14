
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
    user_input = user_input.to_i
    user_input >= 1 && user_input <= 9? index = user_input - 1 : -1
end
  
def move(board, index, player_character="X")
    board[index] = player_character if index >= 0 && index <= 8
    board
end

def valid_move?(board, index)
    index >= 0 && index <= 8 && !position_taken?(board, index)
end

def position_taken?(board, index)
    if board[index] == "" || board[index] == " "  
        false
    elsif board[index] == nil
        false
    else
        true
    end
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    
    if valid_move?(board, index)
        move(board, index, player_character="X")
        display_board(board)
    else
       turn(board)
    end
end