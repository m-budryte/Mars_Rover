class Input_parser
  attr_reader :instructions
  def initialize(input)
    @input = input
    @instructions = []
  end

  def plateu_coordinates
    line_splitter[0]
  end

  def no_of_rovers
    @input.count("\n") / 2
  end

  def save_instructions
    @instructions << {
      x: line_splitter[1].split(' ')[0].to_i,
      y: line_splitter[1].split(' ')[1].to_i,
      direction: line_splitter[1].split(' ')[2],
      route: line_splitter[2]
    }
  end

  private

  def line_splitter
    @input.split(/\n/)
  end
end
