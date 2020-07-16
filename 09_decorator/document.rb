# this is an interface that's used by the client code

class Document
  def write(content)
    raise NotImplementedError
  end
end
