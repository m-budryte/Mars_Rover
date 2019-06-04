require 'control_unit'
describe Control_unit do
  describe '#load_instructions' do
    subject(:control_unit) { described_class.new }
    it 'has a method for receiving instructions' do
      expect(control_unit).to respond_to(:load_instructions).with(1).argument
    end

    it 'save instructions as a string' do
      control_unit.load_instructions("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
      expect(control_unit.instructions_string).to eq("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
    end
  end

  describe '#parse_instructions' do
    subject(:control_unit) { described_class.new }
    it 'has a method for parsing instructions' do
      expect(control_unit).to respond_to(:parse_instructions)
    end

    it 'save instructions as a string' do
      input_parser = instance_double("Input_parser", :save_instructions => nil, :output => [
        {
        :direction => 'N',
        :x => 1,
        :y => 2,
        :route => 'LMLMLMLMM'
      },
      {
        :direction => 'E',
        :x => 3,
        :y => 3,
        :route => 'MMRMMRMRRM'
      }
      ])
      control_unit.load_instructions("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
      control_unit.parse_instructions(input_parser)
      expect(control_unit.instructions_array).to eq([
        {
        :direction => 'N',
        :x => 1,
        :y => 2,
        :route => 'LMLMLMLMM'
      },
      {
        :direction => 'E',
        :x => 3,
        :y => 3,
        :route => 'MMRMMRMRRM'
      }
      ])
    end
  end
end
