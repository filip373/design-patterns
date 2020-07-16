# this is another adapter, it makes the triangle peg (adaptee) compatible with
# the round hole (3rd party incompatible service)

class RoundFittedTrianglePeg
  def initialize(triangle_peg)
    @triangle_peg = triangle_peg
  end

  def surface_radius
    triangle_peg.width * Math.sqrt(3) / 3.0
  end

  private

  attr_reader :triangle_peg
end
