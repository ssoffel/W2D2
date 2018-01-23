require_relative 'piece' 
class Queen < Piece
  include SlidingPiece
  
  def initialize(pos, board)
    @at_starting = true
    @val = "Q"
    super(pos, board)
  end
  
  def move_dirs
  pos_moves = moves("BOTH", self.pos)
  end
end 
