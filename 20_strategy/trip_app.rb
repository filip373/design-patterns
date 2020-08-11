require_relative "./airport_trip"
require_relative "./car_ride"
require_relative "./bus_ride"

puts("Travelling by car...")
AirportTrip.new(CarRide.new).go
puts

puts("Travelling by bus...")
AirportTrip.new(BusRide.new).go
