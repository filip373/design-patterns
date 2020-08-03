# this is a common interface for all the iterators

class ProfileIterator
  def get_next
    raise NotImplementedError
  end

  def has_more?
    raise NotImplementedError
  end
end
