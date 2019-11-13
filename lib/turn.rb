def display_board (board)
  rows=[]
  rows << " #{board[0]} | #{board[1]} | #{board[2]} "
  rows << "-----------"
  rows << " #{board[3]} | #{board[4]} | #{board[5]} "
  rows << "-----------"
  rows << " #{board[6]} | #{board[7]} | #{board[8]} "
  
  rows.each do |row|
    puts row
  end
end