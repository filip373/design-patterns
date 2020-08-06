# this is a simple subscriber interface

class Subscriber
  def notify(content)
    raise NotImplementedError
  end
end
