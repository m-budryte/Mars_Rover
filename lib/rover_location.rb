class Rover_location
  attr_reader :direction, :x, :y

  RIGHT = {
    'N' => 'E',
    'E' => 'S',
    'S' => 'W',
    'W' => 'N'
  }

  LEFT = {
    'N' => 'W',
    'W' => 'S',
    'S' => 'E',
    'E' => 'N'
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

  def move_forward
    case @direction
    when 'N'
      @y += 1
    when 'S'
      @y -= 1
    when 'E'
      @x += 1
    when 'W'
      @x -= 1
    end
  end
end
