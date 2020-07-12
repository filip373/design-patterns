class Circle
  def initialize(radius, color)
    @radius = radius
    @color = color
  end

  def clone
    Circle.new(radius, color)
  end

  def introduce_yourself
    puts("Hello, I'm a circle of #{radius} radius and #{color} color.")
  end

  private

  attr_reader :radius, :color
end
