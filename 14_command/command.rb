# this is an interface for all the concrete commands

class Command
  def execute(value)
    raise NotImplementedError
  end
end
