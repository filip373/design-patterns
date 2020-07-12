require_relative "./car_building_director"
require_relative "./builders/real_car_builder"
require_relative "./builders/car_manual_builder"

real_cars_director = CarBuildingDirector.new(RealCarBuilder.new)
car_manuals_director = CarBuildingDirector.new(CarManualBuilder.new)

puts("Using real cars director...")
puts("Driving racing car...")
racing_car = real_cars_director.build_racing_car
racing_car.drive

puts("Driving city car...")
city_car = real_cars_director.build_city_car
city_car.drive

puts("Using car manuals director...")
puts("Reading racing car manual...")
racing_car_manual = car_manuals_director.build_racing_car
racing_car_manual.read

puts("Reading city car manual...")
city_car_manual = car_manuals_director.build_city_car
city_car_manual.read
