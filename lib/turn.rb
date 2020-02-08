
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    input.to_i - 1
end

def valid_move?(board, index)

    position_taken?(board, index) || index < 0 || index > 8 ? false : true

end

def position_taken?(board, index)

    case board[index]
    when " ", "", nil
        false
    when "X", "O"
        true
    end

end

def move(board, position, char = "X")
    board[position] = char
    board
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)

    
    # validate user input
    if valid_move?(board, input)
        move(board, input)
    else
        turn(board)
    end

    display_board(board)


end
