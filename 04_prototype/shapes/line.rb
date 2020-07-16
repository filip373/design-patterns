class Line
  def initialize(name)
    @name = name
  end

  def clone
    Line.new(name)
  end

  def hello
    puts("Hi! I'm a line named #{name}.")
  end

  private

  attr_reader :name
end
