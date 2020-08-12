# this is a concrete shape implementation

require_relative "./shape"

class Dot < Shape
  def move(x, y)
    puts("Dot has been moved to (#{x},#{y}).")
  end

  def draw
    puts("Dot has been drawn.")
  end

  def accept(visitor)
    visitor.visit_dot(self)
  end
end
