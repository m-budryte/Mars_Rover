require_relative 'input_parser'
class Control_unit
  attr_reader :instructions_string, :instructions_array
  def initialize
    @instructions_string = ""
    @instructions_array = []
  end

  def load_instructions(string)
    @instructions_string = string
  end

  def parse_instructions(parser = Input_parser.new(@instructions_string))
    parser.save_instructions
    @instructions_array = parser.output
  end
end
