require_relative "./forest"

puts("Planting a forest...")
forest = Forest.new
forest.plant_tree(2, 9, "birch", "green", "heavy texture")
forest.plant_tree(8, 3, "oak", "dark", "huge texture")
forest.plant_tree(-1, 5, "birch", "green", "heavy texture")

puts("Drawing the forest on a canvas...")
forest.draw("sunny valley")
