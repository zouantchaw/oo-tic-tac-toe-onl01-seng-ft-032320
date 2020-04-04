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
    integer_value = input.to_i - 1
    integer_value
  end 

  def move(index, token= "X")
    @board[index] = token 
  end 

  def position_taken?(index)
    #can this be abstracted?
    if @board[index] == "X"
      true
      elsif @board[index] == "O"
        true 
      else
        false 
    end   
  end 

  def valid_move?(index)
    #can this be abstracted?
    if @board[index] == " "
      true 
    elsif @board[index] == "X"
      false 
    elsif @board[index] == "O"
      false
    elsif index > 9
      false 
    end 
  end 

  def turn_count 
    #can this be abstracted?
    count = 0
    @board.each do |x|
      if x == "X" || x == "O"
        count += 1
      else 
        count 
      end 
    end 
    count
  end 

  def current_player
    if turn_count.odd?
      "O"
    elsif turn_count.even?
      "X" 
    end 
  end 
  
  def turn
    puts "Please enter a number (1-9):"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(index)
      token = current_player
      move(index, token)
    else
      turn
    end
    display_board
  end
end 