require_relative "./writer"

writer = Writer.new("Johny")

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("Minimizing window...")
writer.minimize

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("Maximizing window...")
writer.maximize

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("Writing...")
writer.write("hello!")

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("Saving a snapshot...")
writer.save

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("More writing...")
writer.write(" This is my journal!")

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("Saving again...")
writer.save

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("Restoring a snapshot...")
writer.undo

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("Minimizing again...")
writer.minimize

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("Saving...")
writer.save

puts(writer.present)
puts("History:")
puts(writer.history)
puts

puts("Restoring a snapshot again...")
writer.undo

puts(writer.present)
puts("History:")
puts(writer.history)
puts
