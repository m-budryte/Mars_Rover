require_relative 'input_parser'
require_relative 'rover'
class Control_unit
  attr_reader :instructions_string, :parsed_array
  def initialize
    @instructions_string = ''
    @parsed_array = []
    @output_string = ''
  end

  def load_instructions(instructions_string)
    @instructions_string = instructions_string
  end

  def parse_instructions(parser = Input_parser.new(@instructions_string))
    parser.save_instructions
    @parsed_array = parser.output_array
  end

  def launch_squad
    @parsed_array.each do |instruction|
      rover = Rover.new(instruction)
      rover.travel
      @output_string == '' ? @output_string += rover.report_location : @output_string += "\n#{rover.report_location}"
    end
    @output_string
  end
end
