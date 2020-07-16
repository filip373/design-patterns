require_relative "../products/car_drawing"

class CarDrawingBuilder
  def initialize
    reset
  end

  def reset
    @car_drawing = CarDrawing.new
  end

  def configure_seats(count)
    seats = "#{count} colorful seats"
    car_drawing.add_element(seats)
  end

  def configure_engine(horse_power)
    engine = "Dark engine with #{horse_power}HP"
    car_drawing.add_element(engine)
  end

  def configure_gps
    gps = "Big GPS screen showing current location"
    car_drawing.add_element(gps)
  end

  def produce
    produced_drawing = car_drawing
    reset
    produced_drawing
  end

  private

  attr_reader :car_drawing
end
