class CarDrawing
  def initialize
    @elements = []
  end

  def display
    puts("The car drawing is displayed: #{elements}.")
  end

  def add_element(element)
    elements.push(element)
  end

  private

  attr_reader :elements
end
