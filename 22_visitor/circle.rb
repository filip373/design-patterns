# this is another concrete shape implementation

require_relative "./shape"

class Circle < Shape
  def move(x, y)
    puts("Circle has been moved to (#{x},#{y}).")
  end

  def draw
    puts("Circle has been drawn.")
  end

  def accept(visitor)
    visitor.visit_circle(self)
  end
end
