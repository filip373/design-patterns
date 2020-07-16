# this is an abstraction class
# it holds all the operations that are needed by the client code

class Remote
  def initialize(device)
    @device = device
  end

  def mute
    device.change_speaker_volume(0)
  end

  def unmute
    device.change_speaker_volume(100)
  end

  def change_channel(channel)
    device.change_antenna_frequency(channel_frequency(channel))
  end

  private

  attr_reader :device

  def channel_frequency(channel)
    return "12kHz" if channel == "one"
    return "28kHz" if channel == "two"
  end
end
