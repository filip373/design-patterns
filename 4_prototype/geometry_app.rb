require_relative "./shapes/circle"
require_relative "./shapes/square"
require_relative "./shapes/line"

puts("Creating a first circle prototype...")
circle1 = Circle.new(4, "red")
circle1.introduce_yourself

puts("Cloning it...")
circle1_clone = circle1.clone
circle1_clone.introduce_yourself

puts("Comparing first circles object_ids...")
puts("Original: #{circle1.object_id}, clone: #{circle1_clone.object_id}")
puts

puts("Creating a second circle prototype...")
circle2 = Circle.new(10, "blue")
circle2.introduce_yourself

puts("Cloning it...")
circle2_clone = circle2.clone
circle2_clone.introduce_yourself

puts("Comparing second circles object_ids...")
puts("Original: #{circle2.object_id}, clone: #{circle2_clone.object_id}")
puts

puts("Creating a square prototype...")
square = Square.new(8)
square.speak_up("Andrzej")

puts("Cloning it...")
square_clone = square.clone
square_clone.speak_up("Marek")

puts("Comparing squares object_ids...")
puts("Original: #{square.object_id}, clone: #{square_clone.object_id}")
puts

puts("Creating a line prototype...")
line = Line.new("Tomek")
line.hello

puts("Cloning it...")
line_clone = line.clone
line_clone.hello

puts("Comparing lines object_ids...")
puts("Original: #{line.object_id}, clone: #{line_clone.object_id}")
