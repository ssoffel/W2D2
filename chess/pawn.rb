require_relative 'piece' 
class Pawn < Piece 
  
  
  attr_accessor :at_starting
  
  def initialize(pos, board)
    @at_starting = true
    @val = "P"
    super(pos, board)
  end
  
  def moves 
    pos_moves = []
    if at_start_row?
      new_x1 = @pos.first + 1 #current pos +1 
      new_x2 = @pos.first + 2 #current pos +1 
      pos_moves << [new_x1, @pos.last]
      pos_moves << [new_x2, @pos.last]
      @at_staring = false
    else
      new_x1 = @pos.first + 1 #current pos +1
      pos_moves << [new_x1, @pos.last]
    end
    
     
    pos_moves
  end
  
  def symbol 
  end
  
  def move_dirs 
  end
  
  private 
  
   def at_start_row? 
    @at_starting
   end
   
   def forward_dir 
     
   end 
   
   def forward_steps
   end 
   
   def side_attacks 
   end 
   
end