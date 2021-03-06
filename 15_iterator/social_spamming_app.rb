require_relative "./facebook"
require_relative "./instagram"
require_relative "./social_spammer"

facebook = Facebook.new(
  1 => {
    friends: ["John", "Anthony"],
    coworkers: ["Tom"],
    neighbours: ["Tim", "Tony"],
  },
  2 => {
    friends: ["Mark"],
    coworkers: [],
    neighbours: ["Adam", "Brad"],
  }
)
spammer = SocialSpammer.new("you won a million dollars!")

puts("Spamming profile #1 friends...")
friends_iterator = facebook.create_friends_iterator(1)
spammer.spam_them_all(friends_iterator)
puts

puts("Spamming profile #2 coworkers...")
coworkers_iterator = facebook.create_coworkers_iterator(2)
spammer.spam_them_all(coworkers_iterator)
puts

instagram = Instagram.new(
  1 => {
    0 => ["Alex", "Lisa"],
    1 => ["Tom"],
    2 => ["Tim", "Tony"],
  },
  2 => {
    0 => ["Mark"],
    1 => [],
    2 => ["Adam", "Brad"],
  }
)

puts("Spamming instagram user...")
greg_friends = instagram.create_friends_iterator(1)
spammer.spam_them_all(greg_friends)
puts
