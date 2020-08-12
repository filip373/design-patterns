# this is a common shape interface

class Shape
  def move(x, y)
    raise NotImplementedError
  end

  def draw
    raise NotImplementedError
  end

  def accept(visitor)
    raise NotImplementedError
  end
end
