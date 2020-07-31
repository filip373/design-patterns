# this is a gui component which calls the command

class Button
  def initialize(color, command)
    @color = color
    @command = command
  end

  def click
    puts("#{color} button clicked.")
    command.execute(color)
  end

  private

  attr_reader :color, :command
end
