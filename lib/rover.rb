require_relative 'rover_location'
class Rover
  attr_reader :x, :y, :direction, :route
  def initialize(hash)
    @x = hash[:x]
    @y = hash[:y]
    @direction = hash[:direction]
    @route = hash[:route].split("")
  end

  def report_location
    "#{@x} #{@y} #{@direction}"
  end

  def travel
    travelling_position = create_location_object
    @route.each do |command|
      case command
      when "R"
        travelling_position.right
      when "L"
        travelling_position.left
      when "M"
        travelling_position.move_forward
      end
    end
    @x = travelling_position.x
    @y = travelling_position.y
    @direction = travelling_position.direction
  end

  private

  def create_location_object
    Rover_location.new(@direction, @x, @y)
  end
end
