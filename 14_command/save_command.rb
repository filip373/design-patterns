# this is a concrete command class

class SaveCommand
  def execute(value)
    puts("Value '#{value}' saved!")
  end
end
