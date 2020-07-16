require_relative "./logistics"
require_relative "./boat"

class SeaLogistics < Logistics
  def create_transport
    Boat.new
  end
end
