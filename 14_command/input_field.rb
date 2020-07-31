# this is another customizable gui component

class InputField
  def initialize(command)
    @command = command
  end

  def submit(value)
    puts("Value submitted!")
    command.execute(value)
  end

  private

  attr_reader :command
end
