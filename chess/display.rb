require 'colorize'
require_relative 'cursor'
require_relative 'pieces'
require 'byebug'

class Display
  
  def initialize(cursor_pos, board=nil)
    @cursor_pos = cursor_pos
    @board = board
    @cursor = Cursor.new(@cursor_pos, board)
  end

  def render
     
    x, y = @cursor_pos
    # grid[x][y] = "X".colorize(:blue)
    puts " 1   2   3   4   5   6   7   8 "
     @board.grid.each.with_index do |row, i|
       print i+1
       # debugger
       print_row = row.map.with_index do |piece, j| 
         if i == x && j==y 
          " #{piece.val.colorize(:yellow)} |"
         else 
           piece.is_a?(NullPiece) ? "   |" : " #{piece.val.colorize(piece.color)} |" 
         end 
       end
       puts print_row.join
    end
    piece
  end
  
  def get_input 
    @cursor.update_pos
  end
    
end