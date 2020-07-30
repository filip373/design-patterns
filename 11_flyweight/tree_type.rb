# this is a flyweight class, it contains all the heavy reusable tree attributes

class TreeType
  def initialize(name, color, texture)
    @name = name
    @color = color
    @texture = texture
  end

  def draw(canvas, x, y)
    puts("Drawing a #{color} tree named #{name} with #{texture}.")
    puts("Tree drew on #{canvas} at (#{x}, #{y}).")
  end

  attr_reader :name, :color, :texture
end
