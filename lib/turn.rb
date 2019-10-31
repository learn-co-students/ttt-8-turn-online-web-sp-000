def display_board(board)
	square_size = Math.sqrt(board.size)

	if !(square_size % 1 > 0)
		n_lines = board.size / square_size
		row_n = 0
		rows = board.each_slice(square_size).to_a

		while row_n < square_size
			space = 0
			row = rows[row_n]

			write_line(row)
			if row_n < (square_size - 1)
				write_hrule(square_size)
			end

			row_n += 1
		end
	end
end

def write_line(array)
	place_i = 0
	while place_i < array.size
		symbol = array[place_i]
		if !(symbol == 'X' || symbol == 'O' || symbol == ' ')
			symbol = ' '
		end
		print " #{symbol} "
		if place_i < (array.size - 1) 
			print '|'
		end
		place_i += 1
	end
	puts ''
end

def write_hrule(spaces)
	n = (spaces * 4) - 1
	i = 0
	while i < n
		print '-'
		i += 1
	end
	puts ''
end

def valid_move?(board, index)
	if (!position_taken?(board, index)) && index.between?(0, board.size - 1)
		true
	else
		false
	end
end

def position_taken?(board, index)
	if board[index] == ' ' || board[index] == '' || board[index] == nil
		false
	else
		true
	end
end

def input_to_index(str)
	str.to_i - 1
end

def move(board, index, symbol = 'X')
	board[index] = symbol
end

def turn(board)
	puts 'Please enter 1-9:'
	index = input_to_index(gets.strip)
	if valid_move?(board, index)
		move(board, index)
		display_board(board)
	else 
		turn(board)
	end
end