# this class is compatible and used by the service class

class RoundPeg
  def initialize(surface_radius)
    @surface_radius = surface_radius
  end

  attr_reader :surface_radius
end
