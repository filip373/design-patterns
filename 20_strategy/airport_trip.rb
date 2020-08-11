# this is a context class which uses an injected strategy object

class AirportTrip
  def initialize(transport)
    @transport = transport
  end

  def go
    pack_baggage
    drive_to_airport
    pick_up_baggage
    check_in
  end

  private

  def pack_baggage
    puts("Baggage packed")
  end

  def drive_to_airport
    @transport.drive("Airport")
  end

  def pick_up_baggage
    puts("Baggage picked up")
  end

  def check_in
    puts("Checked in for the flight")
  end
end
