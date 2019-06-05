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
    raise 'Wrong format. Only strings are accepted. Try again.' unless instructions_string.is_a? String
    raise 'Your input is too short. Use \n to separate lines' unless instructions_string.count("\n").even?

    @instructions_string = instructions_string
  end

  def parse_instructions(parser = Input_parser.new(@instructions_string))
    parser.process_instructions
    @parsed_array = parser.output_array
  end

  def launch_squad
    @parsed_array.each do |instruction|
      rover_final_location = launch_rover(instruction)
      append_output_string(rover_final_location)
    end
    @output_string
  end

  private

  def launch_rover(instruction)
    rover = Rover.new(instruction)
    rover.travel
    rover.report_location
  end

  def append_output_string(rover_final_location)
    @output_string == '' ? @output_string += rover_final_location : @output_string += "\n#{rover_final_location}"
  end
end
