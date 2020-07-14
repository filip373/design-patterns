require_relative "./remote.rb"
require_relative "./devices/tv.rb"
require_relative "./devices/radio.rb"

puts("Testing TV remote...")
tv_remote = Remote.new(Tv.new)
puts("Muting the TV...")
tv_remote.mute
puts("Unmuting the TV...")
tv_remote.unmute
puts("Changing the channel to one...")
tv_remote.change_channel("one")
puts

puts("Testing radio remote...")
radio_remote = Remote.new(Radio.new)
puts("Changing the channel to two...")
radio_remote.change_channel("two")
puts("Changing the channel to one...")
radio_remote.change_channel("one")
puts("Muting the radio...")
radio_remote.mute
