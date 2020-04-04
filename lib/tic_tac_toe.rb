class TicTacToe

WIN_COMBINATIONS = [
  [0,1,2], [3,4,5], [6,7,8], 
  [0,3,6], [1,4,7], [2,5,8],
  [0,4,8], [6,4,2]
]

  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end 

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end 

  def input_to_index(input)
    input.to_i - 1
  end 
  
  def move(index, current_player)
    @board[index] = current_player
  end 
  
  def position_taken?(location)
    @board[location] != " " && @board[location] != ""
  end 
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end 
  
  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    else 
      turn 
    end 
  end 

end 