# this is a visitor interface

class Visitor
  def visit_dot(dot)
    raise NotImplementedError
  end

  def visit_circle(circle)
    raise NotImplementedError
  end

  def visit_rectangle(rectangle)
    raise NotImplementedError
  end
end
