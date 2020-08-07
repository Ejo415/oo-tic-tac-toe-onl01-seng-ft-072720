class TicTacToe 
  
  WIN_COMBINATIONS = [[0,1,2], [3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
  
   def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(string)
    string.to_i - 1 
  end
  
  def move(index, token = "X")
    @board[index] =  token
  end
  
  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end
  
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end
  
  def turn_count
    turn = 0 
    @board.each do |index|
      if index == "X" || index == "O"
        turn += 1 
      end
    end
    return turn
  end
  
  def current_player
    num_turns = turn_count
    if num_turns % 2 == 0 
      player = "X"
    else
      player = "O"
    end
    return player
  end
  
  def turn
    puts "Please choose a number 1-9:"
    string = gets.chomp 
    move = input_to_index(string)
    if valid_move?(move)
      player_token = current_player
      move(move, token = "X")
      display_board
    else
      turn
    end
  end
  
  def won?
    WIN_COMBINATIONS.each {|win_combo|
  
  
  end