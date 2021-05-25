def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
        if valid_move?(board, index)
        move(board, index, char="X")
        display_board(board)
        else turn(board)
    end
end

    def display_board(board)
        separator = "|"
        lines = "-----------"
        puts " #{board[0]} #{separator} #{board[1]} #{separator} #{board[2]} "
        puts "#{lines}"
        puts " #{board[3]} #{separator} #{board[4]} #{separator} #{board[5]} "
        puts "#{lines}"
        puts " #{board[6]} #{separator} #{board[7]} #{separator} #{board[8]} "
    end

    def valid_move?(board, index)
        index.between?(0,8) && !position_taken?(board, index)
    end

    def input_to_index(num)
        num.to_i - 1
    end

    def move(board, index, char="X")
        board[index] = char
    end

    def position_taken?(board, index)
        (board[index] != " ") && (board[index] != "") && (board[index] == "X") || (board[index] == "O")
    end









