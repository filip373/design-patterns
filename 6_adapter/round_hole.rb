# a useful 3rd-party / legacy / highly-dependent class

class RoundHole
  def initialize(radius)
    @radius = radius
  end

  def fits?(round_peg)
    radius >= round_peg.surface_radius
  end

  private

  attr_reader :radius
end
