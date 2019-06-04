require_relative 'input_parser'
require_relative 'rover'
class Control_unit
  attr_reader :instructions_string, :instructions_array
  def initialize
    @instructions_string = ""
    @instructions_array = []
    @output = ""
  end

  def load_instructions(string)
    @instructions_string = string
  end

  def parse_instructions(parser = Input_parser.new(@instructions_string))
    parser.save_instructions
    @instructions_array = parser.output
  end

  def launch_squad

    @instructions_array.each do |instruction|
      rover = Rover.new(instruction)
      rover.travel
      @output == "" ? @output += rover.report_location : @output += "\n#{rover.report_location}"
    end

    @output
  end
end
