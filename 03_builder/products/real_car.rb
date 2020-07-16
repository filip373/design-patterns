class RealCar
  def initialize
    @parts = []
  end

  def drive
    puts("The real car is driving using: #{parts}.")
  end

  def add_part(part)
    parts.push(part)
  end

  private

  attr_reader :parts
end
