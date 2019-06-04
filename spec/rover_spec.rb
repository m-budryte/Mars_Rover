require 'rover'
describe Rover do
  subject(:rover){ described_class.new({:x=>1, :y=>2, :direction=>"N", :route=>"LMLMLMLMM"}) }
  it 'reports the location' do
    rover_location = instance_double("Rover_location", :direction=>"N", :x=>1, :y=>2, )
    expect(rover.report_location(rover_location)).to eq("1 2 N")
  end

  it 'saves the route as an array' do
    expect(rover.route).to eq(["L","M","L","M","L","M","L","M","M"])
  end
end
