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

  def won?
    combo = []
    board.all? { |e| e == " " || e == ""}

    if @board[0] == @board[1] && @board[0] === @board[2] && (@board[0] == "X" || @board[0] == "O")
      true
      combo = WIN_COMBINATIONS[0]
    elsif  @board[3] == @board[4] && @board[3] === @board[5] && (@board[5] == "X" || @board[5] == "O")
      true
      combo = WIN_COMBINATIONS[1]
    elsif @board[6] == @board[7] && @board[6] === @board[8] && (@board[8] == "X" || @board[8] == "O")
      true
      combo = WIN_COMBINATIONS[2]
    elsif @board[0] == @board[4] && @board[0] === @board[8] && (@board[8] == "X" || @board[8] == "O")
      true
      combo = WIN_COMBINATIONS[3]
    elsif @board[2] == @board[4] && @board[2] === @board[6] && (@board[6] == "X" || @board[6] == "O")
      true
      combo = WIN_COMBINATIONS[4]
    elsif  @board[0] == @board[3] && @board[0] === @board[6] && (@board[6] == "X" || @board[6] == "O")
      true
      combo =WIN_COMBINATIONS[5]
    elsif  @board[1] == @board[4] && @board[1] === @board[7] && (@board[7] == "X" || @board[7] == "O")
      true
      combo = WIN_COMBINATIONS[6]
    elsif  @board[2] == @board[5] && @board[2] === @board[8] && (@board[8] == "X" || @board[8] == "O")
      true
      combo = WIN_COMBINATIONS[7]
    else
      false
    end

  end
end
