# this is another concrete implementation of command class

class DeleteCommand
  def execute(value)
    puts("The value '#{value}' is deleted.")
  end
end
