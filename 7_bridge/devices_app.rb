require_relative "./remote.rb"
require_relative "./devices/tv.rb"
require_relative "./devices/radio.rb"
require_relative "./voice_control_remote.rb"
require_relative "./devices/old_tv.rb"

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
puts

puts("Testing voice control remote...")
voice_remote = VoiceControlRemote.new(Radio.new, "Hey remote!")
puts("Voice-changing the channel to one...")
voice_remote.change_channel_by_voice("Hey remote! one")
puts("Voice-changing the channel to two...")
voice_remote.change_channel_by_voice("Hey remote! two")
puts

puts("Testing an old tv with a voice control remote...")
old_tv_remote = VoiceControlRemote.new(OldTv.new, "Hey grandpa,")
puts("Voice-changing the channel to one...")
old_tv_remote.change_channel_by_voice("Hey grandpa, one")
puts("Voice-changing the channel to two...")
old_tv_remote.change_channel_by_voice("Hey grandpa, two")
puts("Muting the old tv...")
old_tv_remote.mute
