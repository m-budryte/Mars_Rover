class Input_parser
  attr_reader :instructions
  def initialize(input)
    @input = input
    @instructions = []
  end

  def plateu_coordinates
    line_splitter[0]
  end

  def save_instructions
    i = 1
    while i <= no_of_lines
      @instructions << {
        x: line_splitter[i].split(' ')[0].to_i,
        y: line_splitter[i].split(' ')[1].to_i,
        direction: line_splitter[i].split(' ')[2],
        route: line_splitter[i + 1]
      }
      i += 2
    end
  end

  private

  def line_splitter
    @input.split(/\n/)
  end

  def no_of_lines
    @input.count("\n")
  end
end