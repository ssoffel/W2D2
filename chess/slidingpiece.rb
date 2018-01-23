module SlidingPiece
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
  def moves(direction, cur_pos)
    # self.get_pos_moves_horizontal(cur_pos)
    pos_moves = []
    if direction == "HORIZONTAL"
      HORIZONTAL.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end
    elsif direction == "DIAGONAL"
      DIAGONAL.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end
    elsif direction == "VERTICAL"
      VERTICAL.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end  
    else direction =="BOTH"
      HORIZONTAL.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end
      DIAGONAL.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end
      VERTICAL.each do |pos|
        pos_moves << [pos.first + cur_pos.firt, pos.last + cur_pos.first]
      end  
    end
    pos_moves
  end
  
  def valid_move?(pos, pos_moves)
     (pos.second - 7).times do |index|
       unless (self.board[pos.first][pos.second + index].color == self.color) || 
       (pos.second > 7)
       poss_moves << [pos.first, pos.second + index]
      end
  end
  
end



 
