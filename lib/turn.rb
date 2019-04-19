def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  	index = get_user_input  		
		loop do
			if(valid_move?(board, index))
			  	move(board, index)
			  	display_board(board)
			  	break
			else
				index = get_user_input
			end
		end
end


#returns true if position on board isn't taken and position includes 0-8
def valid_move?(board, index)	
	if !position_taken?(board, index) && (0..8).cover?(index)
		return true
	else
		return nil
	end
end

#returns false if position is empty string, or nil
def position_taken?(board, index)
	if board[index] == " " || board[index] == "" || board[index] == nil
		return false
	else
		return true
	end
end

#converts a number to an array index
def input_to_index(choice)
	return choice.to_i - 1
end

#if position available and index is correct, hightlight the board 
def move(board, index, letter = "X")
	return board[index] = letter.upcase
end

def get_user_input
  message = "Please enter 1-9:"
  puts message
  input = gets.strip.chomp
  return input_to_index(input)
end