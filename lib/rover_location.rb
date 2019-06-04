class Rover_location
  attr_reader :direction
  RIGHT = {
    "N" => "E",
    "E" => "S",
    "S" => "W",
    "W" => "N"
  }

  LEFT = {
    "N" => "W",
    "W" => "S",
    "S" => "E",
    "E" => "N"
  }


  def initialize(direction, x, y)
    @direction = direction
    @x = x
    @y = y
  end

  def right
    @direction = RIGHT[@direction]
  end

  def left
    @direction = LEFT[@direction]
  end
end
