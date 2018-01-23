require_relative 'piece' 

class King < Piece 
  
  include SteppingPiece 
  
  def initialize(pos, board)
    @val = "K"
    super(pos, board)
  end 
  
end