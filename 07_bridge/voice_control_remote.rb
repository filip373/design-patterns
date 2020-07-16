# this is a class extending the basic remote class
# it's compatible with all the existing implementation classes

require_relative "./remote"

class VoiceControlRemote < Remote
  def initialize(device, passphrase)
    super(device)
    @passphrase = passphrase
  end

  def change_channel_by_voice(voice)
    change_channel(recognize_voice(voice))
  end

  private

  attr_reader :passphrase

  def recognize_voice(voice)
    voice.split(passphrase)[1].gsub(" ", "")
  end
end
