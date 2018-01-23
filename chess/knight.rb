require_relative 'piece' 
class Knight < Piece 
  
  include SteppingPiece 
  
  def initialize(pos, board)
    @val = "N"
    super(pos, board)
    # @pos = pos 
    # @board = board
  end 
  
  def miv_dirs
    
  end 
  
  
end