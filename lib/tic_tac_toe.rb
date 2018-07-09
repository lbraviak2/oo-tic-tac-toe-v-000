class TicTacToe
  def initialize (board = nil)
    @board = board || Array.new(9," ")
  end

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  WIN_COMBINATIONS = [
    [0,1,2], [3,4,5],[6,7,8],[0,4,8], [2,4,6], [0,3,6], [1,4,7], [2,5,8]
  ]

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def turn_count
    counter = 0
    @board.each do |item|
      if item.downcase == "x" || item.downcase == "o"
        counter = counter + 1
      end
    end
    counter
  end

  def current_player
    if turn_count % 2 == 0
      "X"
    else
      "O"
    end
  end

  def move(index, player)
    player = current_player
    @board[index] = player
  end
end
