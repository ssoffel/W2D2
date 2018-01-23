 require_relative 'piece' 
class Bishop < Piece
  
  include SlidingPiece 
  
  def initialize(pos, board)
    @val = "B"
    super(pos, board)
    # @pos = pos 
    # @board = board
  end 
  
  def move_dirs 
  end

end