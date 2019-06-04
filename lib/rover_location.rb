class Rover_location
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
    RIGHT[@direction]
  end

  def left
    LEFT[@direction]
  end
end
