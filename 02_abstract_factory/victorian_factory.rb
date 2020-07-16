require_relative "./furniture_factory"
require_relative "./victorian_sofa"
require_relative "./victorian_table"
require_relative "./victorian_chair"

class VictorianFactory < FurnitureFactory
  def create_sofa
    VictorianSofa.new
  end

  def create_table
    VictorianTable.new
  end

  def create_chair
    VictorianChair.new
  end
end
