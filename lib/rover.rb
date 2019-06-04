require_relative 'rover_location'
class Rover
  attr_reader :x, :y, :direction, :route
  def initialize(hash)
    @x = hash[:x]
    @y = hash[:y]
    @direction = hash[:direction]
    @route = hash[:route]
  end
end
