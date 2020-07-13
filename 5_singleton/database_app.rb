require_relative "./database"

puts("Getting the instance for the first time...")
database1 = Database.get_instance
database1.execute("Give me all the apples!")
database1.execute("And some more pears!")
puts

puts("Getting the instance for the second time...")
database2 = Database.get_instance
database2.execute("Some plums for me!")
database2.execute("Are there any lemons left?")
