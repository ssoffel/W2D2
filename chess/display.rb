require 'colorize'
require_relative 'cursor'

class Display
  
  def initialize(cursor_pos, board=nil)
    @cursor_pos = cursor_pos
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
     
    grid = Array.new(8) { Array.new(8) }
    x, y = @cursor_pos
    grid[x][y] = "X".colorize(:blue)
     grid.each do |arr|
       puts arr.map{|el| el.nil? ? "   |" : " #{el} |" }.join
    end
  end
  
  def get_input 
    @cursor.update_pos
  end
    
end