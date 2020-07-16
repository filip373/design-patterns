require_relative "../products/real_car"

class RealCarBuilder
  def initialize
    reset
  end

  def reset
    @real_car = RealCar.new
  end

  def configure_seats(count)
    seats = "#{count} comfortable seats"
    real_car.add_part(seats)
  end

  def configure_engine(horse_power)
    engine = "Engine with #{horse_power}HP"
    real_car.add_part(engine)
  end

  def configure_gps
    real_car.add_part("GPS tracking")
  end

  def produce
    produced_car = real_car
    reset
    produced_car
  end

  private

  attr_reader :real_car
end
