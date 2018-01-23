require_relative 'piece' 
class Rook < Piece
  
  include SlidingPiece
  
  def initialize(pos, board)
    @at_starting = true
    @val = "R"
    super(pos, board)
  end
  
  def move_dirs 
    
  end
end