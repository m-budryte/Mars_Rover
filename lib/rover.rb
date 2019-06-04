class Rover
  attr_reader :route
  def initialize(hash)
    @hash = hash
    @route = hash[:route].split("")
  end

  def report_location(location = Rover_location.new(@hash[:direction], @hash[:x], @hash[:y]))
    "#{location.x} #{location.y} #{location.direction}"
  end
  
end
