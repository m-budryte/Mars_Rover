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
      input_parser = double('Input_parser', process_instructions: nil, output_array: [
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
      control_unit.load_instructions("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
      expect(control_unit.parse_instructions(input_parser)).to eq([
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

  describe 'handling input errors' do
    it 'does not accept anything but string (integer check)' do
      expect { subject.load_instructions(1_000_000) }.to raise_error('Wrong format. Only strings are accepted. Try again.')
    end

    it 'does not accept anything but string (array check)' do
      expect { subject.load_instructions([5, 5, 'N', 0, 0]) }.to raise_error('Wrong format. Only strings are accepted. Try again.')
    end

    it 'does not accept anything but string (hash check)' do
      expect do
        subject.load_instructions(
          'up' => [5, 5],
          'location' => ['N', 0, 0]
        )
      end.to raise_error('Wrong format. Only strings are accepted. Try again.')
    end

    it 'handles if the input is too short (2 lines)' do
      expect { subject.load_instructions("5 5\n1 2") }.to raise_error('Your input is too short. Use \n to separate lines')
    end

    it 'handles if the input is too short (4 lines)' do
      expect { subject.load_instructions("5 5\n1 2\nLMLMLMLMM\n3 3") }.to raise_error('Your input is too short. Use \n to separate lines')
    end
  end
  describe '#launch_squad' do
    subject(:control_unit) { described_class.new }
    it 'launches rovers one by one. Rovers return their final location' do
      input_parser = double('Input_parser', process_instructions: nil, output_array: [
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
      control_unit.load_instructions("5 5\n1 2 N\nLMLMLMLMM\n3 3 E\nMMRMMRMRRM")
      control_unit.parse_instructions(input_parser)
      expect(control_unit.launch_squad).to eq("1 3 N\n5 1 E")
    end
  end
end
