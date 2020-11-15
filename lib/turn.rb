def turn(board)
  puts "Please enter 1-9:"
  
  input = gets.chomp
  index = input_to_index(input)

  if valid_move?(board,index) == true
        move(board, index)
        display_board(board)
        
    else
     turn(board)
     
   end

end



def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
  
  def input_to_index(input)
    
    index = input.to_i - 1

  end
  
def position_taken?(board, input)
  if board[input] == " " || board[input] == "" || board[input] == nil
  	false

  else
  	true

  end
end
  

def valid_move?(board, input)
	
	if !position_taken?(board, input) && input.between?(0,8)
		true
	else
		false
	end
end


def move(board, index, mark = "X")
  board[index] = mark
end




