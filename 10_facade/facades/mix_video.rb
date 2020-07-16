# this is a facade class for mixing video, using the complex 3rd party lib

require_relative "../complex_3rd_party_lib/codec_factory"
require_relative "../complex_3rd_party_lib/audio_mixer"
require_relative "../complex_3rd_party_lib/video_file"

class MixVideo
  def initialize(video)
    @video = video
  end

  def mix(filename)
    encoded_video = CodecFactory.new("mp4").encode(video)
    audio_mixer = AudioMixer.new("wav", "44.1kHz")
    audio_mixer.mix_channels(2)
    audio_mixer.apply_compression("recorded audio")
    VideoFile.new.write(filename)
  end

  private

  attr_reader :video
end
