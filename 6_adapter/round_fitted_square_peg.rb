# this is the adapter which makes the square peg (adaptee) compatible with
# the round hole (3rd party incompatible service)

class RoundFittedSquarePeg
  def initialize(square_peg)
    @square_peg = square_peg
  end

  def surface_radius
    square_peg.surface_side * Math.sqrt(2) / 2.0
  end

  private

  attr_reader :square_peg
end
