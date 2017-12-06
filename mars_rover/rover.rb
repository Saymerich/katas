class Rover
  def initialize(x, y, cardinal)
    @x = x
    @y = y
    @cardinal = cardinal
  end
  def broadcast_position
    return [@x, @y]
  end
  def broadcast_facing_direction
    @cardinal
  end
  def execute(moves)
    if moves.include?(:f) then
      @y += 1
    else
      @y -= 1
    end
    if moves.include?(:r) then
      @cardinal = :east
    else
      @cardinal = :west
    end
  end
end
