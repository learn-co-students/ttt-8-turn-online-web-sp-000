def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your input_to_index and move method here!

def input_to_index(input)
  return input.to_i - 1;
end

def update_array_at_with(array, index, value)
  array[index] = value;
end

def move(array, index, value = "X")
  update_array_at_with(array, index, value);
end

  
# code your #valid_move? method here

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  elsif index.between?(0, 8) == false || position_taken?(board, index)
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:";
  input = gets.strip;
  input = input_to_index(input);
  
  
  if valid_move?(board, input)
    move(board, input, "X");
    display_board(board);
  else
    puts "Please enter 1-9:";
    display_board(board);
    input = gets.strip;
    input = input_to_index(input);
    move(board, input, "X");
    display_board(board);
  end
end




