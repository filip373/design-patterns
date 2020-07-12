class Logistics
  def ship(package)
    create_transport.go(package)
  end

  def create_transport
    raise NotImplementedError
  end
end
