require_relative "./logistics"
require_relative "./truck"

class RoadLogistics < Logistics
  def create_transport
    Truck.new
  end
end
