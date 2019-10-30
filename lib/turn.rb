def Welcome
puts "Weclome to Tic Tac Toe!"
end

def display_board(board)
  puts board 
end 

def position_taken?(board, index)
  if index != nil
    index = FALSE
    puts "Position is already taken! Please choose a valid move."
  end
end
  
def valid_move?(board, index)
  if between?(0,8) = FALSE
    puts "Invalid move! Please choose a number between 0 and 8."
  end
end