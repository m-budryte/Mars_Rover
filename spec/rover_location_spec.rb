require 'rover_location'
describe Rover_location do
  describe 'Turning right' do
    it 'north -> east' do
      location = Rover_location.new('N', 0, 0)
      location.right
      expect(location.direction).to eq('E')
    end

    it 'east -> south' do
      location = Rover_location.new('E', 0, 0)
      location.right
      expect(location.direction).to eq('S')
    end

    it 'south -> west' do
      location = Rover_location.new('S', 0, 0)
      location.right
      expect(location.direction).to eq('W')
    end

    it 'west -> north' do
      location = Rover_location.new('W', 0, 0)
      location.right
      expect(location.direction).to eq('N')
    end
  end

  describe 'Turning left' do
    it 'north -> west' do
      location = Rover_location.new('N', 0, 0)
      location.left
      expect(location.direction).to eq('W')
    end

    it 'west -> south' do
      location = Rover_location.new('W', 0, 0)
      location.left
      expect(location.direction).to eq('S')
    end

    it 'south -> east' do
      location = Rover_location.new('S', 0, 0)
      location.left
      expect(location.direction).to eq('E')
    end

    it 'east -> north' do
      location = Rover_location.new('E', 0, 0)
      location.left
      expect(location.direction).to eq('N')
    end
  end

  describe 'Moving forward' do
    it 'Facing north: 0,0 -> 0,1' do
      location = Rover_location.new('N', 0, 0)
      location.move_forward
      expect(location.x).to eq(0)
      expect(location.y).to eq(1)
    end

    it 'Facing south: 0,0 -> 0,-1' do
      location = Rover_location.new('S', 0, 0)
      location.move_forward
      expect(location.x).to eq(0)
      expect(location.y).to eq(-1)
    end

    it 'Facing east: 0,0 -> 1,0' do
      location = Rover_location.new('E', 0, 0)
      location.move_forward
      expect(location.x).to eq(1)
      expect(location.y).to eq(0)
    end

    it 'Facing west: 0,0 -> -1,0' do
      location = Rover_location.new('W', 0, 0)
      location.move_forward
      expect(location.x).to eq(-1)
      expect(location.y).to eq(0)
    end
  end
end
