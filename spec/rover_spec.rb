require 'rover'
describe Rover do
  subject(:rover) { described_class.new({:x=>1, :y=>2, :direction=>"N", :route=>"LMLMLMLMM"})}
  it 'receives instuctions upon initialization' do
    expect(rover.x).to eq(1)
    expect(rover.y).to eq(2)
    expect(rover.direction).to eq("N")
    expect(rover.route).to eq("LMLMLMLMM")
  end
end
