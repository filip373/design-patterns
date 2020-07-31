# this is another gui component parametrized with command

class HeaderText
  def initialize(text, command)
    @text = text
    @command = command
  end

  def highlight
    puts("Header with '#{text}' is highlighted!")
    command.execute(text)
  end

  private

  attr_reader :text, :command
end
