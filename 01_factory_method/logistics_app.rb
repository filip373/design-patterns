require_relative "./sea_logistics"
require_relative "./road_logistics"
require_relative "./train_logistics"

def get_logistics
  case ENV["TRANSPORT_WAY"]
  when "sea" then SeaLogistics.new
  when "road" then RoadLogistics.new
  when "train" then TrainLogistics.new
  else Logistics.new
  end
end

puts("Packing a package...")
package = rand(100)
sleep(1)
puts("Package #{package} packed! Shipping it...")
get_logistics.ship(package)
sleep(1)
puts("Package shipped! Work done for today!")
