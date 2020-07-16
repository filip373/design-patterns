class CarBuilder
  def configure_seats(count)
    raise NotImplementedError
  end

  def configure_engine(horse_power)
    raise NotImplementedError
  end

  def configure_gps
    raise NotImplementedError
  end

  def produce
    raise NotImplementedError
  end
end
