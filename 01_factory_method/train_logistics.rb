require_relative "./logistics"
require_relative "./train"

class TrainLogistics < Logistics
  def create_transport
    Train.new
  end
end
