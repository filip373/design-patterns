class CarBuildingDirector
  def initialize(builder)
    @builder = builder
  end

  def build_racing_car
    builder.reset
    builder.configure_seats(1)
    builder.configure_engine(300)
    builder.produce
  end

  def build_city_car
    builder.reset
    builder.configure_seats(4)
    builder.configure_engine(80)
    builder.configure_gps
    builder.produce
  end

  def build_school_bus
    builder.reset
    builder.configure_seats(40)
    builder.configure_engine(200)
    builder.produce
  end

  private

  attr_reader :builder
end
