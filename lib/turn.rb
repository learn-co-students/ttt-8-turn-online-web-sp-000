require "pry"

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
    if index >= 0 && index <= 8
        true
        if board[index] == " "
            true
        elsif board[index] == ""
            true
        elsif board[index] == nil
            true
        elsif board[index] == "X" || "O"
            false
        end
    else
        false
    end
end

def input_to_index(users_input)
    users_input.to_i - 1
  end
  
def move(array, index, value = "X")
    array[index] = value
  end
  

def turn(board)
    puts "Please enter 1-9:"
    users_input = gets.strip
    index = input_to_index(users_input)
    if valid_move?(board, index) == true
        move(board, index, "X")
        display_board(board)

    else
        turn(board)

        


end
end
