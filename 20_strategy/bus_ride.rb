# this is a concrete strategy implementation

require_relative "./transport"

class BusRide < Transport
  def drive(destination)
    puts("Ticket checked")
    puts("Driving to #{destination} by bus...")
    puts("Making a short pause at the gas station...")
    puts("Destination reached!")
  end
end
