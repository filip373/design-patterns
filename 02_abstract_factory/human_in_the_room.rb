class HumanInTheRoom
  def take_the_stage(furnitures)
    furnitures.create_sofa.relax
    furnitures.create_table.put_on(rand(100))
    furnitures.create_chair.sit_on
  end
end
