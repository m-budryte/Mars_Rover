class Rover_location
  RIGHT = {
    "N" => "E",
    "E" => "S",
    "S" => "W",
    "W" => "N"
  }
  def initialize(direction, x, y)
    @direction = direction
    @x = x
    @y = y
  end

  def right
    RIGHT[@direction]
  end
end
