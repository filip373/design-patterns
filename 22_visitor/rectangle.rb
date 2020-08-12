# this is another concrete shape implementation

require_relative "./circle"

class Rectangle < Shape
  def move(x, y)
    puts("Rectangle has been moved to (#{x},#{y}).")
  end

  def draw
    puts("Rectangle has been drawn.")
  end

  def accept(visitor)
    visitor.visit_rectangle(self)
  end
end
