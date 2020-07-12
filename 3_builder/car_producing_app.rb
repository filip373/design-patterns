require_relative "./car_building_director"
require_relative "./builders/real_car_builder"
require_relative "./builders/car_manual_builder"
require_relative "./builders/car_drawing_builder"

puts("Producing cars...")
real_cars_director = CarBuildingDirector.new(RealCarBuilder.new)

puts("Driving racing car...")
racing_car = real_cars_director.build_racing_car
racing_car.drive

puts("Driving city car...")
city_car = real_cars_director.build_city_car
city_car.drive

puts("Driving school bus...")
school_bus = real_cars_director.build_school_bus
school_bus.drive

puts("Producing car manuals...")
car_manuals_director = CarBuildingDirector.new(CarManualBuilder.new)

puts("Reading racing car manual...")
racing_car_manual = car_manuals_director.build_racing_car
racing_car_manual.read

puts("Reading city car manual...")
city_car_manual = car_manuals_director.build_city_car
city_car_manual.read

puts("Reading school bus manual...")
school_bus_manual = car_manuals_director.build_school_bus
school_bus_manual.read

puts("Producing car drawings...")
car_drawings_director = CarBuildingDirector.new(CarDrawingBuilder.new)

puts("Displaying a racing car drawing...")
racing_car_drawing = car_drawings_director.build_racing_car
racing_car_drawing.display

puts("Displaying a city car drawing...")
city_car_drawing = car_drawings_director.build_city_car
city_car_drawing.display

puts("Displaying a school bus car drawing...")
school_bus_drawing = car_drawings_director.build_school_bus
school_bus_drawing.display
