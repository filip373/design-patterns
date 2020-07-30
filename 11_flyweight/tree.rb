# this is a contextual class which uses flyweight

class Tree
  def initialize(x, y, tree_type)
    @x = x
    @y = y
    @tree_type = tree_type
  end

  def draw(canvas)
    tree_type.draw(canvas, x, y)
  end

  private

  attr_reader :x, :y, :tree_type
end
