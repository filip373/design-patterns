require_relative "./ruby_newsletter"
require_relative "./mailbox"
require_relative "./messenger"

puts("Sending a ruby newsletter to subscribers via various channels...")
puts
newsletter = RubyNewsletter.new

puts("Subscribing Steve's email to the newsletter...")
steve_email = Mailbox.new("steve@email.com")
newsletter.subscribe(steve_email)
puts

puts("Subscribing John's messenger to the newsletter...")
john_messenger = Messenger.new("john229")
newsletter.subscribe(john_messenger)
puts

puts("Sending a new issue of the newsletter...")
newsletter.send_new_issue("Design patterns in Ruby.")
puts

puts("Unsubscribing Steve's email from the newsletter...")
newsletter.unsubscribe(steve_email)
puts

puts("Subscribing Adam's messenger to the newsletter...")
adam_messenger = Messenger.new("adam-johnson")
newsletter.subscribe(adam_messenger)
puts

puts("Sending another issue of the newsletter...")
newsletter.send_new_issue("Handling exceptions in Rails.")
