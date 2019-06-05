require_relative 'rover_location'
class Rover
  attr_reader :x, :y, :direction, :route
  def initialize(hash)
    @x = hash[:x]
    @y = hash[:y]
    @direction = hash[:direction]
    @route = hash[:route].split('')
  end

  def report_location
    "#{@x} #{@y} #{@direction}"
  end

  def travel
    current_location = create_location_object
    command_parser(current_location)
    save_location(current_location.direction, current_location.x, current_location.y)
  end

  private

  def create_location_object
    Rover_location.new(@direction, @x, @y)
  end

  def command_parser(initial_location)
    @route.each do |command|
      case command
      when 'R'
        initial_location.right
      when 'L'
        initial_location.left
      when 'M'
        initial_location.move_forward
      end
    end
  end

  def save_location(direction, x, y)
    @direction = direction
    @x = x
    @y = y
  end
end
