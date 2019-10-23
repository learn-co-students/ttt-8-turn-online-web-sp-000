ttt_board = ["","X"," "," "," "," "," "," "," "]
#asks for input
puts "Enter a position on the board 1-9:"
#get input
user_input = gets.chomp
#convert input to index
number_entered = user_input.to_i - 1


# LIB/turn.rb files begin here:
#_________________________________________________

#if index is valid...
def valid_move?(number_entered, board)
  number_entered.between?(0, 8) && !(position_taken?(board, number_entered))
end
#if index is valid...make the move for index
def move(array, index, name = "X")
  array[index] = name
end
#if index is valid...show the board
def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

final_position = number_entered()

#else ask for input again until you get valid input
#_________________________________________________

#if index is valid
if valid_move?(number_entered, board)
#   - make the move for index
  move(ttt_board, number_entered)
#   - show the board
  display_board(ttt_board)
#else ask tor input again until you get a valid input


#?final_position = input_to_index(input_position)
#?move(board, final_position)
#?display_board(board)
