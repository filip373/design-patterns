class Square
  def initialize(side)
    @side = side
  end

  def clone
    Square.new(side)
  end

  def speak_up(name)
    puts("Hello #{name}! This is #{side} side square.")
  end

  private

  attr_reader  :side
end
