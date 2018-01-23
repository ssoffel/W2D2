

 

class Piece 
  attr_reader :color, :board, :pos, :val
  
  def initialize(pos, board)
    @pos = pos
    @board = board
    set_color
  end
   
  def set_color
    if @pos.first == 0 || @pos.first == 1
      @color = :black
    elsif @pos.first == 6 || @pos.first == 7
      @color = :red
    end 
  end
end




class NullPiece < Piece 
  def initialize(pos, board)
    @val = ""
    @pos = pos
    @board = board
  end
end


