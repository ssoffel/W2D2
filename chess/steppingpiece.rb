
module SteppingPiece 
  HORIZONTAL = [
    [1, 0],
    [-1, 0]
  ]
  VERTICAL = [
    [0, 1], 
    [0, -1]
  ]
  DIAGONAL = [
    [1, 1],
    [-1, -1],
    [1, -1],
    [-1, 1]
  ]
  KNIGHT = [
    [2, 1],
    [2, -1],
    [-2, 1],
    [-2, -1],
    [1, 2],
    [-1, 2],
    [1, -2],
    [-1, -2]
  ]
  def moves(direction, cur_pos)
    pos_moves = []
    
    if direction =="BOTH"
      HORIZONTAL.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end
      DIAGONAL.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end
      VERTICAL.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end 
    elsif direction == "KNIGHT"
      KNIGHT.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end
    end
    pos_moves
  end
  
end 
