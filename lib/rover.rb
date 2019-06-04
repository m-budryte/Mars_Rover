class Rover
  attr_reader :location, :route
  def initialize(hash)
    @location = "#{hash[:x]} #{hash[:y]} #{hash[:direction]}"
    @route = hash[:route].split("")
  end
end
