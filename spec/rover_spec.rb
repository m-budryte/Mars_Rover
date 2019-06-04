require 'rover'
describe Rover do
  subject(:rover) { described_class.new({:x=>1, :y=>2, :direction=>"N", :route=>"LMLMLMLMM"})}
  it 'receives instuctions upon initialization' do
    expect(rover.x).to eq(1)
    expect(rover.y).to eq(2)
    expect(rover.direction).to eq("N")
    expect(rover.route).to eq(["L","M","L","M","L","M","L","M","M"])
  end

  it 'reports location' do
    expect(rover.report_location).to eq("1 2 N")
  end

  describe 'travel' do
    subject(:rover) { described_class.new({:x=>1, :y=>2, :direction=>"N", :route=>"RLMLMLMLMM"})}
    it 'reads the instructions and reaches the destination' do
      rover.travel
      expect(rover.report_location).to eq("2 2 E")
    end
  end
end
