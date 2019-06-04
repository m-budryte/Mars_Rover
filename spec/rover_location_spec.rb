require 'rover_location'
describe Rover_location do
  describe "Turning right" do
    it 'north -> east' do
      location = Rover_location.new("N", 0, 0)
      expect(location.right).to eq("E")
    end

    it 'east -> south' do
      location = Rover_location.new("E", 0, 0)
      expect(location.right).to eq("S")
    end

    it 'south -> west' do
      location = Rover_location.new("S", 0, 0)
      expect(location.right).to eq("W")
    end

    it 'west -> north' do
      location = Rover_location.new("W", 0, 0)
      expect(location.right).to eq("N")
    end
  end

  describe "Turning left" do
    it 'north -> west' do
      location = Rover_location.new("N", 0, 0)
      expect(location.left).to eq("W")
    end

    it 'west -> south' do
      location = Rover_location.new("W", 0, 0)
      expect(location.left).to eq("S")
    end

    it 'south -> east' do
      location = Rover_location.new("S", 0, 0)
      expect(location.left).to eq("E")
    end

    it 'east -> north' do
      location = Rover_location.new("E", 0, 0)
      expect(location.left).to eq("N")
    end
  end
end
