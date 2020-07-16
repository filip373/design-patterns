require_relative "./furniture_factory"
require_relative "./modern_sofa"
require_relative "./modern_table"
require_relative "./modern_chair"

class ModernFactory < FurnitureFactory
  def create_sofa
    ModernSofa.new
  end

  def create_table
    ModernTable.new
  end

  def create_chair
    ModernChair.new
  end
end
