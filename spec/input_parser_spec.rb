require 'input_parser'
describe Input_parser do
  describe '#plateu_coordinates' do
    subject(:input_parser) { described_class.new("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM") }

    it 'separates the information about the plateau' do
      expect(input_parser.plateu_coordinates).to eq('5 5')
    end
  end

  describe '#process_instructions' do
    subject(:input_parser) { described_class.new("5 5\n1 2 N\nLMLMLMLMM") }
    it 'instructions saved for one rover' do
      input_parser.process_instructions
      expect(input_parser.output_array).to eq([
                                                {
                                                  x: 1,
                                                  y: 2,
                                                  direction: 'N',
                                                  route: 'LMLMLMLMM'
                                                }
                                              ])
    end
  end

  describe 'acceptance criteria' do
    subject(:input_parser) { described_class.new("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM") }
    it 'returns a hash with instructions' do
      input_parser.process_instructions
      expect(input_parser.output_array).to eq([
                                                {
                                                  direction: 'N',
                                                  x: 1,
                                                  y: 2,
                                                  route: 'LMLMLMLMM'
                                                },
                                                {
                                                  direction: 'E',
                                                  x: 3,
                                                  y: 3,
                                                  route: 'MMRMMRMRRM'
                                                }
                                              ])
    end
  end
end
