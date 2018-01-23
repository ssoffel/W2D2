require_relative 'pieces'
require 'byebug'

class Board 
  
  attr_accessor :grid, :sentinel
  
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    row_length = @grid.length 
    col_length = @grid[0].length 
    
    row_length.times do |row|
      col_length.times do |col|
        if row == 1 || row == 6 
          self[[row, col]] = Pawn.new([row, col], self)
        elsif (row == 0 ||  row==7 ) && (col==0 || col==7)
          self[[row, col]] = Knight.new([row, col], self)
        elsif (row == 0 ||  row== 7 ) && (col==1 || col==6)
          self[[row, col]] = Bishop.new([row, col], self)
        elsif (row == 0 ||  row==7 ) && (col==2 || col==5)
          self[[row, col]] = Rook.new([row, col], self)
        elsif (row == 0  && col== 4) || (row == 7 && col == 4)
          self[[row, col]] = Queen.new([row, col], self)
        elsif (row == 7  && col== 3) || (row == 0 && col == 3)
          self[[row, col]] = King.new([row, col], self)
        else
          self[[row, col]] = NullPiece.new([row, col], self)
        end
      end  
    end
  end 
  
  def move_piece(start_pos, end_pos)
    raise "Out of Bound at start position " unless valid_pos?(start_pos)
    raise "Out of Bound at end position" unless valid_pos?(end_pos)
    raise "Error no piece start position" if self[start_pos].is_a?(NullPiece)
    raise "Error piece at start position" unless self[start_pos].is_a?(Piece)
      
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]  
    
  end
  
  def valid_pos?(pos)
    pos.first.between?(0,7) && pos.last.between?(0,7)
     
  end
  
  def []=(pos, piece)
    x, y = pos 
    @grid[x][y] = piece
  end
  
  def [](pos)
    x, y = pos 
    @grid[x][y]
  end
  
  
end