# this is a memento interface

class Memento
  def name
    raise NotImplementedError
  end

  def date
    raise NotImplementedError
  end
end
