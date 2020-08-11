# this is a concrete strategy implementation

require_relative "./transport"

class CarRide < Transport
  def drive(destination)
    puts("Seatbelts fastened")
    puts("Driving to #{destination} by car...")
    puts("Destination reached!")
  end
end
