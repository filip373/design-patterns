# this is a mediator interface

class Mediator
  def notify(sender, details)
    raise NotImplementedError
  end
end
