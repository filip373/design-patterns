# we would like to use this class with RoundHole class
# but they are not compatible

class SquarePeg
  def initialize(surface_side)
    @surface_side = surface_side
  end

  attr_reader :surface_side
end
