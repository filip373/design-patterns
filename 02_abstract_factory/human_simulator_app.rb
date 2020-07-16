require_relative "./human_in_the_room"
require_relative "./furniture_factory"
require_relative "./victorian_factory"
require_relative "./modern_factory"

def get_factory
  case ENV["STYLE"]
  when "victorian" then VictorianFactory.new
  when "modern" then ModernFactory.new
  else FurnitureFactory.new
  end
end

HumanInTheRoom.new.take_the_stage(get_factory)
