# this is a strategy interface

class Transport
  def drive(destination)
    raise NotImplementedError
  end
end
