require_relative "../products/car_manual"

class CarManualBuilder
  def initialize
    reset
  end

  def reset
    @car_manual = CarManual.new
  end

  def configure_seats(count)
    seats_description = "#{count} seats foldable when forced"
    car_manual.add_page(seats_description)
  end

  def configure_engine(horse_power)
    engine_description = "#{horse_power}HP engine: use only non-lead gas"
    car_manual.add_page(engine_description)
  end

  def configure_gps
    gps_description = "Use red button to enable GPS"
    car_manual.add_page(gps_description)
  end

  def produce
    produced_manual = car_manual
    reset
    produced_manual
  end

  private

  attr_reader :car_manual
end
