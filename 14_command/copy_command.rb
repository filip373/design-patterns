# this is another concrete implementation of a command

class CopyCommand
  def execute(value)
    puts("Value '#{value}' copied into the clipboard!")
  end
end
